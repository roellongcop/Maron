<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Request extends CI_Controller {

    public function __construct()  {
        parent::__construct();       
        $this->load->model('admin/request_model','request');     
        $this->load->model('admin/count_model','count');   
        $this->count->count_data(); 
        if (is_null($this->session->id)) { redirect(site_url('login')); } 
    }



    public function quotation_save() {
        $name = $this->request->save();
        if (!empty($name)) {
            $this->session->set_flashdata('success', 'Quotation'.$name.' Added Successfully');
            $this->request->insert_logs('Add New Quotation to project <b>' . $name . '</b>');
            $this->request->insert_notif('Add New Quotation to project <b>' . $name . '</b>');
        } 
        else {
            $this->session->set_flashdata('failed', 'Unable to save check inputs');
        }
        redirect(site_url('quotation'));
    }



    public function disapproved($request_id) {
        $this->request->disapproved($request_id);
        redirect(site_url('request'));
    }



    public function find_quotation() {
        $quotation_id = $this->request->find_quotation();
        echo json_encode($quotation_id);
    }



    public function index() {
        $data['page']            = 'request';
        $data['users_list']      = $this->request->get_user();
        $data['company_profile'] = $this->request->get_company_profile();
        $data['all']             = $this->request->get_list();
        $data['pending']         = $this->request->get_list('0');
        $data['approved']        = $this->request->get_list(2);

        $data['header']          = $this->load->view('templates/admin_header', $data , true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data , true);
        $data['footer']          = $this->load->view('templates/admin_footer' , $data , true); 
        
        $this->load->view('request/list',$data); 
    }



    public function request_view($id) {
        $data['page']            = 'request';
        $data['users_list']      = $this->request->get_user();
        $data['company_profile'] = $this->request->get_company_profile();
        $data['request']         = $this->request->get_request($id); 
        $data['work_des']        = $this->request->get_work_des($id); 
        $data['specs']           = $this->request->get_specs($id); 

        $data['header']          = $this->load->view('templates/admin_header', $data , true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data , true);
        $data['footer']          = $this->load->view('templates/admin_footer' , $data , true); 

        $this->load->view('request/request_info',$data); 
    }



    public function create_quotation($id = '') { 
        $data['page']            = 'request';
        $data['company_profile'] = $this->request->get_company_profile();
        $data['users_list']      = $this->request->get_user(); 
        $data['client']          = $this->request->get_client($id);
        $data['bill_list']       = $this->request->get_bill();  
        $data['bill_title']      = $this->request->get_bill_title();  
        $data['request']         = $this->request->get_list($id);  
        $data['request_id']      = $id;

        $data['header']          = $this->load->view('templates/admin_header' ,$data , true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav',$data, true); 
        $data['footer']          = $this->load->view('templates/admin_footer',$data, true);
        $data['modal']           = $this->load->view('quotation/modal', $data, true);

        $this->load->view('request/create_quotation', $data);
    }


}