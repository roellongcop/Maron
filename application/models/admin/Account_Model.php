<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Account_Model extends CI_Model {

    public function __construct() {
        $this->load->database(); 
    }



    public function find_leader($account_id) { 
        $query = $this->db->get_where('tbl_account', array('id' => $account_id));
        return $query->result_array();
    }



    // public function search() {
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
    //         $url = site_url('account/update_form/'. $row->id );  
    //         $html .= "<li class='hover'>";
    //         $html .= "<a href=".$url.">";
    //         $html .= "<img src=" . base_url() . $row->imagePath . " class='small_img img-circle'>"; 
    //         $html .= " ".$row->fullName;
    //         $html .= " <span id='badge' class='hidden-xs text-muted'>";

    //         if($row->userType == "Administrator") {
    //             $html .= "<span class='label label-primary'>A</span>";
    //         }
    //         else {
    //             $html .= "<span class='label label-default'>E</span>"; 
    //         }  
    //         $html .= "</span>";
    //         $html .= "</a>";
    //         $html .= "</li>";   
    //     }
    //     return $html;
    // }

    public function login() {   
        $post      = $this->input->post();
        $username  = $post['username']; 
        $match     = array('username' => $username, 'is_deleted' => 0);  
        $query     = $this->db->get_where('tbl_account' , $match);
        // $password  = $this->encrypt->decode($query->row()->password);
        $password  = $query->row()->password;
        if ($password == $post['password']) {
            return 'success';
        }  
    }


    // DATA PARA SA SESSION
    public function check_user(){
        $username = $this->input->post('username');   
        $query    = $this->db->get_where('tbl_account', array('username' => $username , 'is_deleted' => 0 ));
        return $query->result_array(); 
    }



    public function get_user($id=0) {
        if ($id == 0) {
            $query = $this->db->get_where('tbl_account', array('is_deleted' => 0 ));
            return $query->result_array();
        }  
        $query = $this->db->get_where('tbl_account', array('id' => $id));
        return $query->result_array();
    }



    public function get_image($id) {
        $query = $this->db->get_where('tbl_account', array('id' => $id ));
        return $query->row_array();
    }



    public function delete_account($key) {  
        if ($key == "All") {    
            $this->db->update('tbl_notification', array('is_deleted' => 1)); 
            $this->db->update('tbl_activitylogs', array('is_deleted' => 1)); 
            $this->db->update('tbl_account', array('is_deleted' => 1), array('is_deleted' => 0));
            return "Delete All User Account";
        } 
        else {
            $query = $this->db->get_where('tbl_account', array('id' => $key));
            foreach ($query->result() as $row) {
                $name = $row->fullName;
                $id   =  $row->id; 
                $this->db->update('tbl_activitylogs', array('is_deleted' => 1), array('userID' => $id));
                $this->db->update('tbl_notification', array('is_deleted' => 1), array('userID' => $id)); 
            } 
            $this->db->update('tbl_account', array('is_deleted' => 1), array('id' => $key));
            return "Delete " . $name . ' User account';
        }
    } 
       
      


    public function save($account_image) {
        $post = $this->input->post();
        if ($post['password1'] == $post['password2']) {
            if (!empty($account_image)) { 
                $path ='uploads/accounts/'. $account_image;
            }  
            else {
                if ($post['gender']== "Male") {
                    $path ='uploads/templates/male.png';
                } 
                else {
                    $path ='uploads/templates/female.png';
                }
            }        
            $data = array(
                'fullName'   => $post['fullName'],
                'Address'    => $post['address'],
                'email'      => $post['email'],
                'Gender'     => $post['gender'],
                'userType'   => $post['userType'],
                'username'   => $post['username'],
                // 'password'   => $this->encrypt->encode($post['password1']),
                'password'   => $post['password1'],
                'imagePath'  => $path,
                'code'       => md5($post['password1']),
                'is_deleted' => 0
            ); 
            if($this->db->insert('tbl_account', $data)) {
                $match = array('email' => $post['email']);
                $query = $this->db->get_where('tbl_account' , $match);  
                return $query->result_array();
            }  
        }  
    }



    public function insert_notif($notif) {
        $query = $this->db->get('tbl_account');
        foreach ($query->result() as $row) { 
            $data = array(
                'userImage'   => $this->session->image,
                'userID'      =>  $row->id,
                'description' => $notif,
                'type'        => 'useraccount',
                'dateOccur'   => date('F d, Y'),
                'link'        => '',
                'is_deleted'  => 0
            );
            $this->db->insert('tbl_notification', $data);
        }
    }



    public function insert_logs($log) {   
        $activity = array(
            'userID'       => $this->session->id,
            'activity'     => $log,
            'activityDate' => date('Y-m-d'),
            'activityTime' => date('h:i:sa'),
            'is_deleted'   => 0
        );
        $this->db->insert('tbl_activityLogs', $activity); 
    }



    public function get_assigned_project($user_id){
        $query = $this->db->query("SELECT q.project_name , q.project_address , p.projectStatus, p.id, c.client_name FROM tbl_project AS p INNER JOIN tbl_quotation AS q INNER JOIN tbl_client AS c ON p.quotation_no = q.quotation_id AND q.client_id = c.client_no  WHERE p.project_leader = $user_id AND p.is_deleted = 0 ");
        return $query->result_array();
    } 



    public function get_company_profile($legend = "") { 
        if ($legend === "") {
            $query = $this->db->get_where('tbl_profile', array('is_deleted' => 0)); 
            return $query->result_array();
        }
        $query = $this->db->get_where('tbl_profile', array('is_deleted' => 0, 'legend' => $legend)); 
        return $query->row()->description; 
    }



    public function save_update($account_image, $id) {
        $post = $this->input->post();
        if ($post['password1'] == $post['password2']) {
            if (!empty($account_image)) { 
                $path ='uploads/accounts/'. $account_image;
            }  
            else {
                $query = $this->db->get_where('tbl_account' , array('id' => $id));
                foreach ($query->result() as $row) {
                    $path =  $row->imagePath;
                }
            }
            if ($this->session->id == $id ) {
                $this->session->image = $path;
            } 
            $data = array(
                'fullName'  => $post['fullName'],
                'Address'   => $post['address'],
                'email'     => $post['email'],
                'Gender'    => $post['gender'],
                'userType'  => $post['userType'],
                'username'  => $post['username'],
                // 'password'  => $this->encrypt->encode($post['password1']),
                'password'  => $post['password1'],
                'imagePath' => $path
            ); 
            $this->db->update('tbl_account' , $data , array('id' => $id)); 
            return $data['fullName']; 
        }  
    }
} 