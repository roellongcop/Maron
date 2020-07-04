<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Inventory_Model extends CI_Model {

    public function __construct() {
        $this->load->database(); 
    }



    public function get_item($key = "All") {
        if ($key == "All") {
            $query = $this->db->get_where('tbl_inventorymaterial', array('is_deleted' => 0 ));
        } 
        elseif ($key == "Normal" OR $key == "Exceed" OR $key == "Critical" OR $key == "Empty") {
            $query = $this->db->get_where('tbl_inventorymaterial', array('status' => $key, 'is_deleted' => 0 ));
        } 
        else {
            $query = $this->db->get_where('tbl_inventorymaterial', array('id' => $key));
        }
        return $query->result_array();
    }



    public function export_to_project() {
        $id = $this->input->post('id');
        $query = $this->db->query("SELECT * FROM tbl_project AS p INNER JOIN tbl_quotation AS q ON p.quotation_no = q.quotation_id WHERE p.id = $id");
        return $query->row();
    }



    public function get_count($status = "All") {
        if ($status == "All") {
            $query = $this->db->get_where('tbl_inventorymaterial', array('is_deleted' => 0 ));
            return $query->num_rows();
        }  
        $query = $this->db->get_where('tbl_inventorymaterial', array('status' => $status, 'is_deleted' => 0 ));
        return $query->num_rows();
    }



    public function save_export() { 
        $item_id = $this->input->post('item_id');
        $project_id = $this->input->post('pro');
        $qty = $this->input->post('qty');

        $query = $this->db->get_where('tbl_inventorymaterial', array('id' => $item_id)); 
        foreach ($query->result() as $row) {
            $min = $row->criticalStock;
            $max = $row->maximumStock;
            if ($qty >= $row->stockOnHand) {
                $remaining = 0;
            } 
            else {
                $remaining = $row->stockOnHand - $qty;
            }

            $data = array(
                'projectID'           =>  $project_id,
                'PersonInCharge'      =>  $this->session->inCharge,
                'materialName'        => $row->itemName,
                'materialDescription' => $row->itemDescription,
                'unit'                => $row->unit,
                'size'                => $row->size,
                'color'               => $row->color,
                'price'               => $row->price,
                'quantity'            => $qty,
                'source'              => 'Inventory',
                'dateAdded'           => date('Y-m-d'),                             
                'is_deleted'          => 0                             
            );
            $cost = $row->price * $qty;
        }

        $data['cost'] = $cost;
        $this->db->insert('tbl_materialexpenses' , $data);

        if ($remaining <= 0) {
            $status = "Empty";
        }
        elseif ($remaining >= $max) {
            $status = "Exceed";
        }
        elseif ($remaining <= $min) {
            $status = "Critical";
        } 
        else {
            $status = "Normal";
        }   
        $update_data = array('stockOnHand' => $remaining, 'status' => $status);
        $this->db->update('tbl_inventorymaterial', $update_data, array('id' => $item_id)); 

        // update the project expense
        $this->update_expense($data['projectID'] , $data['cost']);  

        // pagkuha ng name ng project pang display sa flashdata
        $p_name = $this->db->query("SELECT * FROM tbl_quotation AS q INNER JOIN tbl_project AS p ON
                  q.quotation_id = p.quotation_no  WHERE p.id = $project_id");
        $data['projectName'] = $p_name->row()->project_name; 
        if ($remaining == 0) {
            $this->insert_notif('Item: ' .$data['materialName']. ' is empty !');
        } 
        elseif ($remaining <= $min) {
            $this->insert_notif('Item: ' .$data['materialName']. ' meets the critical stock');
        }
        return $data;
    }


    public function insert_notif($notif) {
        $query = $this->db->get('tbl_account');
        foreach ($query->result() as $row) { 
            $data = array(
                'userImage'   => $this->session->image,
                'userID'      =>  $row->id,
                'description' => $notif,
                'type'        => 'inventory',
                'dateOccur'   => date('F d, Y'),
                'link'        => 'inventory',
                'is_deleted'  => 0
            );
            $this->db->insert('tbl_notification', $data);
        }
    }



    public function update_expense($pro_id , $cost) { 
        $query = $this->db->get_where('tbl_project', array('id' => $pro_id));
        $exp = $query->row()->expenses;
        $pro = $query->row()->profit;
        $update = array('expenses' => $exp + $cost, 'profit' => $pro - $cost);
        $this->db->update('tbl_project', $update, array('id' => $pro_id));
    }



    public function save() { 
        $post = $this->input->post();
        $data = array(
            'itemName'        => $post['name'],
            'itemDescription' => $post['description'],
            'unit'            => $post['unit'],
            'size'            => $post['size'],
            'color'           => $post['color'],
            'price'           => $post['price'],
            'stockOnHand'     => $post['stock'],
            'maximumStock'    => $post['max'],
            'criticalStock'   => $post['min'],
            'is_deleted'      => 0
        );

        if ($data['stockOnHand'] <= 0) {
            $data['status'] = "Empty";
        }
        elseif ($data['stockOnHand'] >= $data['maximumStock']) {
            $data['status'] = "Exceed";
        }
        elseif ($data['stockOnHand'] <= $data['criticalStock']) {
            $data['status'] = "Critical";
        } 
        else {
            $data['status'] = "Normal";
        }

        // paggawa ng notif para sa empty at criticaltock
        if ($data['stockOnHand'] == 0) {
            $this->insert_notif('Item: ' .$data['itemName']. ' is empty !');
        } 
        elseif ($data['stockOnHand'] <= $data['criticalStock']) {
            $this->insert_notif('Item: ' .$data['itemName']. ' meets the critical stock');
        }
        if ($post['max'] > $post['min']) { 
            $query = $this->db->insert('tbl_inventorymaterial', $data); 
            return $data['itemName'];
        } 
    }



    public function export() {
        $post = $this->input->post();
        $query = $this->db->query("SELECT * FROM tbl_inventorymaterial WHERE is_deleted = 0");
        foreach ($query->result() as $row) {
            if (isset($post[$row->id])) {
                $data = array(
                    'projectID'           => $post['project_id'],
                    'PersonInCharge'      => $this->session->inCharge,
                    'materialName'        => $row->itemName,
                    'materialDescription' => $row->itemDescription,
                    'unit'                => $row->unit,
                    'size'                => $row->size,
                    'color'               => $row->color,
                    'price'               => $row->price,
                    'quantity'            => $post[$row->id . 'quantity'],
                    'cost'                =>  $row->price * $post[$row->id . 'quantity'],
                    'source'              => 'Inventory',
                    'dateAdded'           => date('Y-m-d'),
                    'is_deleted'          => 0
                );
                $this->db->insert('tbl_materialexpenses' , $data);
                $item_id = $row->id;
                $remaining = $row->stockOnHand - $data['quantity'];
                $this->db->update('tbl_inventorymaterial', array('stockOnHand' => $remaining), array('id' => $item_id));
                $this->update_expense($data['projectID'] , $data['cost']);
            }
        }
    }



    public function export_item_list() {
        $check = $this->input->post('checkbox'); 
        $response = array();
        foreach ($check as $id) { 
            $query = $this->db->get_where('tbl_inventorymaterial', array('id' => $id));
            $response[] = $query->row();
        } 
        return $response;
    }



    public function update() {
        $post = $this->input->post();
        $query = $this->db->get('tbl_inventorymaterial');
        foreach ($query->result() as $row) {
            if (isset($post[$row->id])) {  
                $data = array(
                    'itemName'        => $post[$row->id . 'itemName'],
                    'itemDescription' => $post[$row->id .'itemDescription'],
                    'unit'            => $post[$row->id . 'unit'],
                    'size'            => $post[$row->id . 'size'],
                    'color'           => $post[$row->id . 'color'],
                    'price'           => $post[$row->id . 'price'],
                    'stockOnHand'     => $post[$row->id . 'stockOnHand'],
                    'maximumStock'    => $post[$row->id . 'maximumStock'],
                    'criticalStock'   => $post[$row->id . 'criticalStock']
                );

                if ($data['stockOnHand'] <= 0) {
                    $data['status'] = "Empty";
                }
                elseif ($data['stockOnHand'] >= $data['maximumStock']) {
                    $data['status'] = "Exceed";
                }
                elseif ($data['stockOnHand'] <= $data['criticalStock']) {
                    $data['status'] = "Critical";
                } 
                else {
                    $data['status'] = "Normal";
                }
                $this->db->update('tbl_inventorymaterial', $data, array('id' => $row->id));
            }
        } 
    }



    public function delete_confirm() {
        $check = $this->input->post('checkbox'); 
        $response = array();
        foreach ($check as $id) { 
            $query = $this->db->get_where('tbl_inventorymaterial', array('id' => $id));
            $response[] = $query->row()->itemName;
        } 
        return $response;
    }



    public function item_to_be_updated() {
        $check = $this->input->post('checkbox');
        $response = array();
        foreach ($check as $id) {
            $query = $this->db->get_where('tbl_inventorymaterial', array('id' => $id));
            $response[] = $query->row();
        }
        return $response;
    }



    public function insert_logs($log) {   
        $activity = array(
            'userID'        =>  $this->session->id,
            'activity'      => $log,
            'activityDate'  => date('Y-m-d'),
            'activityTime'  => date('h:i:sa'),
            'is_deleted'    => 0
        );
        $this->db->insert('tbl_activityLogs', $activity); 
    }



    public function get_company_profile() { 
        $query = $this->db->get_where('tbl_profile', array('is_deleted' => 0)); 
        return $query->result_array();
    }



    public function get_user() {
        $query = $this->db->get_where('tbl_account', array('is_deleted' => 0 ));
        return $query->result_array();
    }  



    public function find_project() {
        $query = $this->db->query("SELECT * FROM tbl_quotation AS q INNER JOIN tbl_client AS c INNER JOIN tbl_project AS p ON p.quotation_no = q.quotation_id AND  q.client_id = c.client_no");
        return $query->result_array();
    } 




    public function delete()  {  
        $check = $this->input->post('checkbox'); 
        $activity = 'Deleted Items : ';
        foreach ($check as $id) { 
            $this->db->update('tbl_inventorymaterial', array('is_deleted' => 1), array('id' => $id));
            $query = $this->db->get_where('tbl_inventorymaterial', array('id' => $id));
            $activity .= $query->row()->itemName . ' , ';
        }  
            $this->insert_logs($activity);
    }
 
}