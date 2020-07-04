<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Home extends CI_Controller {


    public function __construct() {
        parent::__construct();  
        $this->load->model('site/profile_model','profile');    
    } 



    public function index() {
        $data['teams']          = $this->profile->get_teams(); 
        $data['products']       = $this->profile->get_products(); 
        $data['product_images'] = $this->profile->get_product_images(); 
        $data['projects']       = $this->profile->get_projects(); 
        $data['services']       = $this->profile->get_services(); 
        $data['service_images'] = $this->profile->get_service_images('site'); 
        $data['about']          = $this->profile->get_about(); 

        $data['header']        = $this->load->view('templates/site/header', $data, true);
        $data['footer']        = $this->load->view('templates/site/footer', $data, true); 
        $data['navigation']    = $this->load->view('templates/site/home_nav', $data, true);
        $data['modal']         = $this->load->view('site/modal', $data, true);

        $this->load->view('site/index',$data); 
    }


}