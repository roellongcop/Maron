<?php defined('BASEPATH') OR exit('No direct script access allowed');
class User_model extends CI_Model {
   
    public function __construct() {
        $this->load->database();   
    }

 

    public function forgot_password($type = "") {
        $code  = $this->input->post('code');
        if ($type === "") {
            $query = $this->db->get_where('tbl_client', array('code' => $code));
            if ($query->num_rows() > 0) {
                // return $this->encrypt->decode($query->row()->password);
                return $query->row()->password;
            }   
            return FALSE;
        }

        $query = $this->db->get_where('tbl_account', array('code' => $code));
         if ($query->num_rows() > 0) {
            // return $this->encrypt->decode($query->row()->password);
            return $query->row()->password;
        } 
        return FALSE; 
    }




    public function insert_notif($notif) {
        $query = $this->db->get('tbl_account');
        foreach ($query->result() as $row) { 
            $data = array(
                'userImage'   => 'uploads/templates/male.png',
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




    public function check_user($data , $own = '') {
        $client_id = $this->session->client_id;
        $input = $this->input->post('input');
        if ($own == '') {
            $match = array($data => $input, 'is_deleted' => 0);
            $query = $this->db->get_where('tbl_client', $match);
        }
        else {
            $match = array('client_no !=' => $client_id, $data => $input, 'is_deleted' => 0);
            $query = $this->db->get_where('tbl_client', $match);
        }
        if ($query->num_rows() > 0) {
            return true;
        }
        else {
            return false;
        }
    }



    public function get_company_info($legend) {
        $query = $this->db->get_where('tbl_profile' , array('legend' => $legend));
        return $query->row()->description; 
    }



    public function get_dashboard_data() {
        $client_id = $this->session->client_id;
        $query = $this->db->get_where('tbl_client_notification' , 
            array('is_deleted' => 0 , 'client_user' => $client_id));
        $notif = $query->num_rows();  
        return $notif;
    }



    public function approved_quotation($id) {
        $this->db->update('tbl_quotation' , array('status' => 'Approved') , array('quotation_id' => $id));
        $query = $this->db->get_where('tbl_quotation' , array('quotation_id' => $id));
        $row   = $query->row();
        $data  = array(
            'quotation_no'   => $id,
            'client_no'      => $row->client_id,
            'expenses'       => 0,
            'profit'         => $row->estimated_cost,
            'projectStatus'  => 'Pending',
            'imagePath'      => 'uploads/templates/project.png',
            'project_leader' => 10001,
            'is_deleted'     => 0
        );
        $notif = $this->session->client_name . ': Approved Quotation for his/her project <b>'. $row->project_name .'</b>';
        $this->insert_notif($notif);
        $this->db->insert('tbl_project', $data);
    }



    public function get_about($id = '') { 
        if ($id == '') { 
            $query = $this->db->get('tbl_profile'); 
            return $query->result_array(); 
        }    
    }



    public function get_quotation($id)  {  
        $query = $this->db->get_where('tbl_quotation', array('quotation_id' => $id)); 
        return $query->result_array();
    }



    public function search_notif(){
        $word = $this->input->post('word');
        $query = $this->db->query("SELECT * FROM tbl_client_notification AS i INNER JOIN tbl_account AS a INNER JOIN tbl_client AS c ON i.admin_user = a.id  AND i.client_user = c.client_no WHERE  i.description LIKE '%$word%'OR  i.date_occur LIKE '%$word%' ORDER BY i.id DESC");
        return $query->result_array();
    }



    public function get_notif() {
        $client_id = $this->session->client_id; 
        $this->db->update('tbl_client_notification', array('is_deleted' => 1) , array('is_deleted' => 0 , 'client_user' => $client_id)); 
        $query = $this->db->query("SELECT * FROM tbl_client_notification AS i INNER JOIN tbl_account AS a INNER JOIN tbl_client AS c ON i.admin_user = a.id  AND i.client_user = c.client_no WHERE i.client_user = $client_id ORDER BY i.id DESC");  
        return $query->result_array(); 
    }



    public function find_myrequest_list() {
        $id = $this->session->client_id;
        $word = $this->input->post('word'); 
        $query = $this->db->query("SELECT * FROM tbl_request WHERE client_id = $id AND project_name LIKE '%$word%'");
        return $query->result_array();
    }


 
    public function find_myproject() {
        $id    = $this->session->client_id;
        $word  = $this->input->post('word'); 
        $query = $this->db->query("SELECT * FROM tbl_project AS p INNER JOIN tbl_quotation AS q 
        ON p.quotation_no = q.quotation_id WHERE p.client_no = $id AND q.project_name LIKE '%$word%'");
        return $query->result_array();
    }



    public function load_myrequests() {
        $id    = $this->session->client_id;
        $query = $this->db->query("SELECT * FROM tbl_request WHERE client_id = $id");
        return $query->result_array();
    }



    public function load_myprojects() {
        $id = $this->session->client_id;
        $project_id = $this->input->post('id');
        if ($project_id == '') {  
            $query = $this->db->query("SELECT * FROM tbl_project AS p INNER JOIN tbl_quotation AS q 
            ON p.quotation_no = q.quotation_id WHERE p.client_no = $id");
            return $query->result_array();
        }

        $query = $this->db->query("SELECT p.imagePath , p.id  , p.projectStatus , a.fullName , q.project_name , q.scope_of_work , q.project_address ,  a.imagePath AS image, q.date_started , q.expected_finished  FROM tbl_project AS p INNER JOIN tbl_quotation AS q ON p.quotation_no = q.quotation_id INNER JOIN tbl_account AS a ON a.id = p.project_leader WHERE p.client_no = $id AND p.id = $project_id");

        return $query->result_array(); 
    }




    public function change_password() {
        $post      = $this->input->post();
        $client_id = $this->session->client_id;
        // $password  = $post['old'];
        $query     = $this->db->get_where('tbl_client' , array('client_no' => $client_id));

        if ($query->num_rows() > 0) {
            // $new_pass = $this->encrypt->encode($post['new']);
            $new_pass = $post['new'];
            $this->db->update('tbl_client' , array('password' => $new_pass) , array('client_no' => $client_id)); 
            return TRUE;
        }
        else {
            return FALSE;
        }
    }



    public function update_profile() {      
        $post = $this->input->post();
        $data = array(
            'client_name'     => $post['name'],
            'client_position' => $post['position'],
            'client_email'    => $post['email'],
            'client_address'  => $post['address'],
            'client_number'   => $post['number'],
            'username'        => $post['username']
        );
        $id =  $this->session->client_id;
        $this->db->update('tbl_client' , $data , array('client_no' => $id));
    }



    public function delete_material() {
        $match = array('preference_id' => $this->input->post('id'));
        $this->db->delete('tbl_temp_preference', $match);
    } 



    public function delete_work_des() {
        $match = array('work_description' => $this->input->post('description'));
        $this->db->delete('tbl_temp_preference', $match);

        $match = array('work_description' => $this->input->post('description'));
        $this->db->delete('tbl_work_description', $match);

    } 



    public function delete_request() { 
        $match = array('request_id' => $this->input->post('request_id'));
        $this->db->update('tbl_request', array('status' => 1) , $match);
    }


       
    public function save_request() { 
        $client_id = $this->session->client_id;
        date_default_timezone_set('Asia/Manila');
        $request = array(
            'client_id'    => $this->session->client_id,
            'project_name' => $this->input->post('pname'),
            'address'      => $this->input->post('padd'),
            'description'  => $this->input->post('pdes'),
            'date_created' => date('F d, Y'),
            'status'       => 0
        );

        $this->db->insert('tbl_request', $request);

        $last_id = $this->db->get_where('tbl_request' , array('client_id' => $client_id));
        foreach ($last_id->result() as $row) {
            $id = $row->request_id;
        }

        $query = $this->db->get_where('tbl_temp_preference', array('client_id' => $client_id));
        foreach ($query->result() as $row) {
            $transper = array( 
                'request_id'           => $id,
                'work_description'     => $row->work_description,
                'material_name'        => $row->material_name,
                'material_description' => $row->material_description
            );
            $this->db->insert('tbl_preference', $transper); 
        }

        $this->db->delete('tbl_temp_preference' , array('client_id'  => $client_id));
        $this->db->delete('tbl_work_description' , array('client_id' => $client_id));

        $notif = array(
            'userImage'   => 'uploads/templates/male.png',
            'userID'      => '10001',
            'description' => 'New Project Request : <b>'. $request['project_name'] . '</b>',
            'type'        => 'request',
            'dateOccur'   => $request['date_created'],
            'link'        => 'projects',
            'is_deleted'  => 0
        );
        $this->db->insert('tbl_notification' , $notif);
    }




    public function delete_material_confirmation() {
        $query = $this->db->get_where('tbl_temp_preference', array('preference_id' => $this->input->post('id')));
        return $query->result_array(); 
    }



    public function load_request() {
        $id = $this->session->client_id;
        $description = $this->db->query("SELECT DISTINCT (work_description) FROM tbl_temp_preference WHERE client_id = '$id'");
        $preferrence = $this->db->get_where('tbl_temp_preference', array('client_id' => $id));
        $response = '';
        
        foreach ($description->result() as $row) { 
            $response .= '
            <div class="col s12 m6">  
            <ul class="collection with-header card hoverable materialboxed">
            <li class="collection-header">
            <h5>'.$row->work_description.'<a onclick="delete_work_des_confirmation(`'.$row->work_description.'`)" 
            href="#delete_work_des_modal" class="secondary-content modal-trigger"><i class="fa fa-trash"></i></a></h5>
            </li>
            ';

            foreach ($preferrence->result() as $pref) { 
                if ($pref->work_description == $row->work_description) {
                    $response .= '<li class="collection-item"><strong>Material name : </strong>'.$pref->material_name.
                    '<br> <strong>Description : </strong>'. $pref->material_description. '
                    <a onclick="delete_material_confirmation('.$pref->preference_id.')" 
                    class="secondary-content modal-trigger"  href="#delete_material_modal"> 
                    <i class="fa fa-trash"></i></a></li>';
                } 
            }
            $response .= '</ul></div>';
        }
        return $response;
    }



    public function get_work_description() {
        $id = $this->session->client_id ;
        $query = $this->db->query("SELECT DISTINCT(work_description) FROM tbl_work_description WHERE client_id = $id");
        return $query->result_array();
    }



    public function add_preferences() {
        $post = $this->input->post();
        $client_id = $this->session->client_id;
        if(!empty($post['work_des'])){
            $data = array('client_id' => $client_id, 'work_description' => $post['work_des']); 
            $this->db->insert('tbl_work_description', $data);
        }
        $preferences = array(
            'client_id'            => $client_id,
            'work_description'     => $post['work_des'],
            'material_name'        => $post['mat'],
            'material_description' => $post['mat_des'],
        );
        $this->db->insert('tbl_temp_preference', $preferences);
    }




    public function verify($id = '') { 
        if($this->db->update('tbl_client', array('verified' => 1), array('client_no' => $id))) {
            return true;
        }
    }

       

    public function resend_request($id) { 
        $this->db->update('tbl_request', array('status' => 0), array('request_id' => $id));
    }



    public function get_request($id = '') { 
        $client_id = $this->session->client_id;
        if ($id == '') { 
            // order by status
            $query = $this->db->get_where('tbl_request', array('client_id' => $client_id));
            return $query->result_array();
        }
        $query = $this->db->get_where('tbl_request', array('request_id' => $id));
        return $query->result_array();
    }



    public function get_work_des($id = ''){  
        $query = $this->db->query("SELECT DISTINCT(work_description) FROM tbl_preference WHERE request_id = $id"); 
        return $query->result_array();
    }




    public function find_myrequest($id = '') {
        $id = $this->input->post('id');
        $query = $this->db->get_where('tbl_request', array('request_id' => $id));
        return $query->result_array();
    }



    public function get_specs($id = '') {   
        $query = $this->db->get_where('tbl_preference', array('request_id' => $id)); 
        return $query->result_array();
    }



    public function get_client($id = '') {
        if ($id === '') {
            $query = $this->db->get_where('tbl_client', array('is_deleted' => 0));
            return $query->result_array(); 
        }
        $query = $this->db->get_where('tbl_client', array('client_no' => $id)); 
        return $query->result_array();
    }



    public function register() { 
        $post = $this->input->post();
        $register_info = array(
            'client_name'     => $post['fname'],
            'client_position' => $post['position'],
            'client_number'   => $post['mobile'],
            'client_email'    => $post['email'],
            'client_address'  => $post['home'],
            'username'        => $post['username'],
            // 'password'        => $this->encrypt->encode($post['password']),
            'password'        => $post['password'],
            'is_deleted'      => 0, 
            'verified'        => 0, 
            'code'            => md5($post['password'])
        );

        if($this->db->insert('tbl_client', $register_info)) { 
            $match = array('client_email' => $post['email']);
            $query = $this->db->get_where('tbl_client' , $match);  
            return $query->result_array();
        } 
    }



    public function login_modal() {
        $post     = $this->input->post(); 
        $username = $post['modal_username'];  
        $match    = array('username' => $username, 'verified' => 1, 'is_deleted' => 0);
        $query    = $this->db->get_where('tbl_client', $match);
        // $password = $this->encrypt->decode($query->row()->password);
        $password = $query->row()->password;

        if ($password == $post['modal_password']) {
            $row = $query->row();
            $this->session->client_id = $row->client_no;
            $this->session->client_name = $row->client_name;

            return true;
        }
    }



    public function login() {
        $post     = $this->input->post(); 
        $username = $post['username'];  
        $match    = array('username' => $username, 'verified' => 1, 'is_deleted' => 0);
        $query    = $this->db->get_where('tbl_client' , $match);
        // $password = $this->encrypt->decode($query->row()->password);
        $password = $query->row()->password;

        if ($password == $post['password']) {
            foreach ($query->result() as $row) {
                $this->session->client_id = $row->client_no;
                $this->session->client_name = $row->client_name;
            }
            return true;
        }
        else
        {
            return false;
        }
    }

    
}