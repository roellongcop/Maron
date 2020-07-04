<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Count_Model extends CI_Model {

   public function __construct() {
          $this->load->database(); 
   }

   public function count_data() { 
   	$query = $this->db->get_where('tbl_products', array('is_deleted' => 0)); 
   	$this->session->all_products = $query->num_rows();
   
   	$query = $this->db->get_where('tbl_services', array('is_deleted' => 0)); 
   	$this->session->all_services = $query->num_rows();
    
   	$query = $this->db->get_where('tbl_personnels', array('is_deleted' => 0)); 
   	$this->session->all_personnels = $query->num_rows();
           
   	$query = $this->db->get_where('tbl_inventorymaterial', array('is_deleted' => 0, 'status' => 'Normal')); 
   	$this->session->normal = $query->num_rows(); 

   	$query = $this->db->get_where('tbl_inventorymaterial', array('is_deleted' => 0, 'status' => 'Critical'));
   	$this->session->critical = $query->num_rows(); 

   	$query = $this->db->get_where('tbl_inventorymaterial', array('is_deleted' => 0, 'status' => 'Exceed'));
   	$this->session->exceed = $query->num_rows(); 

    $query = $this->db->get_where('tbl_inventorymaterial', array('is_deleted' => 0, 'status' => 'Empty'));
   	$this->session->empty = $query->num_rows(); 
		
   	$this->session->all_item = $this->session->normal +  $this->session->critical +  $this->session->exceed + $this->session->empty;

     
   	$query = $this->db->get_where('tbl_account', array('is_deleted' => 0)); 
   	$this->session->all_account = $query->num_rows(); 
    
   	// PENDING 
   	$query = $this->db->get_where('tbl_project', array('is_deleted' => 0, 'projectStatus' => 'Pending')); 
   	$this->session->pending = $query->num_rows(); 

   	// ONGOING 
    $query = $this->db->get_where('tbl_project', array('is_deleted' => 0, 'projectStatus' => 'Ongoing')); 
   	$this->session->ongoing = $query->num_rows(); 

   	//FINISHED 
    $query = $this->db->get_where('tbl_project', array('is_deleted' => 0, 'projectStatus' => 'Finished')); 
   	$this->session->finished = $query->num_rows(); 

   	// REQUEST   
   	$query = $this->db->get_where('tbl_request', array('status !=' => 1)); 
   	$this->session->request = $query->num_rows(); 

    $query = $this->db->get_where('tbl_request' , array('status' => 0)); 
    $this->session->pending_request = $query->num_rows(); 

    $query = $this->db->get_where('tbl_request' , array('status' => 2)); 
    $this->session->approved_request = $query->num_rows();

   	// ALL
   	$this->session->all_project =  $this->session->ongoing + $this->session->pending + $this->session->finished;


    // REQUEST 
    $query = $this->db->get_where('tbl_quotation', array('is_deleted' => 0, 'status' => 'Request')); 
    $this->session->q_request = $query->num_rows(); 

   	// PENDING 
   	$query = $this->db->get_where('tbl_quotation', array('is_deleted' => 0, 'status' => 'Pending')); 
   	$this->session->q_pending = $query->num_rows(); 

   	// APPROVED 
   	$query = $this->db->get_where('tbl_quotation', array('is_deleted' => 0, 'status' => 'Approved')); 
   	$this->session->q_approved = $query->num_rows(); 

   	$this->session->all_quotation = $this->session->q_pending + $this->session->q_approved + $this->session->q_request;

   
   	// PENDING 
   	$query = $this->db->get('tbl_client', array('is_deleted' => 0)); 
   	$this->session->all_client = $query->num_rows(); 

   }

}
