<?php defined('BASEPATH') OR exit('No direct script access allowed');
class profile extends CI_Controller {

    public function __construct() {
        parent::__construct();  
        if (is_null($this->session->id) AND $this->session->userType == 'Administrator') {redirect(site_url('login'));}
        $this->load->model('admin/profile_model','profile');  
        $this->load->model('admin/count_model','count'); 
        $this->count->count_data();
    } 



    public function update_form($id = '') {
        $data['page']            = 'profile';
        $data['company_profile'] = $this->profile->get_company_profile();
        $data['com_pro']         = $this->profile->get_company_profile($id);
        $data['users_list']      = $this->profile->get_user();

        $data['header']          = $this->load->view('templates/admin_header', $data, true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data, true);
        $data['footer']          = $this->load->view('templates/admin_footer', $data, true);

        $this->load->view('profile/update_form',$data); 
    }



    public function product_delete($product_id) {
        $product_name = $this->profile->delete_product($product_id);
        $this->session->set_flashdata('success', $product_name . ' was successfully deleted');
        $this->profile->insert_logs('Delete Products ' . $product_name);
        redirect(site_url('profile/location/products'));
    }



    public function service_delete($service_id) {
        $service_name = $this->profile->delete_service($service_id);
        $this->session->set_flashdata('success', $service_name . ' was successfully deleted');
        $this->profile->insert_logs('Delete Products ' . $service_name);
        redirect(site_url('profile/location/services'));
    }



    public function personnels_delete($personnel_id) {
        $this->profile->delete_personnel($personnel_id);
        $this->session->set_flashdata('success',' Personnel successfully Deleted'); 
        redirect(site_url('profile/location/personnels'));
    }



    public function products() { 
        $this->profile->truncate_temp_images();
        $data['page']            = 'profile';
        $data['company_profile'] = $this->profile->get_company_profile(); 
        $data['users_list']      = $this->profile->get_user();
        $data['products_list']   = $this->profile->get_products();

        $data['header']          = $this->load->view('templates/admin_header', $data, true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data, true);
        $data['alert']           = $this->load->view('templates/alert', $data, true);
        $data['footer']          = $this->load->view('templates/admin_footer', $data, true);
 
        $this->load->view('profile/products_list', $data); 
    }



    public function services() {
        $this->profile->truncate_temp_images();
        $data['page']            = 'profile';
        $data['company_profile'] = $this->profile->get_company_profile(); 
        $data['users_list']      = $this->profile->get_user();
        $data['services_list']   = $this->profile->get_services(); 

        $data['header']          = $this->load->view('templates/admin_header', $data, true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data, true);
        $data['alert']           = $this->load->view('templates/alert', $data, true);
        $data['footer']          = $this->load->view('templates/admin_footer', $data, true);
        
        $this->load->view('profile/services_list', $data);   
    }




    public function personnels() {
        $this->profile->truncate_temp_images();
        $data['page']            = 'profile';
        $data['company_profile'] = $this->profile->get_company_profile(); 
        $data['users_list']      = $this->profile->get_user();
        $data['personnels_list'] = $this->profile->get_personnels(); 

        $data['header']          = $this->load->view('templates/admin_header', $data, true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data, true);
        $data['alert']           = $this->load->view('templates/alert', $data, true);
        $data['footer']          = $this->load->view('templates/admin_footer', $data, true);
        $data['modal']           = $this->load->view('profile/modal', $data, true);
 
        $this->load->view('profile/personnels_list', $data); 
    }



    public function do_upload($event = "add") {
        // if event == 0 it is add if not it is update and get event as ID
        $config['upload_path']          = './uploads/personnels/';
        $config['allowed_types']        = 'gif|jpg|png';  
        $this->load->library('upload', $config);
        if ( !$this->upload->do_upload('image') && !$this->upload->do_upload('image1') && empty($this->input->post('fn')))  {
            $this->session->set_flashdata('failed', 'image properties invalid'); 
            redirect(site_url('profile'));
        } 
        else {
            $upload_data = $this->upload->data(); 
            $personnel_image = $upload_data['file_name']; 
            if ($event == "add") {
                $this->personnels_add($personnel_image);
            }  
            else {  
                $this->personnels_update($personnel_image);
            }
        }  
    }



