<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Notification_Model extends CI_Model {

    public function __construct() {
        $this->load->database(); 
    }



    public function insert_notif($notif , $type) {
        $account = $this->db->query('SELECT * FROM tbl_account');

        foreach ($account->result() as $row) { 
            $notification = array(
                'userImage' => $this->session->image,
                'userID' =>  $row->id,
                'description' => $notif,
                'type' => $type,
                'dateOccur' =>date('F d, Y'),
                'link' => $this->session->location,
                'is_deleted' => 0
            );
            if ($type == "inventory") {
                $notification['link'] = "inventory";
            }
            elseif ($type == 'quotation') {
                $notification['link'] = "quotation";
            }
            $this->db->insert('tbl_notification', $notification);
        }
    }



    public function get_notif($type) {
        $user_id = $this->session->id; 
        $query = $this->db->get_where('tbl_notification' , array('type' => $type , 'userID' => $user_id , 'is_deleted' => 0));
        return $query->result_array();
    }



    public function notif_delete()  {
        $type = $this->input->post('type');
        $user_id = $this->session->id;
        $this->db->delete('tbl_notification' , array('type' => $type , 'userID' => $user_id));
    }



    public function count_notif($type) { 
        $user_id = $this->session->id;
        $query = $this->db->get_where('tbl_notification', array('type' => $type , 'userID' => $user_id , 'is_deleted' => 0));
        return $this->db->affected_rows();
    }



}