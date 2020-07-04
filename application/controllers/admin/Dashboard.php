<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Dashboard extends CI_Controller {

    public function __construct() { 
        parent::__construct();  
        if (is_null($this->session->id)) { redirect(site_url('login')); }
        $this->load->model('admin/dashboard_model','dashboard');   
        $this->load->model('admin/count_model','count'); 
        $this->count->count_data();  
    }



    public function index() {  
        $data['page']                     = 'dashboard';
        $data['company_profile']          = $this->dashboard->get_company_profile(); 
        $data['users_list']               = $this->dashboard->get_user();
        $data['notif_useraccounts']       = $this->dashboard->get_notif('useraccount');
        $data['notif_useraccounts_count'] = $this->dashboard->count_notif('useraccount');
        $data['notif_activitylogs']       = $this->dashboard->get_notif('activitylog');
        $data['notif_activitylogs_count'] = $this->dashboard->count_notif('activitylog');
        $data['notif_expenses']           = $this->dashboard->get_notif('expense');
        $data['notif_expenses_count']     = $this->dashboard->count_notif('expense'); 
        $data['notif_project']            = $this->dashboard->get_notif('project');
        $data['notif_project_count']      = $this->dashboard->count_notif('project'); 
        $data['notif_inventory']          = $this->dashboard->get_notif('inventory');
        $data['notif_inventory_count']    = $this->dashboard->count_notif('inventory'); 
        $data['notif_profile']            = $this->dashboard->get_notif('profile');
        $data['notif_profile_count']      = $this->dashboard->count_notif('profile');
        $data['notif_client']             = $this->dashboard->get_notif('client');
        $data['notif_client_count']       = $this->dashboard->count_notif('client');
        $data['notif_request']            = $this->dashboard->get_notif('request');
        $data['notif_request_count']      = $this->dashboard->count_notif('request');
        $data['notif_quotation']          = $this->dashboard->get_notif('quotation');
        $data['notif_quotation_count']    = $this->dashboard->count_notif('quotation');

        $data['header']          = $this->load->view('templates/admin_header' ,$data , true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav',$data, true); 
        $data['footer']          = $this->load->view('templates/admin_footer',$data, true);
        $data['modal']           = $this->load->view('dashboard/notification', $data, true);
        
        $this->load->view('dashboard/dashboard', $data); 
    }



    public function notif_delete() {
        $this->dashboard->notif_delete();
    }

}