<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Project extends CI_Controller {

    public function __construct() {
        parent::__construct();   
        if (is_null($this->session->id)) { redirect(site_url('login')); } 
        $this->load->model('admin/project_model','project');     
        $this->load->model('admin/count_model','count');  
        $this->count->count_data(); 
    }



    public function accomplishments() {
        $targetDir = "./uploads/accomplishments/";
        $image = $_FILES['file']['name'];
        $targetFile = $targetDir.$image;
        move_uploaded_file($_FILES['file']['tmp_name'],$targetFile);

        $this->project->upload_accomplishments($image);
    }



    public function accomplishments_save() {  
        $this->project->save_accomplishments();
        $this->session->set_flashdata('success', 'Project Accomplishment Added');
        redirect(site_url('project/project_view/'.$this->session->project_id));
    }



    public function set_leader() {
        $post = $this->input->post();
        if (isset($post['leader'])) {
            $data['project_list'] = $this->project->update_leader($_POST['leader']);
            $this->session->set_flashdata('success', 'Project Leader Updated');
        } 
        else {
            $this->session->set_flashdata('failed', 'No Project Leader was selected');
        }
        redirect(site_url('project/project_view/'.$this->session->project_id));
    }



    public function index() {
        $data['page']            = 'project';
        $data['company_profile'] = $this->project->get_company_profile(); 
        $data['quot_info']       = $this->project->get_quot_info();
        $data['users_list']      = $this->project->get_user(); 

        $data['all_list']        = $this->project->get_list();
        $data['pending_list']    = $this->project->get_list('Pending');
        $data['ongoing_list']    = $this->project->get_list('Ongoing');
        $data['finished_list']   = $this->project->get_list('Finished'); 

        $data['all']             = $this->load->view('project/all', $data , true);
        $data['pending']         = $this->load->view('project/pending', $data , true);
        $data['ongoing']         = $this->load->view('project/ongoing', $data , true);
        $data['finished']        = $this->load->view('project/finished', $data , true);

        $data['header']          = $this->load->view('templates/admin_header', $data , true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data , true);
        $data['alert']           = $this->load->view('templates/alert', $data , true);
        $data['footer']          = $this->load->view('templates/admin_footer', $data , true);
 
        $this->load->view('project/list', $data); 
    }



    public function project_status() {
        $data = $this->project->project_status($this->session->project_id); 
        // $this->session->set_flashdata('success', 'Project status Updated');
        // redirect(site_url('project/project_view/'.$this->session->project_id));
        echo json_encode($data);
    }



    public function find_project() { 
        $project_info = $this->project->find_project($this->input->post('project_id'));  
        echo json_encode($project_info);
    }



    public function project_view($id) {
        $this->session->project_id    = $id;
        $data['page']                 = 'project';
        $data['key']                  = $id;
        $data['company_profile']      = $this->project->get_company_profile();
        $data['project_leader']       = $this->project->get_leader($id);
        $data['quot_info']            = $this->project->get_quot_info();
        $data['accomplishments_list'] = $this->project->get_accomplishments(); 
        $data['users_list']           = $this->project->get_user();
        $data['project_info']         = $this->project->get_list($id);

        // GETTING EXPENSES
        $data['material_expenses']    = $this->project->get_expense_list('tbl_materialexpenses',$id);
        $data['worker_expenses']      = $this->project->get_expense_list('tbl_workerexpenses',$id);
        $data['transpo_expenses']     = $this->project->get_expense_list('tbl_transportexpenses',$id);

        // GETTING TOTAL EXPENSES ON EXPENSE LIST
        $data['t_mat']                = $this->project->get_total_expense('tbl_materialexpenses',$id);
        $data['t_wor']                = $this->project->get_total_expense('tbl_workerexpenses',$id);
        $data['t_tra']                = $this->project->get_total_expense('tbl_transportexpenses',$id);

        // THROWING DATA TO VARIABLE
        $data['report']               = $this->load->view('expenses/report', $data ,true);
        $data['material']             = $this->load->view('expenses/material_list', $data ,true);
        $data['worker']               = $this->load->view('expenses/worker_list', $data ,true);
        $data['transpo']              = $this->load->view('expenses/transportation_list', $data ,true);

        $data['header']               = $this->load->view('templates/admin_header', $data , true);
        $data['sidenav']              = $this->load->view('templates/admin_sidenav', $data , true);
        $data['alert']                = $this->load->view('templates/alert', $data , true);
        $data['footer']               = $this->load->view('templates/admin_footer', $data , true);
        $data['chart']                = $this->load->view('project/pie_chart', $data , true);
        $data['modal']                = $this->load->view('project/modal', $data , true);
 
        $this->load->view('project/project_view', $data);
 
    } 



    public function delete($status) {
        $data['status'] = $status; 
        $delete = $this->project->delete($status);
        $this->session->set_flashdata('success', 'Project '.$delete.' Successfully Deleted');
        $this->project->insert_logs('delete project ' . $delete); 

        redirect(site_url('project/list'));
    }



    public function do_upload($event = 0) { 
        // if event == 0 it is add if not it is update and get event as ID
        $config['upload_path']          = './uploads/projects';
        $config['allowed_types']        = 'gif|jpg|png|pdf';  

        $this->load->library('upload', $config);
        if ( ! $this->upload->do_upload('image') AND empty($this->input->post('projectName'))) {
            $project_image = "project.png";
        } 
        else { 
            $upload_data = $this->upload->data(); 
            $project_image = $upload_data['file_name']; 
            $update =  $this->project->update_project_image($project_image);
            $this->session->set_flashdata('success', 'Project Image Successfully Updated');  
            redirect(site_url('project/project_view/'.$this->input->post('pro_id')));
        }  
    }



    public function save_update($project_image , $id) {
        $update =  $this->project->save_update($project_image , $id);
        if (!empty($update)) {
            $this->session->set_flashdata('success', 'Project '.$update. ' Successfully Updated'); 
            $this->project->insert_logs('Update  project ' . $update); 
        } 
        else {
            $this->session->set_flashdata('failed', 'Unable to Update, Check proper input try again'); 
        }
        redirect(site_url('project/project_view/'.$id));
    }



    // public function update_form($id) {
    //     $data['company_profile'] = $this->project->get_company_profile();
    //     $data['users_list']      = $this->project->get_user();
    //     $data['project_info']    = $this->project->get_list($id); 
    //     $data['client_info']     = $this->project->get_list($id); 
    //     $data['client_list']     = $this->project->get_client();
    //     if (!empty($this->input->post('search_client'))) {
    //         $data['client_info'] = $this->project->get_client($this->input->post('search_client')); 
    //     }
        
    //     $data['header']          = $this->load->view('templates/admin_header', $data , true);
    //     $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data , true);
    //     $data['footer']          = $this->load->view('templates/admin_footer', $data , true);
 
    //     $this->load->view('project/update_form', $data); 
    // }



    public function save($quo_id) {
        $name = $this->project->insert($quo_id);
        if (!empty($name)) {
            $this->session->set_flashdata('success', 'Project'.$name.' Added Successfully');
            $this->project->insert_logs('Add New Project ' . $name);
            $this->project->insert_notif('New project ' . $name); 
        } 
        else {
            $this->session->set_flashdata('failed', 'Unable to save check inputs');
        }
        redirect(site_url('projects'));
    }

}