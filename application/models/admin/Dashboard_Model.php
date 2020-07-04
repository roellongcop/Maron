<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Dashboard_Model extends CI_Model {

    public function __construct() {
        $this->load->database(); 
    }



	public function get_user() {
		$query = $this->db->get_where('tbl_account', array('is_deleted' => 0 ));
		return $query->result_array();
	}  



	public function get_company_profile() { 
        $query = $this->db->get_where('tbl_profile', array('is_deleted' => 0)); 
        return $query->result_array();
    }



    public function count_notif($type) {  
        $match = array('type' => $type, 'userID' => $this->session->id, 'is_deleted' => 0);
        $query = $this->db->get_where('tbl_notification', $match);
        return $this->db->affected_rows();
    }



    public function notif_delete()  { 
        $match = array('type' => $this->input->post('type'), 'userID' => $this->session->id);
        $this->db->delete('tbl_notification', $match);
    }



    public function get_notif($type) { 
        $match = array('type' => $type, 'userID' => $this->session->id, 'is_deleted' => 0);
        $query = $this->db->get_where('tbl_notification', $match);
        return $query->result_array();
    }


}