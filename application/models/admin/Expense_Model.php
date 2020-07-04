<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Expense_Model extends CI_Model {

    public function __construct() {
        $this->load->database(); 
    } 



    public function get_quot_info()  {
        $query = $this->db->get('tbl_quotation');
        return $query->result_array();
    }



    public function insert_notif($notif) {
        $query = $this->db->get('tbl_account');
        foreach ($query->result() as $row) { 
            $data = array(
                'userImage'   => $this->session->image,
                'userID'      =>  $row->id,
                'description' => $notif,
                'type'        => 'expense',
                'dateOccur'   => date('F d, Y'),
                'link'        => 'expenses',
                'is_deleted'  => 0
            );
            $this->db->insert('tbl_notification', $data);
        }
    }



    public function insert_logs($log) {   
        $activity = array(
            'userID'       =>  $this->session->id,
            'activity'     => $log,
            'activityDate' => date('Y-m-d'),
            'activityTime' => date('h:i:sa'),
            'is_deleted'   => 0
        );
        $this->db->insert('tbl_activityLogs', $activity); 
    }



    public function get_user() {
        $query = $this->db->get_where('tbl_account', array('is_deleted' => 0 ));
        return $query->result_array();
    }  



    public function get_list() {
        $id = $this->session->project_id;
        $query = $this->db->query("SELECT p.id ,p.imagePath , p.quotation_no , p.expenses , p.profit , p.projectStatus , c.client_name  , c.client_address , c.client_number , c.client_email ,  c.client_position FROM tbl_project AS p INNER JOIN tbl_client AS c ON p.client_no = c.client_no WHERE p.id = $id ");
        return $query->result_array();
    }



    public function get_company_profile() { 
        $query = $this->db->get_where('tbl_profile', array('is_deleted' => 0)); 
        return $query->result_array();
    }



    public function get_total_cost_monthly( $month , $year, $table) { 
        $total = 0 ;
        $match = $year.'-'.$month;
        $query = $this->db->query("SELECT * FROM $table WHERE dateAdded LIKE '$match%' AND is_deleted = 0 ");
        foreach ($query->result() as $row) {
            $total = $total + $row->cost;
        }  
        return $total;
    }

    public function get_total_profit_monthly($month, $year, $total = 0) {  
        $query = $this->db->query("SELECT * FROM tbl_project AS p INNER JOIN tbl_quotation AS q ON p.quotation_no = q.quotation_id  WHERE p.projectStatus = 'Finished' AND q.expected_finished LIKE '$month%' AND q.expected_finished LIKE '%$year' AND p.is_deleted = 0 ");
        foreach ($query->result() as $row) {
            $total = $total + $row->profit;
        }  
        return $total;
    }



    // FOR PRINTING
    public function get_worker($what) {
        $date = date('Y-m-d');
        if ($what == "all") { 
            $match = array('projectID' => $this->session->project_id, 'is_deleted' => 0);
            $query = $this->db->get_where('tbl_workerexpenses', $match);
        } 
        else { 
            $match = array('projectID' => $this->session->project_id, 'dateAdded' => $date, 'is_deleted' => 0);
            $query = $this->db->get_where('tbl_workerexpenses', $match); 
        }
        return $query->result_array();
    }



    public function get_transpo($what) {
        $date = date('Y-m-d');
        if ($what == "all") { 
            $match = array('projectID' => $this->session->project_id, 'is_deleted' => 0);
            $query = $this->db->get_where('tbl_transportexpenses', $match); 
        } 
        else { 
            $match = array('projectID' => $this->session->project_id, 'dateAdded' => $date, 'is_deleted' => 0);
            $query = $this->db->get_where('tbl_transportexpenses', $match);
        }
        return $query->result_array();
    }



    public function get_material($what) {
        $date = date('Y-m-d');
        if ($what == "all") { 
            $match = array('projectID' => $this->session->project_id, 'is_deleted' => 0);
            $query = $this->db->get_where('tbl_materialexpenses', $match); 
        } 
        else {
            $match = array('projectID' => $this->session->project_id, 'dateAdded' => $date, 'is_deleted' => 0);
            $query = $this->db->get_where('tbl_materialexpenses', $match);
        }
        return $query->result_array();
    }



    public function add_material() {
        $post = $this->input->post();
        $project_id = $post['pro_id'];
        $material = array(
            'projectID'           => $post['pro_id'],
            'PersonInCharge'      => $this->session->inCharge,
            'materialName'        => $post['name'],
            'materialDescription' => $post['description'],
            'unit'                => $post['unit'],
            'size'                => $post['size'],
            'color'               => $post['color'],
            'price'               => $post['price'],
            'quantity'            => $post['quantity'],
            'cost'                => $post['tm_cost'],
            'source'              => $post['source'],
            'dateAdded'           => date('Y-m-d'),
            'is_deleted'          => 0
        );
        $this->db->insert('tbl_materialexpenses', $material);   
        $this->update_expense($material['projectID']); 
        $query = $this->db->query("SELECT * FROM tbl_project AS p INNER JOIN tbl_quotation AS q 
            ON p.quotation_no = q.quotation_id WHERE p.id = $project_id");
        $worker['project_name'] = $query->row()->project_name;
        return $material;
    }



    public function add_worker() {
        $post = $this->input->post();
        $project_id = $post['pro_id'];
        $worker = array(
            'projectID'      => $post['pro_id'],
            'PersonInCharge' => $this->session->inCharge,
            'workerPosition' => $post['position'],
            'salary'         => $post['salary'],
            'quantity'       => $post['quantity'],
            'daysWorked'     => $post['daysWorked'],
            'cost'           => $post['tw_cost'],
            'dateAdded'      => date('Y-m-d'),
            'is_deleted'     => 0
        );
        $this->db->insert('tbl_workerexpenses', $worker); 
        $this->update_expense($worker['projectID']);
        $query = $this->db->query("SELECT * FROM tbl_project AS p INNER JOIN tbl_quotation AS q 
            ON p.quotation_no = q.quotation_id WHERE p.id = $project_id");
        $worker['project_name'] = $query->row()->project_name;
        return $worker;
    }



    public function add_transpo() {
        $post = $this->input->post(); 
        $project_id = $post['pro_id'];
        $transpo = array(
            'projectID'      => $post['pro_id'],
            'PersonInCharge' => $this->session->inCharge,
            'transportFrom'  => $post['from'],
            'transportTo'    => $post['to'],
            'cost'           => $post['cost'],
            'receit_no'      => $post['receit'],
            'dateAdded'      => date('Y-m-d'),
            'is_deleted'     => 0              
        );
        $this->db->insert('tbl_transportexpenses', $transpo); 
        $this->update_expense($transpo['projectID']);
        $query = $this->db->query("SELECT * FROM tbl_project AS p INNER JOIN tbl_quotation AS q 
            ON p.quotation_no = q.quotation_id WHERE p.id = $project_id");
        $transpo['project_name'] = $query->row()->project_name;
        return $transpo;
    }



    public function update_expense($pro_id) {
        $cost = 0;
        $m_query = $this->db->get_where('tbl_materialexpenses' , array('projectID' => $pro_id, 'is_deleted' => 0 ));
        foreach ($m_query->result() as $mat) {
            $cost = $cost + $mat->cost;
        }
        $w_query = $this->db->get_where('tbl_workerexpenses', array('projectID' => $pro_id, 'is_deleted' => 0 ));
        foreach ($w_query->result() as $wor) {
            $cost = $cost + $wor->cost;
        }
        $t_query = $this->db->get_where('tbl_transportexpenses', array('projectID' => $pro_id, 'is_deleted' => 0 ));
        foreach ($t_query->result() as $tra) {
            $cost = $cost + $tra->cost;
        } 
        // getting the quotation id
        $q_query = $this->db->get_where('tbl_project', array('id' => $pro_id));
        foreach ($q_query->result() as $quo) {
            $quot_id = $quo->quotation_no;
        }
        $query = $this->db->get_where('tbl_quotation', array('quotation_id' => $quot_id));
        foreach ($query->result() as $row) {
            $t_cost = $row->estimated_cost ;
            $p_name = $row->project_name;
        }  
        $new_profit = $t_cost - $cost ;
        if ($new_profit <= 0) {
            $new_profit = 0;
        } 
        $update = array( 'expenses' => $cost, 'profit' => $new_profit);   
        $this->db->update('tbl_project', $update, array('id' => $pro_id));
        if ($update['profit'] <= 0) {
            $this->insert_notif('Project ' . $p_name .' has zero profit');
        }
    } 


    public function update_material() {  
        $post = $this->input->post();
        $material_id = $post['material_id'];
        $project_id  = $post['pro_id']; 
        $material_update = array(
            'projectID'           => $project_id,
            'materialName'        => $post['e_name'],
            'materialDescription' => $post['e_description'],
            'unit'                => $post['e_unit'],
            'size'                => $post['e_size'],
            'color'               => $post['e_color'],
            'price'               => $post['e_price'],
            'quantity'            => $post['e_quantity'],
            'cost'                => $post['e_tm_cost'],
            'source'              => $post['e_source'],
            'dateAdded'           => $post['e_dateAdded_m']
        );
        $this->db->update('tbl_materialexpenses', $material_update, array('id' => $material_id));
        $this->update_expense($project_id);
        $query = $this->db->query("SELECT * FROM tbl_project AS p INNER JOIN tbl_quotation AS q 
            ON p.quotation_no = q.quotation_id WHERE p.id = $project_id");
        $material_update['project_name'] = $query->row()->project_name;
        return $material_update;
    } 



    public function update_worker() {  
        $post = $this->input->post();
        $worker_id  = $post['worker_id'];
        $project_id = $post['pro_id'];

        $worker_update = array(
            'projectID'      => $project_id,
            'workerPosition' => $post['e_position'],
            'salary'         => $post['e_salary'],
            'quantity'       => $post['e_quantity'],
            'daysWorked'     => $post['e_daysWorked'],
            'cost'           => $post['e_tw_cost'],
            'dateAdded'      => $post['e_dateAdded']
        );
        $this->db->update('tbl_workerexpenses', $worker_update, array('id' => $worker_id));
        $this->update_expense($project_id);
        $query = $this->db->query("SELECT * FROM tbl_project AS p INNER JOIN tbl_quotation AS q 
            ON p.quotation_no = q.quotation_id WHERE p.id = $project_id");
        $worker_update['project_name'] = $query->row()->project_name;
        return $worker_update;
    } 



    public function update_transpo() {  
        $post = $this->input->post();
        $transpo_id = $post['transpo_id'];
        $project_id = $post['pro_id'];

        $transpo_update = array(
            'projectID'     => $project_id,
            'transportFrom' => $post['e_from'],
            'transportTo'   => $post['e_to'], 
            'cost'          => $post['e_cost'],
            'receit_no'     => $post['e_receit'],
            'dateAdded'     => $post['e_dateAdded_t']
        );
        $this->db->update('tbl_transportexpenses', $transpo_update, array('id' => $transpo_id));
        $this->update_expense($project_id);
        $query = $this->db->query("SELECT * FROM tbl_project AS p INNER JOIN tbl_quotation AS q 
            ON p.quotation_no = q.quotation_id WHERE p.id = $project_id");
        $transpo_update['project_name'] = $query->row()->project_name;
        return $transpo_update;
    }



    public function delete_worker($key,  $pro_id = 0) {  
        $incharge = $this->session->inCharge;
        if ($key == "all") { 
            $match  = array('PersonInCharge' => $incharge, 'is_deleted' => 0);
            $query  = $this->db->get_where('tbl_workerexpenses', $match); 
            $pro_id =  $query->row()->projectID;
            $this->db->update('tbl_workerexpenses', array('is_deleted' => 1), array('PersonInCharge' => $incharge));
            if ($pro_id != 0) {
                $this->update_expense($pro_id); 
            } 
            return $pro_id;
        } 
        else {
            $query = $this->db->get_where('tbl_workerexpenses', array('id' => $key));
            $pro_id =  $query->row()->projectID;
            $this->db->update('tbl_workerexpenses', array('is_deleted' => 1), array('id' => $key));
            $this->update_expense($pro_id);   
            return $pro_id;
        } 
    }  



    public function delete_material($key, $pro_id = 0) {  
        $incharge = $this->session->inCharge;
        if ($key == "all") { 
            $match  = array('PersonInCharge' => $incharge, 'is_deleted' => 0);
            $query  = $this->db->get_where('tbl_materialexpenses', $match);
            $pro_id =  $query->row()->projectID;
            $this->db->update('tbl_materialexpenses', array('is_deleted' => 1), array('PersonInCharge' => $incharge));
            if ($pro_id != 0) {
                $this->update_expense($pro_id); 
            } 
            return $pro_id;
        } 
        else {
            $query = $this->db->get_where('tbl_materialexpenses', array('id' => $key));
            $pro_id =  $query->row()->projectID;
            $this->db->update('tbl_materialexpenses', array('is_deleted' => 1), array('id' => $key));
            $this->update_expense($pro_id);   
            return $pro_id;
        } 
    }  




    public function delete_transpo($key, $pro_id = 0) {  
        $incharge = $this->session->inCharge;
        if ($key == "all") { 
            $match  = array('PersonInCharge' => $incharge, 'is_deleted' => 0); 
            $query  = $this->db->get_where('tbl_transportexpenses', $match);
            $pro_id =  $query->row()->projectID;
            $this->db->update('tbl_transportexpenses', array('is_deleted' => 1), array('PersonInCharge' => $incharge));
            if ($pro_id != 0) {
                $this->update_expense($pro_id); 
            }
            return $pro_id;
        } 
        else {
            $query = $this->db->get_where('tbl_transportexpenses', array('id' => $key));
            $pro_id =  $query->row()->projectID;
            $this->db->update('tbl_transportexpenses', array('is_deleted' => 1), array('id' => $key));
            $this->update_expense($pro_id);   
            return $pro_id;
        } 
    }  



    public function get_total_expense($tbl , $p_id, $total = 0) {
        if ($this->session->userType == "Administrator") {
            $query = $this->db->get_where($tbl, array('projectID' => $p_id, 'is_deleted' => 0 ));
        } 
        else { 
            $match = array('projectID' => $p_id, 'is_deleted' => 0, 'PersonInCharge' => $this->session->inCharge);
            $query = $this->db->get_where($tbl, $match);
        }
        foreach ($query->result() as $row) {
            $total = $total + $row->cost;
        }
        return $total;
    }



    public function get_expense_list($tbl , $p_id) {
        if ($this->session->userType == "Administrator") {
            $query = $this->db->get_where($tbl, array('projectID' => $p_id, 'is_deleted' => 0));
        } 
        else {
            $match = array('projectID' => $p_id,  'is_deleted' => 0, 'PersonInCharge' => $this->session->inCharge);
            $query = $this->db->get_where($tbl, $match);
        }
        return $query->result_array();
    }

}