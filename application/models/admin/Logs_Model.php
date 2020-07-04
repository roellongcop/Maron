<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Logs_Model extends CI_Model {

    public function __construct() {
        $this->load->database();
    }



    // public function search(){ 
    //     $match = $this->input->post('name');
    //     if ($match == '') {
    //         $query = $this->db->get('tbl_account');
    //     } 
    //     else {
    //         $this->db->like('fullName', $match);
    //         $query = $this->db->get('tbl_account');
    //     }

    //     $html ='';
    //     foreach ($query->result() as $row) {
    //         $url = site_url('logs/get/'. $row->id);  
    //         $html .= "<li class='hover'>";
    //         $html .= "<a href=".$url.">";
    //         $html .= "<img src=" . base_url() . $row->imagePath . " class='small_img img-circle'>"; 
    //         $html .= " ".$row->fullName;
    //         $html .= "</a>";
    //         $html .= "</li>"; 
    //     } 
    //     return $html; 
    // }



    public function get_logs($key) {
        if ($key == "All") {
            $query = $this->db->query("SELECT a.imagePath, a.fullName ,l.id , l.activity  , l.activityDate , l.activityTime FROM tbl_activityLogs AS l INNER JOIN tbl_account AS a ON a.id = l.userID WHERE l.is_deleted = 0 ");
            return $query->result_array(); 
        }   
        $query = $this->db->query("SELECT l.id , l.activity  , l.activityDate , l.activityTime FROM tbl_activityLogs AS l INNER JOIN tbl_account AS a ON a.id = l.userID WHERE a.id = $key AND l.is_deleted = 0 ");
        return $query->result_array();
    }



    public function get_company_profile() { 
        $query = $this->db->get_where('tbl_profile', array('is_deleted' => 0)); 
        return $query->result_array();
    }

    

    public function get_user($id=0) { 
        $query = $this->db->get_where('tbl_account', array('is_deleted' => 0 ));
        return $query->result_array();
    }  


    // public function delete($key) {
    //     $this->db->set('is_deleted', 1);
    //     $this->db->where('id', $key);
    //     $this->db->update('tbl_activityLogs');
    // }

    // public function delete_all($key) {
    //     if ($key == "All")  {
    //         $this->db->set('is_deleted', 1);
    //         $this->db->update('tbl_activityLogs');
    //     } 
    //     else {
    //         $this->db->set('is_deleted', 1);
    //         $this->db->where('userID', $key);
    //         $this->db->update('tbl_activityLogs');
    //     }
    // } 

}