    public function personnels_update($image) {
        $name = $this->profile->personnels_update($image);
        $this->session->set_flashdata('success',' Personnel '.$name.'successfully Updated'); 
        $this->profile->insert_logs('Update Personnel ' . $name); 
        redirect(site_url('profile/location/personnels'));
    }



    public function personnels_add($image) {
        $name = $this->profile->personnels_add($image);
        $this->session->set_flashdata('success', 'Personnel '. $name . ' successfully Added');
        $this->profile->insert_logs('Add Personnel ' . $name);
        $this->profile->insert_notif('Add Personnel ' . $name);
        redirect(site_url('profile/location/personnels'));
    }



    public function product_image_delete($image_id) {
        $product_id = $this->profile->product_image_delete($image_id);
        $this->session->set_flashdata('success',' Images successfully Deleted');
        redirect(site_url('products/product_view/'.$product_id));
    }



    public function service_image_delete($image_id) {
        $service_id = $this->profile->service_image_delete($image_id);
        $this->session->set_flashdata('success',' Images successfully Deleted');
        redirect(site_url('services/service_view/'.$service_id));
    }



    public function view_product($product_id) {
        $this->profile->truncate_temp_images();
        $data['page']            = 'profile';
        $data['company_profile'] = $this->profile->get_company_profile();
        $data['users_list']      = $this->profile->get_user();
        $data['product_info']    = $this->profile->get_products($product_id); 

        $data['header']          = $this->load->view('templates/admin_header', $data, true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data, true);
        $data['alert']           = $this->load->view('templates/alert', $data, true);
        $data['footer']          = $this->load->view('templates/admin_footer', $data, true);
 
        $this->load->view('profile/product_view', $data); 
    }



    public function view_service($service_id) {
        $this->profile->truncate_temp_images();
        $data['page']            = 'profile';
        $data['company_profile'] = $this->profile->get_company_profile();
        $data['users_list']      = $this->profile->get_user();
        $data['service_info']    = $this->profile->get_services($service_id); 

        $data['header']          = $this->load->view('templates/admin_header', $data, true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data, true);
        $data['alert']           = $this->load->view('templates/alert', $data, true);
        $data['footer']          = $this->load->view('templates/admin_footer', $data, true);

        $this->load->view('profile/service_view', $data); 
    }



    public function change($legend) {
        $this->profile->change_profile($legend);
        $this->session->set_flashdata('success', $legend . ' was Successfully Updated');
        $this->profile->insert_logs($legend . ' was Update ');
        $this->profile->insert_notif('Update Comapny ' . $legend);
        redirect(site_url('profile'));
    }



    public function delete($id) {
        if($data = $this->profile->delete($id)) {
            $this->session->set_flashdata('success','Successfully Deleted the '. $data['legend'] . ' of the company'); 
            $this->profile->insert_logs('Deleted The ' . $data['legend']);
        }
        redirect(site_url('profile'));
    }



    public function add() {
        if($data = $this->profile->add()) {
            $this->session->set_flashdata('success','Successfully Added the '. $data['legend'] . ' of the company'); 
            $this->profile->insert_notif('Added The ' . $data['legend'] .' of the company');
            $this->profile->insert_logs('Added The ' . $data['legend']);
        }
        redirect(site_url('profile'));
    }



    public function update() { 
        if($data = $this->profile->update()) {
            $this->session->set_flashdata('success','Successfully Updated the '. $data['legend'] . ' of the company'); 
            $this->profile->insert_logs('Updated The ' . $data['legend']);
        }
        redirect(site_url('profile'));
    }



    public function show_profile() {
        $data = $this->profile->show_profile();
        echo json_encode($data);
    }



