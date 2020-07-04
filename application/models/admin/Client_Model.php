<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Client_Model extends CI_Model {

    public function __construct(){
        $this->load->database();
    }



    public function save_user_request() { 
        $post = $this->input->post();
        $data = array (
            'client_name'     => $post['c_name'],
            'client_position' => $post['c_position'], 
            'client_number'   => $post['c_num'],
            'client_email'    => $post['c_email'],
            'client_address'  => $post['c_add'],
            'username'        => $post['c_user'],
            'password'        => $post['c_pass'],
            'is_deleted'      => 0,
            'verified'        => 0,
            'code'            => 'client'
        ); 
        $this->db->insert('tbl_client', $data);
        return $data['client_name'];  
    } 



    public function get_list($key = "All"){
        if ($key == "All") {
            $query = $this->db->get_where('tbl_client' , array('is_deleted' => 0, 'verified', 1));
            return $query->result_array();
        } 
        else {
            $query = $this->db->get_where('tbl_client', array('client_no' => $key));
            return $query->result(); 
        }  
    }



    public function get_dummy() {
        $query = $this->db->get_where('tbl_client', array('client_name' => 'dummy'));
        return $query->result_array();
    }



    public function get_count($type = "All") {
        if ($type == "All") {
            $query = $this->db->get_where('tbl_client', array('is_deleted' => 0 ));
            return $query->num_rows();
        }   
    }



    public function save() {
        $post = $this->input->post();
        $data = array(
            'client_name'     => $post['c_name'],
            'client_position' => $post['c_position'], 
            'client_number'   => $post['c_num'],
            'client_email'    => $post['c_email'],
            'client_address'  => $post['c_add'],
            'username'        => $post['c_user'],
            'password'        => $post['c_pass'],
            'is_deleted'      => 0,
            'verified'        => 1,
            'code'            => 'client'
        ); 
        $this->db->insert('tbl_client', $data);
        return $data['client_name'];
    }



    public function get_company_profile() { 
        $query = $this->db->get_where('tbl_profile', array('is_deleted' => 0)); 
        return $query->result_array();
    }



    public function insert_notif($notif) {
        $query = $this->db->get('tbl_account');
        foreach ($query->result() as $row) { 
            $data = array(
                'userImage'   => $this->session->image,
                'userID'      =>  $row->id,
                'description' => $notif,
                'type'        => 'client',
                'dateOccur'   => date('F d, Y'),
                'link'        => 'clients',
                'is_deleted'  => 0
            );
            $this->db->insert('tbl_notification', $data);
        }
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



    public function get_user() {
        $query = $this->db->get_where('tbl_account', array('is_deleted' => 0 ));
        return $query->result_array();
    }  



    public function delete($key) {
        if ($key == "All") { 
            $this->db->update('tbl_client', array('is_deleted' => 1), array('is_deleted' => 0));
        } 
        else {
            $this->db->update('tbl_client', array('is_deleted' => 1), array('client_no' => $key));
        }
        return "success";
    }



    public function update() {
        $post = $this->input->post();
        $data = array(
            'client_name'     => $post['c_name'],
            'client_position' => $post['c_position'], 
            'client_number'   => $post['c_num'],
            'client_email'    => $post['c_email'],
            'client_address'  => $post['c_add'] 
        ); 
        $this->db->update('tbl_client', $data, array('client_no' => $post['c_id'])); 
        return $data['client_name'];
    }

}