<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Profile_Model extends CI_Model {

    public function __construct() {
        $this->load->database();
    }



    public function insert_notif($notif) {
        $query = $this->db->get('tbl_account');
        foreach ($query->result() as $row) { 
            $data = array(
                'userImage'   => $this->session->image,
                'userID'      =>  $row->id,
                'description' => $notif,
                'type'        => 'profile',
                'dateOccur'   => date('F d, Y'),
                'link'        => 'profile',
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



    public function add(){
        $post = $this->input->post();
        $data = array('legend' => $post['profile_title'], 'description' => $post['profile_description']); 
        $this->db->insert('tbl_profile', $data);
        return $data;
    }



    public function delete($id) { 
        $query = $this->db->get_where('tbl_profile', array('is_deleted' => 0, 'profile_id' => $id));
        $title = $query->row()->legend;
        $this->db->update('tbl_profile', array('is_deleted' => 1), array('profile_id' => $id));
        return $title;
    }



    public function update(){
        $post = $this->input->post();
        $data = array('legend' => $post['e_profile_title'], 'description' => $post['e_profile_description']); 
        $this->db->update('tbl_profile', $data, array('profile_id' => $post['profile_id']));
        return $data;
    }



    public function show_profile() { 
        $match = array('is_deleted' => 0, 'profile_id' => $this->input->post('id'));
        $query = $this->db->get_where('tbl_profile', $match);
        return $query->result_array(); 
    }



    public function delete_personnel($personnel_id) { 
        $this->db->update('tbl_personnels', array('is_deleted' => 1), array('personnel_id' => $personnel_id));
    }



    public function delete_product($product_id) {
        $query = $this->db->get_where('tbl_products', array('product_id' => $product_id));
        $product_name = $query->row()->product_name;
        $this->db->update('tbl_products', array('is_deleted' => 1), array('product_id' => $product_id));
        return $product_name;
    }



    public function delete_service($service_id) {
        $query = $this->db->get_where('tbl_services', array('service_id' => $service_id));
        $service_name = $query->row()->service_name;
        $this->db->update('tbl_services', array('is_deleted' => 1), array('service_id' => $service_id));
        return $service_name;
    }



    public function add_product_images() {
        $query = $this->db->get('tbl_temp_images') ;
        foreach ($query->result() as $img) {
            $data = array ('product_no' => $this->input->post('product_id'), 'image_path' => $img->image_path);
            $this->db->insert('tbl_product_images', $data);
        }
    }



    public function add_service_images() {
        $query = $this->db->get('tbl_temp_images') ;
        foreach ($query->result() as $img) {
            $data = array ('service_no' => $this->input->post('service_id'), 'image_path' => $img->image_path);
            $this->db->insert('tbl_service_images', $data);
        }
    }



    public function upload_products($image, $event = "save") { 
        if ( $event == "save") {
            $query = $this->db->get_where('tbl_products', array('is_deleted' => 0));
            foreach ($query->result() as $row) {  
                $product_id = $row->product_id;
            }
            $product_id = $product_id + 1 ;
            $path = 'uploads/products/'. $image;
            $data = array('image_type_id' => $product_id, 'image_path' =>$path);
            $this->db->insert('tbl_temp_images', $data);
        } 
        else {
            $product_id = $this->input->post('product_id');
            $path = 'uploads/products/'. $image;
            $data = array('image_type_id' =>$product_id, 'image_path' =>$path);
            $this->db->insert('tbl_temp_images', $data);
        } 
    }



    public function upload_services($image, $event = "save") { 
        if ( $event == "save") { 
            $query = $this->db->get_where('tbl_services', array('is_deleted' => 0));
            foreach ($query->result() as $row) {  
                $service_id = $row->service_id;
            }
            $service_id = $service_id + 1 ;
            $path = 'uploads/services/'. $image;
            $data = array('image_type_id' =>$service_id, 'image_path' =>$path);
            $this->db->insert('tbl_temp_images', $data);
        } 
        else {
            $service_id = $this->input->post('service_id');
            $path = 'uploads/services/'. $image;
            $data = array('image_type_id' =>$service_id, 'image_path' =>$path);
            $this->db->insert('tbl_temp_images', $data);
        } 
    }



    public function get_company_profile($id = '') { 
        if ($id == '') {  
            $query = $this->db->get_where('tbl_profile', array('is_deleted' => 0)); 
            return $query->result_array();
        }
        $query = $this->db->get_where('tbl_profile', array('is_deleted' => 0, 'profile_id' => $id)); 
        return $query->result_array();
    } 



    public function change_profile($legend) { 
        $data = array('description' => $this->input->post($legend));
        $this->db->update('tbl_profile', $data, array('legend' => $legend));
    }



    public function product_image_delete($image_id){
        $query = $this->db->get_where('tbl_product_images', array('product_image_id' => $image_id));
        $product_id = $query->row()->product_no;
        // $image_path = $query->row()->image_path;
        $this->db->delete('tbl_product_images', array('product_image_id' => $image_id));
        return $product_id; 
    }



    public function service_image_delete($image_id){
        $query = $this->db->get_where('tbl_service_images', array('service_image_id' => $image_id));
        $service_id = $query->row()->service_no;
        // $image_path = $query->row()->image_path;
        $this->db->delete('tbl_service_images', array('service_image_id' => $image_id));
        return $service_id; 
    } 



    public function get_products($id = "All") {   
        if ($id == "All") {
            $query = $this->db->get_where('tbl_products', array('is_deleted' => 0));
        } 
        else {
            $query =  $this->db->query("SELECT p.product_id , p.product_name , p.product_description , pi.product_image_id , pi.image_path  FROM tbl_products AS p INNER JOIN tbl_product_images AS pi ON p.product_id = pi.product_no WHERE p.product_id = $id AND p.is_deleted = 0 ");  
        } 
        return $query->result_array(); 
    }



    public function get_services($service_id = "All") {   
        if ($service_id == "All") {
            $query = $this->db->get_where('tbl_services', array('is_deleted' => 0)); 
        } 
        else {
            $query =  $this->db->query("SELECT s.service_id , s.service_name , s.service_description , si.service_image_id , si.image_path  FROM tbl_services AS s INNER JOIN tbl_service_images AS si ON s.service_id = si.service_no WHERE s.service_id = $service_id AND s.is_deleted = 0 ");  
        } 
        return $query->result_array(); 
    }



    public function personnels_update($personnel_image) {
        $post = $this->input->post();
        $data = array(
            'first_name'  => $post['fn'],
            'middle_name' => $post['mn'],
            'last_name'   => $post['ln'],
            'email'       => $post['email'],
            'position'    => $post['position'],
            'team'        => $post['team']
        );
        if (!empty($personnel_image)) { 
            $path ='uploads/personnels/'. $personnel_image;
            $data['image_path'] = $path ;  
        }  
        $this->db->update('tbl_personnels', $data, array('personnel_id' => $post['personnel_id']));
        return $data['first_name'].' '.$data['last_name'];
    }



    public function personnels_add($personnel_image) {
        $post = $this->input->post();
        if (!empty($personnel_image)) { 
            $path ='uploads/personnels/'. $personnel_image;
        }  
        else { 
            $path ='uploads/templates/male.png'; 
        }
        $personnel_data = array(
            'first_name'  => $post['add_fn'],
            'middle_name' => $post['add_mn'],
            'last_name'   => $post['add_ln'],
            'email'       => $post['add_email'],
            'position'    => $post['add_position'],
            'team'        => $post['add_team'],
            'is_deleted'  => 0,
            'image_path'  => $path
        ); 
        $this->db->insert('tbl_personnels',$personnel_data);
        return $personnel_data['last_name'];
    }



    public function get_personnels($personnel_id = "All") {   
        if ($personnel_id == "All") {
            $query = $this->db->get_where('tbl_personnels', array('is_deleted' => 0));
        } 
        else { 
            $match = array('personnel_id' => $personnel_id, 'is_deleted' => 0);
            $query = $this->db->get_where('tbl_personnels', $match); 
        } 
        return $query->result_array(); 
    }



    public function add_products() {   
        $post = $this->input->post();
        $data = array( 
            'product_name'        => $post['product_name'],
            'product_description' => $post['product_description'],
            'is_deleted'          => 0
        );
        $this->db->insert('tbl_products', $data); 
        $product_query = $this->db->get('tbl_products'); 
        foreach ($product_query->result() as $pq) {
            $product_id = $pq->product_id;
        }
        $query = $this->db->get('tbl_temp_images');
        foreach ($query->result() as $row) {
            $data = array('product_no' => $product_id, 'image_path' => $row->image_path);
            $this->db->insert('tbl_product_images', $data);
        }
        $this->db->truncate('tbl_temp_images');
        return $post['product_name'];
    }



    public function add_services() {  
        $post = $this->input->post();
        $data = array( 
            'service_name'        => $post['service_name'],
            'service_description' => $post['service_description'],
            'is_deleted'          => 0
        );
        $this->db->insert('tbl_services', $data); 
        $service_query = $this->db->get('tbl_services'); 
        foreach ($service_query->result() as $sq) {
            $service_id = $sq->service_id;
        }
        $query = $this->db->get('tbl_temp_images');
        foreach ($query->result() as $row) {
            $data = array('service_no' => $service_id, 'image_path' => $row->image_path);
            $this->db->insert('tbl_service_images', $data);
        }
        $this->db->truncate('tbl_temp_images');
        return $post['service_name'];
    }



    public function truncate_temp_images () {
        $this->db->truncate('tbl_temp_images');
    }


}