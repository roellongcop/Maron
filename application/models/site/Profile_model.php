<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Profile_model extends CI_Model {

    public function __construct() {
        $this->load->database();  
    }



    public function get_about($id = '') { 
        if ($id == '') { 
            $query = $this->db->get('tbl_profile'); 
            return $query->result_array(); 
        }    
    }


    public function get_projects($id = '') {
        if ($id == '') {
            $query = $this->db->query("SELECT * FROM tbl_project AS p INNER JOIN tbl_quotation AS q  ON p.quotation_no = q.quotation_id  WHERE p.is_deleted = 0  ORDER BY p.id DESC LIMIT 5 ");
            return $query->result_array(); 
        } 
        elseif($id == 'one') {
            $project_id = $this->input->post('id');
            $query = $this->db->query("SELECT p.imagePath, q.project_name, q.scope_of_work , a.fullName , q.project_address, p.id FROM tbl_project AS p INNER JOIN tbl_quotation AS q INNER JOIN tbl_account AS a ON p.project_leader = a.id AND p.quotation_no = q.quotation_id  WHERE p.id = $project_id");
            return $query->result_array(); 
        }  
        $query = $this->db->query("SELECT p.imagePath, q.project_name, q.scope_of_work , a.fullName , q.project_address, p.id FROM tbl_project AS p INNER JOIN tbl_quotation AS q INNER JOIN tbl_account AS a ON p.project_leader = a.id AND p.quotation_no = q.quotation_id  WHERE p.projectStatus = 'Finished' AND p.is_deleted = 0 ORDER BY p.id ASC");
        return $query->result_array();  
    }



    public function get_teams($id = '') {
        if ($id == '') { 
            $this->db->limit(6);
            $query = $this->db->get_where('tbl_personnels', array('is_deleted' => 0));
            return $query->result_array();
        } 
        $query = $this->db->get_where('tbl_personnels', array('is_deleted' => 0));
        return $query->result_array();
    } 

    // public function view_img() {
    //     $this->db->where('product_image_id', $this->input->post('id'));
    //     $query = $this->db->get('tbl_product_images');
    //     $modal_img ='';
    //     foreach ($query->result() as $row) { 
    //     $modal_img .="<center><img style='width: 600px; height:370px;' class='responsive-img card' src=" . base_url() . $row->image_path . "></center>"; 
    //     }

    //     return $modal_img;

    // }

    public function load_product_list() {
        $query = $this->db->get('tbl_products'); 
        return $query->result_array(); 
    }



    public function product_list() {
        $match = $this->input->post('id');
        $query = $this->db->query("SELECT * FROM tbl_products WHERE is_deleted = 0 AND product_name LIKE '%$match%'");
        return $query->result_array();  
    }


    public function find_product() {   
        $product_id = $this->input->post('id');
        $image = $this->db->get_where('tbl_product_images', array('product_no' => $product_id)); 
        $query = $this->db->get_where('tbl_products', array('product_id' => $product_id)); 
        $data = array (
            'name'        => $query->row()->product_name, 
            'images'      => $image->row()->image_path, 
            'description' => $query->row()->product_description 
        );  
        return $data;
    }



    public function get_product_images() { 
        $query = $this->db->get('tbl_product_images');
        return $query->result_array();
    }  



    public function get_products($id = '') {
        if ($id == '') {
            $query = $this->db->query('SELECT * FROM tbl_products AS p INNER JOIN tbl_product_images AS pi ON p.product_id = pi.product_no WHERE p.is_deleted = 0 LIMIT 4');
            return $query->result_array();
        }
        $query = $this->db->get_where('tbl_products', array('is_deleted' => 0));
        return $query->result_array();
    }



    public function get_service_images($id = '') {  
        if ($id == '') { 
            $query = $this->db->get('tbl_service_images'); 
            return $query->result_array(); 
        }  
        $query = $this->db->query("SELECT DISTINCT(service_no), image_path FROM tbl_service_images LIMIT 3");
        return $query->result_array(); 
    }  



    public function get_services($id = '') { 
        if ($id == '') { 
            $this->db->limit(3); 
            $query = $this->db->get_where('tbl_services', array('is_deleted' => 0)); 
            return $query->result_array();
        } 
        $query = $this->db->get_where('tbl_services', array('is_deleted' => 0)); 
        return $query->result_array(); 
    }



}