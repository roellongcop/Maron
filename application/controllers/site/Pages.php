<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Pages extends CI_Controller {

    public function __construct() {
        parent::__construct();  
        $this->load->model('site/profile_model','profile');  
    } 
 


    public function register_ok() { 
        $data['header']     = $this->load->view('templates/site/header' , $data , true);
        $data['footer']     = $this->load->view('templates/site/user_footer' , $data , true); 
        $data['navigation'] = $this->load->view('templates/site/page_nav' , $data , true); 

        $this->load->view('site/registered', $data);
    }



    public function forgot_password() {
        $data['about']  = $this->profile->get_about();
        $data['header'] = $this->load->view('templates/site/header' , $data , true);
        $data['footer'] = $this->load->view('templates/site/user_footer' , $data , true); 

        $this->load->view('site/forgot_password',$data);
    }



    public function load_product_list() {
        $data = $this->profile->load_product_list();
        echo json_encode($data);
    }



    public function product_list() {
        $data = $this->profile->product_list(); 
        echo json_encode($data); 
    }


    public function find_project() {
        $data = $this->profile->get_projects('one');
        echo json_encode($data);
    }



    public function view_img() {
        $data = $this->profile->view_img();
        echo json_encode($data);
    }



    public function services() {
        $data['page']       = 'services';
        $data['services']   = $this->profile->get_services('all');  
        $data['images']     = $this->profile->get_service_images();  
        $data['about']      = $this->profile->get_about(); 

        $data['header']     = $this->load->view('templates/site/header' , $data , true);
        $data['footer']     = $this->load->view('templates/site/footer' , $data , true); 
        $data['navigation'] = $this->load->view('templates/site/page_nav' , $data , true);

        $this->load->view('site/services',$data); 
    }


    public function find_product() { 
        $data = $this->profile->find_product();
        echo json_encode($data);
    }



    public function about() { 
        $data['page']       = 'about';
        $data['about']      = $this->profile->get_about(); 
        $data['header']     = $this->load->view('templates/site/header' , $data , true);
        $data['footer']     = $this->load->view('templates/site/footer' , $data , true); 
        $data['navigation'] = $this->load->view('templates/site/page_nav' , $data , true);

        $this->load->view('site/about',$data);
    }



    public function teams() {
        $data['page']       = 'teams';
        $data['teams']      = $this->profile->get_teams('all'); 
        $data['about']      = $this->profile->get_about(); 
        $data['header']     = $this->load->view('templates/site/header' , $data , true);
        $data['footer']     = $this->load->view('templates/site/footer' , $data , true); 
        $data['navigation'] = $this->load->view('templates/site/page_nav' , $data , true);

        $this->load->view('site/teams',$data);
    }



    public function projects() {
        $data['page']           = 'projects';
        $data['products']       = $this->profile->get_products('all');  
        $data['product_images'] = $this->profile->get_product_images('all');  
        $data['projects']       = $this->profile->get_projects('all');  
        $data['about']          = $this->profile->get_about(); 

        $data['header']         = $this->load->view('templates/site/header' , $data , true);
        $data['footer']         = $this->load->view('templates/site/footer' , $data , true); 
        $data['navigation']     = $this->load->view('templates/site/page_nav' , $data , true);

        $this->load->view('site/projects',$data); 
    }


       
    public function products() { 
        $data['page']           = 'projects';
        $data['data']           = 'load_product_list()';
        $data['about']          = $this->profile->get_about(); 
        $data['products']       = $this->profile->get_products('all');
        $data['product_images'] = $this->profile->get_product_images('all');  

        $data['header']         = $this->load->view('templates/site/header' , $data , true);
        $data['footer']         = $this->load->view('templates/site/footer' , $data , true); 
        $data['navigation']     = $this->load->view('templates/site/page_nav' , $data , true);

        $this->load->view('site/products',$data); 
    }

}