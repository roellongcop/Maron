<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Request_Model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database(); 
    }



    public function find_quotation() {
        $post = $this->input->post();
        $match = array(
            'project_name'    => $post['project_name'],
            'project_address' => $post['project_address'],
            'scope_of_work'   => $post['description']
        ); 
        $query = $this->db->get_where('tbl_quotation' , $match);
        return $query->row()->quotation_id;
    }



    public function get_bill() {
        $query = $this->db->get('tbl_temp_bill');
        if ($query->num_rows() > 0 )   {
            return $query->result(); 
        }  
        else {
            return 0;
        }
    }



    public function get_bill_title()  {
        $query = $this->db->get('tbl_bill_title'); 
        return $query->result_array(); 
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



    public function get_user() {
        $query = $this->db->get_where('tbl_account', array('is_deleted' => 0 ));
        return $query->result_array();
    }



    public function disapproved($request_id) {
        $this->db->update('tbl_request' , array('status' => 1) , array('request_id' => $request_id));
    }



    public function save() {
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
            'date_started'        => $post['dateStarted'],
            'expected_finished'   => $post['dateFinished'],
            // 'terms'               => $post['terms'],
            'terms_and_condition' => $post['condition'],
            'date_created'        => date('Y-m-d'),
            'completion'          => $post['completion'],
            'bill_of_quantities'  => $post['bill'],
            'is_deleted'          => 0
        );   

        if ($this->session->userType == 'Administrator') {  
            $quotation['status'] = 'Pending';
            $this->db->insert('tbl_quotation', $quotation);  
            $match = array('project_name' => $post['projectName'], 'scope_of_work' => $post['projectDescription']);
            $query = $this->db->get_where('tbl_quotation', $match);
            $quotation_id = $query->row()->quotation_id; 
            $data = array(
                'admin_user'  => $this->session->id,
                'client_user' => $post['client_no'],
                'description' => 'Quotation was created for project request : <b>' . $post['projectName']. '</b>',
                'link'        => site_url('client_notif/view/'.$quotation_id),
                'date_occur'  => date('F d, Y'),
                'is_deleted'  => 0
            ); 
            $this->db->insert('tbl_client_notification', $data);   
            $query= $this->db->update('tbl_request', array('status' => 2), array('request_id' => $post['request_id']));
        } 
        else {
            $quotation['status'] = 'Request';
            $this->db->insert('tbl_quotation', $quotation); 
        } 
        $this->db->truncate('tbl_temp_bill'); 
        return $quotation['project_name']; 
    }



    public function get_list($id = ''){
        if ($id == '') {
            $query = $this->db->query("SELECT * FROM tbl_request AS r INNER JOIN tbl_client AS c 
                ON r.client_id = c.client_no WHERE r.status != 1");  
            return $query->result_array();
        } 
        elseif ($id == 0 OR $id == 2) {
            $query = $this->db->query("SELECT * FROM tbl_request AS r INNER JOIN tbl_client AS c 
                ON r.client_id = c.client_no WHERE r.status = $id"); 
            return $query->result_array();
        }
        $query = $this->db->get_where('tbl_request', array('request_id' => $id));
        return $query->result_array();
    }



    public function get_request($id = ''){  
        $query = $this->db->query("SELECT * FROM tbl_request AS r INNER JOIN tbl_client AS c ON r.client_id = c.client_no WHERE r.request_id = $id"); 
        return $query->result_array();
    }



    public function get_work_des($id = ''){  
        $query = $this->db->query("SELECT DISTINCT(work_description) FROM tbl_preference WHERE request_id = $id"); 
        return $query->result_array();
    }



    public function get_specs($id = ''){  
        $query = $this->db->get_where('tbl_preference', array('request_id' => $id)); 
        return $query->result_array();
    }



    public function get_client($id){
        $query = $this->db->get_where('tbl_request', array('request_id' => $id));
        $client_id = $query->row()->client_id;
        
        $query = $this->db->get_where('tbl_client', array('client_no' => $client_id));
        return $query->result_array();
    }
}
