<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Client extends CI_Controller {

    public function __construct() {
        parent::__construct();    
        if (is_null($this->session->id) AND $this->session->userType == 'Administrator') {redirect(site_url('login'));}
        $this->load->model('admin/client_model','client');   
        $this->load->model('admin/count_model','count'); 

        $this->count->count_data();
    }



    public function index() {
        $data['page']            = 'client';
        $data['company_profile'] = $this->client->get_company_profile();   
        $data['client_list']     = $this->client->get_list();
        $data['users_list']      = $this->client->get_user();  

        $data['header']          = $this->load->view('templates/admin_header', $data, true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data, true); 
        $data['alert']           = $this->load->view('templates/alert', $data, true);  
        $data['modal']           = $this->load->view('client/modal', $data, true);
        $data['footer']          = $this->load->view('templates/admin_footer', $data, true); 

        $this->load->view('client/client_list', $data); 
    }



    public function save() {
        $client = $this->client->save();
        if (!empty($client)) {
            $this->session->set_flashdata('success', 'Client '.$client.' Added Successfully'); 
            $this->client->insert_logs('Add New Client '. $client);
            $this->client->insert_notif('New Client '. $client);
        } 
        else {
            $this->session->set_flashdata('failed', 'Unable to save , Check Proper Input');
        }
        redirect(site_url('clients'));
    }



    public function update() {
        $update = $this->client->update();
        if (!empty($update)) {
            $this->session->set_flashdata('success', 'Client '.$update.' Updated Successfully');
            $this->logs->insert_logs('Update Client '. $update);
        } 
        else {
            $this->session->set_flashdata('failed', 'Unable to Update , Check Proper Input');
        }
        redirect(site_url('clients'));
    }



    public function delete($key) {
        $delete = $this->client->delete($key);
        if (!empty($delete)) {
            $this->session->set_flashdata('success', $delete.' client deleted Successfully');
            $this->logs->insert_logs('Delete Client '. $delete);
        } 
        else {
            $this->session->set_flashdata('failed', 'Unable to delete , Try again');
        }
        redirect(site_url('clients'));
    }

}
