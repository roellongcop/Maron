<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Quotation_Model extends CI_Model {

    public function __construct()  {
        $this->load->database(); 
    }



    public function approved_quotation() {
        $quotation_id = $this->input->post('quotation_id');
        $this->db->update('tbl_quotation', array('status' => 'Pending'), array('quotation_id' => $quotation_id));

        $query = $this->db->get_where('tbl_quotation', array('quotation_id' => $quotation_id));
        $data = array(
            'admin_user'  => $this->session->id,
            'client_user' => $query->row()->client_id,
            'description' => 'Quotation was created for project request : <b>' . $query->row()->project_name. '</b>',
            'link'        => site_url('client_notif/view/'.$quotation_id),
            'date_occur'  => date('F d, Y'),
            'is_deleted'  => 0
        ); 
        $this->db->insert('tbl_client_notification', $data);  

        $match = array(
            'project_name' => $query->row()->project_name, 
            'address'      => $query->row()->project_address, 
            'description'  => $query->row()->scope_of_work
        );
        $this->db->update('tbl_request', array('status' => 2), $match);
    }



    public function insert_notif($notif) {
        $query = $this->db->get('tbl_account');
        foreach ($query->result() as $row) { 
            $data = array(
                'userImage'   => $this->session->image,
                'userID'      =>  $row->id,
                'description' => $notif,
                'type'        => 'quotation',
                'dateOccur'   => date('F d, Y'),
                'link'        => 'quotation',
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



    public function get_company_profile() { 
        $query = $this->db->get_where('tbl_profile', array('is_deleted' => 0)); 
        return $query->result_array();
    }



    public function get_client($key = "All"){
        if ($key == "All") {
            $query = $this->db->get_where('tbl_client' , array('is_deleted' => 0, 'verified', 1));
            return $query->result_array();
        } 
        else {
            $query = $this->db->get_where('tbl_client', array('client_no' => $key));
            return $query->result_array(); 
        }  
    }



    public function get_user() {
        $query = $this->db->get_where('tbl_account', array('is_deleted' => 0 ));
        return $query->result_array();
    }  



    public function delete_notif() { 
        $user_id = $this->session->id;
        $this->db->delete('tbl_notification' , array('type' => 'quotation' , 'userID' => $user_id));
    }



    public function update_bill() {
        $post = $this->input->post();
        if (!empty($post['e_other']))  { 
            $query = $this->db->get_where('tbl_bill_title', array('title_name' => $post['e_other']));
            if ($query->num_rows()  == 0)  {
                $data = array('title_name' => $post['e_other']);
                $this->db->insert('tbl_bill_title', $data);
            } 
            $bill = array(
                'title'       => $post['e_other'],
                'description' => $post['e_description'],
                'quantity'    => $post['e_qty'],
                'unit'        => $post['e_unit'],
                'materials'   => $post['e_mat'],
                'labor'       => $post['e_labor'],
                'total'       => $post['e_g_total'] 
            );
        }  
        elseif ($post['e_title'] == 'Transportation')  {
            $bill = array(
                'title'     => $post['e_title'], 
                'materials' => $post['e_gas'],
                'labor'     => $post['e_toll'],
                'total'     => $post['e_g_total'] 
            );
        } 
        else   {
            $bill = array(
                'title'       => $post['e_title'],
                'description' => $post['e_description'],
                'quantity'    => $post['e_qty'],
                'unit'        => $post['e_unit'],
                'materials'   => $post['e_mat'],
                'labor'       => $post['e_labor'],
                'total'       => $post['e_mat'] + $post['e_labor']
            );
        }
        $this->db->update('tbl_temp_bill', $bill, array('bill_id' => $post['e_bill_id']));
    }




    public function add_bill() {
        $post = $this->input->post();
        if (!empty($post['other']))  { 
            $query = $this->db->get_where('tbl_bill_title', array('title_name' => $post['other']));
            if ($query->num_rows()  == 0)  {
                $data = array('title_name' => $post('other'));
                $this->db->insert('tbl_bill_title', $data);
            } 
            $bill = array(
                'title'       => $post['other'],
                'description' => $post['description'],
                'quantity'    => $post['qty'],
                'unit'        => $post['unit'],
                'materials'   => $post['materials'],
                'labor'       => $post['labor'],
                'total'       => $post['materials'] + $post['labor']
            );
        }  
        elseif ($post['title'] == 'Transportation')  {
            $bill = array(
                'title'     => $post['title'], 
                'materials' => $post['gas'],
                'labor'     => $post['toll'],
                'total'     => $post['total'] 
            );
        } 
        else  {
            $bill = array(
                'title'       => $post['title'],
                'description' => $post['description'],
                'quantity'    => $post['qty'],
                'unit'        => $post['unit'],
                'materials'   => $post['materials'],
                'labor'       => $post['labor'],
                'total'       => $post['total'] 
            );
        } 
        $this->db->insert('tbl_temp_bill', $bill); 
    }




    public function bill_delete($bill_id) { 
        $this->db->delete('tbl_temp_bill', array('bill_id' => $bill_id));
    }




    public function get_bill_title($for = 0)  {
        $query = $this->db->get('tbl_bill_title');
        if ($for == 0)  {
            return $query->result_array(); 
        }
        else  {
            return $query->result(); 
        }
    }




    public function get_bill($bill_id  = 0) {
        if ($bill_id == 0)   {
            $query = $this->db->get('tbl_temp_bill');
            if ($query->num_rows() > 0 )   {
                return $query->result(); 
            }  
            else {
                return 0;
            }
        }
        else  { 
            $query = $this->db->get_where('tbl_temp_bill', array('bill_id' => $bill_id));
            return $query->result(); 
        }
    }




    public function delete_quot($key) {
        if ($key == "All") { 
            $this->db->update('tbl_quotation', array('is_deleted' => 1), array('is_deleted' => 0));
        } 
        elseif ($key == "Pending" OR $key == "Approved") { 
            $this->db->update('tbl_quotation', array('is_deleted' => 1), array('status' => $key));
        } 
        else {
            $this->db->update('tbl_quotation', array('is_deleted' => 1), array('quotation_id' => $key)); 
        } 
    }



    public function get_quot_info()  {
        $query = $this->db->get('tbl_quotation');
        return $query->result_array();
    }



    public function get_full_info($quotation_id) {
        $query = $this->db->query("SELECT q.quotation_id, q.created_by, q.client_id , q.project_name , q.project_address , q.transpo_cost , q.material_cost, q.worker_cost, q.estimated_cost ,  q.scope_of_work , q.bill_of_quantities , q.terms_and_condition , q.terms , q.completion, q.date_started, q.expected_finished, q.status, c.client_no, c.client_position , c.client_name, c.client_number, c.client_email, c.client_address FROM tbl_quotation AS q INNER JOIN tbl_client AS c ON q.client_id = c.client_no WHERE q.quotation_id = '$quotation_id' "); 
        return $query->result_array();
    }



    public function get_client_id($quotation_id) {
        $query = $this->db->get_where('tbl_quotation', array('quotation_id' => $quotation_id));
        foreach ($query->result() as $row) {
            return $row->client_id;
        }
    }



    public function get_list($id = 'all') {  
        if ($id == "all") {
            $query = $this->db->query('SELECT q.quotation_id , q.project_name , q.estimated_cost ,  q.date_created , q.status , q.created_by , c.client_name FROM tbl_quotation AS q INNER JOIN tbl_client AS c  ON q.client_id = c.client_no WHERE q.is_deleted = 0');
            return $query->result_array();
        } 
      
        $query = $this->db->query("SELECT q.quotation_id , q.project_name , q.estimated_cost ,  q.date_created , q.status , q.created_by , c.client_name FROM tbl_quotation AS q INNER JOIN tbl_client AS c ON q.client_id = c.client_no WHERE q.status = '$id' AND q.is_deleted = 0");
        return $query->result_array();
    }



    public function get_count($status = "All") {
        if ($status == "All") {
            $query = $this->db->get_where('tbl_quotation', array('is_deleted' => 0 ));
            return $query->num_rows();
        }  
        $query = $this->db->get_where('tbl_quotation', array('status' => $status, 'is_deleted' => 0 ));
        return $query->num_rows();
    }



    public function save()   {
        $post = $this->input->post();
        $quotation = array(
            'client_id'           => $post['client_no'],
            'created_by'          => $this->session->inCharge,
            'project_name'        => $post['projectName'],
            'scope_of_work'       => $post['projectDescription'],
            'project_address'     => $post['projectAddress'],
            'material_cost'       => $post['materialCost'],
            'worker_cost'         => $post['workerCost'],
            'transpo_cost'        => $post['transportationCost'],
            'estimated_cost'      => $post['projectTotalCost'], 
            'status'              => 'Pending',
            'date_started'        => $post['dateStarted'],
            'expected_finished'   => $post['dateFinished'],
            'terms'               => $post['terms'],
            'terms_and_condition' => $post['condition'],
            'date_created'        => date('Y-m-d'),
            'completion'          => $post['completion'],
            'bill_of_quantities'  => $post['bill'],
            'is_deleted'          => 0
        );
        $this->db->insert('tbl_quotation', $quotation); 

        $client_id = $post['client_no'];
        $project_name = $post['projectName'];
        $query = $this->db->query("SELECT * FROM tbl_quotation WHERE client_id = $client_id AND project_name = '$project_name' ORDER BY quotation_id DESC");
        $quotation_id = $query->row()->quotation_id;

        $data = array(
            'admin_user'  => $this->session->id,
            'client_user' => $post['client_no'],
            'description' => 'Quotation was created for project request : ' . $post['projectName'],
            'link'        => site_url('client_notif/view/'.$quotation_id),
            'date_occur'  => date('F d, Y'),
            'is_deleted'  => 0
        );
        $this->db->insert('tbl_client_notification', $data);

        $this->db->truncate('tbl_temp_bill'); 
        return $quotation['project_name'];
    }



    public function save_update()  {
        $post = $this->input->post();
        $quotation = array(
            'client_id'           => $post['client_no'],
            'project_name'        => $post['projectName'],
            'scope_of_work'       => $post['projectDescription'],
            'project_address'     => $post['projectAddress'],
            'material_cost'       => $post['materialCost'],
            'worker_cost'         => $post['workerCost'],
            'transpo_cost'        => $post['transportationCost'],
            'estimated_cost'      => $post['projectTotalCost'],  
            'date_started'        => $post['dateStarted'],
            'expected_finished'   => $post['dateFinished'],
            'terms'               => $post['terms'],
            'terms_and_condition' => $post['condition'],
            'date_created'        => date('Y-m-d'),
            'completion'          => $post['completion'],
            'materials'           => $post['materials']
        );
        $this->db->update('tbl_quotation', $quotation_no, array('quotation_id' => $this->session->quotation_id));


        $if_approved = $this->db->get_where('tbl_project', array('quotation_no' => $this->session->quotation_id));
        $count = $if_approved->num_rows();
        if ($count == 1) {
            foreach ($if_approved->result() as $app) {
                $data = array('profit' => ($quotation['estimated_cost'] - $app->expenses));
                $this->db->update('tbl_project', $data, array('id' => $app->id));
            }
        }
        if ($quotation['estimated_cost'] - $app->expenses <= 0 ) {
            $this->notification_model->insert_notif('Project' .$quotation['project_name']. ' has zero profit'  , 'project');
        } 
        return $quotation['project_name'];
    }



    public function delete_confirmation() {
        $query = $this->db->get_where('tbl_quotation', array('quotation_id' => $this->input->post('id')));
        return $query->result_array();
    }
}