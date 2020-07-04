<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Profit extends CI_Controller {

    public function __construct(){
        parent::__construct(); 
        if (is_null($this->session->id AND $this->session->userType == 'Administrator')) {redirect(site_url('login'));}
        $this->load->model('admin/profit_model','profit');   
        $this->load->model('admin/count_model','count'); 
        $this->count->count_data();
    }



    public function index() {
        $data['page']            = 'stats';
        $data['company_profile'] = $this->profit->get_company_profile();
        $data['users_list'] = $this->profit->get_user();
        if (!empty($this->input->post('year'))) {
            $year = $this->input->post('year');
        } 
        else {
            $year = date('Y');
        }
        $data['year_selected'] = $year;
        for ($month=1; $month <=12 ; $month++) { 
            $m = $month ;
            if ($month<=9) {
                $m = '0'. $month;
            }  
            $data['m'.$month] = $this->profit->get_total_profit_monthly($m , $year); 
        } 
        $data['print']         = 1;
        $data['header']        = $this->load->view('templates/print_header', $data ,true);
        $data['admin_header']  = $this->load->view('templates/admin_header' , $data , true); 
        $data['admin_sidenav'] = $this->load->view('templates/admin_sidenav' , $data , true); 
        $data['admin_footer']  = $this->load->view('templates/admin_footer' , $data  , true);
        $data['chart']         = $this->load->view('profit/bar_chart', $data , true);

        $this->load->view('profit/view', $data); 
    }



    public function print_profit() {
        $data['company_profile'] = $this->profit->get_company_profile(); 

        if (!empty($this->input->post('year'))) {
            $year = $this->input->post('year');
        } 
        else {
            $year = date('Y');
        }
        $data['year_selected'] = $year;
        for ($month=1; $month <=12 ; $month++) { 
            $m = $month ;
            if ($month<=9) {
                $m = '0'. $month;
            }  
            $data['m'.$month] = $this->profit->get_total_profit_monthly($m , $year); 
        } 
        $data['print']        = 1;
        $data['header']       = $this->load->view('templates/print_header', $data ,true);
        $data['admin_header'] = $this->load->view('templates/admin_header' , $data , true); 
        $data['admin_footer'] = $this->load->view('templates/admin_footer' , $data  , true);
        $data['chart']        = $this->load->view('profit/bar_chart', $data , true); 

        $this->load->view('profit/print_profit', $data);
    }
}