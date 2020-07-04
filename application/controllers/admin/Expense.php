<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Expense extends CI_Controller {

    public function __construct()  {
        parent::__construct(); 
        if (is_null($this->session->id)) {redirect(site_url('login'));}
        $this->load->model('admin/expense_model','expense');     
        $this->load->model('admin/count_model','count');  
        $this->count->count_data();
    }

 

    // public function profit($key) {
    //     $data['company_profile'] = $this->expense->get_company_profile(); 
    //     $data['users_list'] = $this->expense->get_user();

    //     if (!empty($this->input->post('year'))) {
    //         $year = $this->input->post('year');
    //     } 
    //     else {
    //         $year = date('Y');
    //     }
    //     $data['year_selected'] = $year;
    //     for ($month=1; $month <=12 ; $month++) { 
    //         $m = $month ;
    //         if ($month<=9) {
    //             $m = '0'. $month;
    //         }  
    //         $data['m'.$month] = $this->expense->get_total_profit_monthly($m , $year); 
    //     } 
    //     $data['print']        = 1;
    //     $data['header']       = $this->load->view('templates/print_header', $data ,true); 
    //     $data['admin_header'] = $this->load->view('templates/admin_header' , $data , true); 
    //     $data['admin_footer'] = $this->load->view('templates/admin_footer' , $data  , true);
    //     $data['chart']        = $this->load->view('profit/bar_chart', $data , true); 

    //     $this->load->view('profit/view', $data);
    // }



    public function print_table()  {
        $data['page']            = 'stats';
        $data['company_profile'] = $this->expense->get_company_profile();
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
            $data['m'.$month] = $this->expense->get_total_cost_monthly($m , $year, 'tbl_materialexpenses');
            $data['w'.$month] = $this->expense->get_total_cost_monthly($m , $year, 'tbl_workerexpenses');
            $data['t'.$month] = $this->expense->get_total_cost_monthly($m , $year, 'tbl_transportexpenses');
        }
        $data['print']        = 1;
        $data['header']       = $this->load->view('templates/print_header', $data ,true);
        $data['admin_header'] = $this->load->view('templates/admin_header' , $data , true);  
        $data['admin_footer'] = $this->load->view('templates/admin_footer' , $data  , true); 

        $this->load->view('expenses/print_table', $data);
    }



    public function print_graph()  {
        $data['company_profile'] = $this->expense->get_company_profile();  
        if (!empty($this->input->post('year'))) {
            $year = $this->input->post('year');
        } 
        else {
            $year = date('Y');
        }
        $data['year_selected'] = $year;
        for ($month = 1; $month <= 12 ; $month++) { 
            $m = $month ;
            if ($month <= 9) {
                $m = '0'. $month;
            }  
            $data['m'.$month] = $this->expense->get_total_cost_monthly($m , $year, 'tbl_materialexpenses');
            $data['w'.$month] = $this->expense->get_total_cost_monthly($m , $year, 'tbl_workerexpenses');
            $data['t'.$month] = $this->expense->get_total_cost_monthly($m , $year, 'tbl_transportexpenses');
        }  
        $data['print']        = 1;
        $data['header']       = $this->load->view('templates/print_header', $data ,true); 
        $data['admin_header'] = $this->load->view('templates/admin_header' , $data , true); 
        $data['admin_footer'] = $this->load->view('templates/admin_footer' , $data  , true);
        $data['chart']        = $this->load->view('expenses/bar_chart', $data , true); 

        $this->load->view('expenses/print_graph', $data);
    }



    public function view($key)  {
        $data['page']            = 'stats';
        $data['company_profile'] = $this->expense->get_company_profile(); 
        $data['users_list'] = $this->expense->get_user();
        $data['type'] = $key; 

        // FOR THE CHART
        if ($key == "monthly") {
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
                $data['m'.$month] = $this->expense->get_total_cost_monthly($m , $year, 'tbl_materialexpenses');
                $data['w'.$month] = $this->expense->get_total_cost_monthly($m , $year, 'tbl_workerexpenses');
                $data['t'.$month] = $this->expense->get_total_cost_monthly($m , $year, 'tbl_transportexpenses');
            }  
        }    
        $data['print']         = 1;
        $data['header']        = $this->load->view('templates/print_header', $data ,true);
        $data['admin_header']  = $this->load->view('templates/admin_header' , $data , true);
        $data['admin_sidenav'] = $this->load->view('templates/admin_sidenav' , $data , true); 
        $data['admin_footer']  = $this->load->view('templates/admin_footer' , $data  , true);
        $data['chart']         = $this->load->view('expenses/bar_chart', $data , true); 

        $this->load->view('expenses/view', $data);
    }





    public function print_expenses($what) {
        $data['company_profile'] = $this->expense->get_company_profile(); 
        $data['entry']           = $what;
        $data['quot_info']       = $this->expense->get_quot_info(); 

        $data['material_info']   = $this->expense->get_material($what);
        $data['worker_info']     = $this->expense->get_worker($what);
        $data['transpo_info']    = $this->expense->get_transpo($what);
        $data['project_info']    = $this->expense->get_list();
        $data['print']           = 1;
        $data['header']          = $this->load->view('templates/print_header', $data ,true);
        $data['admin_header']    = $this->load->view('templates/admin_header', $data ,true);
        $data['admin_footer']    = $this->load->view('templates/admin_footer', $data ,true);

        $this->load->view('expenses/print_expenses', $data);
    }



    public function add_material() {
        $m_data = $this->expense->add_material(); 
        $this->session->set_flashdata('success', $m_data['quantity'] . ' ' . $m_data['unit']  . ' of ' . 
        $m_data['materialName'] . ' was successfully  as material expense .     cost: ' . $m_data['cost']); 

        $this->expense->insert_logs('Added '.$m_data['quantity'] . ' ' . $m_data['unit']  . ' of ' . 
        $m_data['materialName'] . ' to project ' . $m_data['project_name']);

        $this->expense->insert_notif('Added '.$m_data['quantity'] . ' ' . $m_data['unit']  . ' of ' . 
        $m_data['materialName'] . ' to project ' . $m_data['project_name']); 

        redirect(site_url('project/project_view/'.$m_data['projectID']));
    }



    public function update_worker() { 
        $update_data = $this->expense->update_worker();
        $this->session->set_flashdata('success', $update_data['quantity'] . ' '.  $update_data['workerPosition'] .
        ' was successfully updated.     cost: ' . $update_data['cost']); 

        $this->expense->insert_logs('Updated '.$update_data['quantity'] . ' ' . $update_data['workerPosition'] . 
        ' to project ' . $update_data['projectName']);

        $this->expense->insert_notif('Updated '.$update_data['quantity'] . ' ' . $update_data['workerPosition'] . 
        ' to project ' . $update_data['projectName']);

        redirect(site_url('project/project_view/'.$update_data['projectID']));
    }



    public function update_material() {
        $update_data = $this->expense->update_material();
        $this->session->set_flashdata('success', $update_data['quantity'] . ' ' . $update_data['unit']  . ' of ' . 
        $update_data['materialName'] . ' was successfully updated as material expense .cost: ' . $update_data['cost']);

        $this->expense->insert_logs('Updated '.$update_data['quantity'] . ' ' . $update_data['unit']  . ' of ' . 
        $update_data['materialName'] . ' to project ' . $update_data['projectName']);

        $this->expense->insert_notif('Updated '.$update_data['quantity'] . ' ' . $update_data['unit']  . ' of ' . 
        $update_data['materialName'] . ' to project ' . $update_data['projectName']);

        redirect(site_url('project/project_view/'.$update_data['projectID']));
    }




    public function update_transpo() {
        $update_data = $this->expense->update_transpo();
        $this->session->set_flashdata('success','Transportation from ' .$update_data['transportFrom']. ' to ' . 
        $update_data['transportTo']. ' was successfully udapted.     cost: ' . $update_data['cost']); 

        $this->expense->insert_logs('Updated Transportation from '.$update_data['transportFrom'] . ' to ' . $update_data['transportTo'] . ' to project ' . $update_data['projectName']); 

        redirect(site_url('project/project_view/'.$update_data['projectID'])); 
    }

    


    public function add_worker() {
        $w_data = $this->expense->add_worker();
        $this->session->set_flashdata('success', $w_data['quantity'] . ' ' . $w_data['workerPosition']  . 
        ' was successfully added as worker Expense.       cost: ' . $w_data['cost']); 

        $this->expense->insert_logs("Added" . $w_data['quantity'] . " " . $w_data['workerPosition']  . 
        " as worker Expense." .  " to project " . $w_data['project_name']);

        $this->expense->insert_notif("Added " . $w_data['quantity'] . " " . $w_data['workerPosition']  . 
        " as worker Expense." .  " to project " . $w_data['project_name']);

        redirect(site_url('project/project_view/'.$w_data['projectID']));
    }



    public function add_transpo() {
        $t_data = $this->expense->add_transpo();
        $this->session->set_flashdata('success', 'transportation expense from ' . $t_data['transportFrom'] . ' to ' .
        $t_data['transportTo'] . ' was successfully added   cost: ' . $t_data['cost']); 

        $this->expense->insert_logs('Added Transportation from '.$t_data['transportFrom'] . ' to ' . $t_data['transportTo'] .  ' to project ' . $t_data['project_name']);

        $this->expense->insert_notif('Added Transportation from '.$t_data['transportFrom'] . ' to ' . 
        $t_data['transportTo'] .  ' to project ' . $t_data['project_name']);

        redirect(site_url('project/project_view/'.$t_data['projectID']));
    }




    public function delete_worker($key) {
        $del_data = $this->expense->delete_worker($key);  
        if ($del_data != 0) {
            $this->session->set_flashdata('success', 'Worker expense was successfully deleted'); 
        } 
        else {
            $this->session->set_flashdata('failed', 'Worker expense was not successfully deleted');
        }
        redirect(site_url('project/project_view/'.$this->session->project_id));
    }



    public function delete_material($key) {
        $del_data = $this->expense->delete_material($key);  
        if ($del_data != 0) {
            $this->session->set_flashdata('success', 'Material expense was successfully deleted'); 
        } 
        else {
            $this->session->set_flashdata('failed', 'Material expense was not successfully deleted');
        }
        redirect(site_url('project/project_view/'.$this->session->project_id));
    }



    public function delete_transpo($key) {
        $del_data = $this->expense->delete_transpo($key);  
        if ($del_data != 0) {
            $this->session->set_flashdata('success', 'Transportation expense was successfully deleted'); 
        } 
        else {
            $this->session->set_flashdata('failed', 'Transportation expense was not successfully deleted');
        }
        redirect(site_url('project/project_view/'.$this->session->project_id));
    }

 
       

}