    public function get_profile($id = 'profile') {
        $data['page']            = 'profile';
        $data['company_profile'] = $this->profile->get_company_profile(); 
        $data['users_list']      = $this->profile->get_user();
        $data['personnels_list'] = $this->profile->get_personnels(); 
        $data['services_list']   = $this->profile->get_services(); 
        $data['products_list']   = $this->profile->get_products(); 

        $data['profile']         = $this->load->view('profile/company_profile', $data , true);
        $data['personnels']      = $this->load->view('profile/personnels_list', $data , true);
        $data['services']        = $this->load->view('profile/services_list', $data , true);
        $data['products']        = $this->load->view('profile/products_list', $data , true);
        $data['active']          = $id;

        $data['header']          = $this->load->view('templates/admin_header', $data, true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data, true);
        $data['alert']           = $this->load->view('templates/alert', $data, true);
        $data['footer']          = $this->load->view('templates/admin_footer', $data, true);
        $data['modal']           = $this->load->view('profile/modal', $data, true);
        
        $this->load->view('profile/list', $data); 
    } 




    public function upload_products() {
        $targetDir = "./uploads/products/";
        $image = $_FILES['file']['name'];
        $targetFile = $targetDir.$image;
        move_uploaded_file($_FILES['file']['tmp_name'],$targetFile);
        $this->profile->upload_products($image); 
    }



    public function upload_services() {
        $targetDir = "./uploads/services/";
        $image = $_FILES['file']['name'];
        $targetFile = $targetDir.$image;
        move_uploaded_file($_FILES['file']['tmp_name'],$targetFile);

        $this->profile->upload_services($image); 
    }



    public function add_product_images() {
        $this->profile->add_product_images();
        $this->session->set_flashdata('success','New Images successfully Added'); 
        $this->profile->insert_notif('Added New Products ' . $products);
        $this->profile->insert_logs('Add Products ' . $products);
        redirect(site_url('products/product_view/'.$this->input->post('product_id')));
    }



    public function add_service_images() {
        $this->profile->add_service_images();
        $this->session->set_flashdata('success','New Images successfully Added');
        $this->profile->insert_notif('Added New Services ' . $legend);
        $this->profile->insert_logs('Add Products ' . $products);
        redirect(site_url('services/service_view/'.$this->input->post('service_id')));
    }


    // public function add_images($product_id) { 
    // yung event ay kung mag aad pa ng picture
    //        $targetDir = "./uploads/products/";
    //        $image = $_FILES['file']['name'];
    //        $targetFile = $targetDir.$image;
    //        move_uploaded_file($_FILES['file']['tmp_name'],$targetFile);

    //        $this->profile->upload_products($image, "add"); 

    // }


    public function add_form_products() {
        $data['page']            = 'profile';
        $data['company_profile'] = $this->profile->get_company_profile();
        $data['users_list']      = $this->profile->get_user();

        $data['header']          = $this->load->view('templates/admin_header', $data, true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data, true); 
        $data['footer']          = $this->load->view('templates/admin_footer', $data, true); 
         
        $this->load->view('profile/add_form_products', $data); 
    }




    public function add_form_services() {
        $data['page']            = 'profile';
        $data['company_profile'] = $this->profile->get_company_profile();
        $data['users_list']      = $this->profile->get_user();

        $data['header']          = $this->load->view('templates/admin_header', $data, true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data, true); 
        $data['footer']          = $this->load->view('templates/admin_footer', $data, true); 
 
        $this->load->view('profile/add_form_services', $data); 
    }




    public function save_products() {
        $products = $this->profile->add_products();
        $this->session->set_flashdata('success', $products . ' was successfully save');
        $this->profile->insert_logs('Add Products ' . $products);
        $this->profile->insert_notif('New Products' . $products); 
        redirect(site_url('profile/location/products'));
    }



    public function save_services() {
        $services = $this->profile->add_services();
        $this->session->set_flashdata('success', $services . ' was successfully save');
        $this->profile->insert_logs('Add Services ' . $services);
        $this->profile->insert_notif('New Services' . $services); 
        redirect(site_url('profile/location/services'));
   }
}