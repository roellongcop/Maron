<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Logs extends CI_Controller {

    public function __construct() {
        parent::__construct(); 
        if (is_null($this->session->id)) { redirect(site_url('login')); }  
        $this->load->model('admin/logs_model','logs');  
        $this->load->model('admin/count_model','count');

        $this->count->count_data();
    }



    public function set_id() {
        $this->get_logs($this->session->id);
    }




    // public function search() {
    //     $data = $this->logs->search();
    //     echo json_encode($data);
    // }



    public function get_logs($key) {
        if ($key != "All") { $data['user_info'] = $this->logs->get_user($key);}
        $data['page']            = 'logs';
        $data['company_profile'] = $this->logs->get_company_profile();
        $data['users_list']      = $this->logs->get_user();
        $data['logs_list']       = $this->logs->get_logs($key);
        $data['who']             = $key;

        $data['header']          = $this->load->view('templates/admin_header', $data , true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data , true);
        $data['footer']          = $this->load->view('templates/admin_footer' , $data , true); 
 
        $this->load->view('logs/logs_list', $data); 
    }



    // public function delete($key) {
    //     $this->logs->delete($key); 
    //     $this->session->set_flashdata('success', 'Successfully Deleted'); 
    //     if ($this->session->userType == "Administrator") {
    //         redirect(site_url('logs/get/All'));
    //     }
    //     redirect(site_url('logs/get/'.$this->session->id));
    // }



    // public function delete_all($key){
//         $this->logs->delete_all($key); 
//         $this->session->set_flashdata('success', 'Successfully Deleted'); 
//         redirect(site_url('logs/get/'.$this->session->id));
    // } 

}