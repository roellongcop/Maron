<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Inventory extends CI_Controller {

    public function __construct() {
        parent::__construct(); 
         if (is_null($this->session->id)) { redirect(site_url('login')); } 
        $this->load->model('admin/inventory_model','inventory');   
        $this->load->model('admin/count_model','count'); 
        $this->count->count_data(); 
    }



    public function print_inventory($status) { 
        $data['page']            = 'inventory';
        $data['status']          = $status;
        $data['company_profile'] = $this->inventory->get_company_profile();  
        $data['inventory_list']  = $this->inventory->get_item($status); 

        $data['header']          = $this->load->view('templates/admin_header', $data, true);
        $data['footer']          = $this->load->view('templates/admin_footer', $data, true);
        $data['print_header']    = $this->load->view('templates/print_header', $data, true); 

        $this->load->view('inventory/print', $data);  
    } 



    public function save_export()  {
        $item_info = $this->inventory->save_export();

        $this->session->set_flashdata('success', 'Item  Successfully Added'); 
        $this->inventory->insert_logs('Export '. $item_info['quantity'] . ' ' . $item_info['unit'] . 
        ' of ' . $item_info['materialName'] . 'from inventory to project: ' . $item_info['projectName']);

        $this->inventory->insert_notif('Export '. $item_info['quantity'] . ' ' . $item_info['unit'] . 
        ' of ' . $item_info['materialName'] . 'from inventory to project: ' . $item_info['projectName']);
        redirect(site_url('inventory')); 
    }
    


    public function export_to_project() {
        $data = $this->inventory->export_to_project();
        echo json_encode($data);
    }



    public function index($status = "All") {
        $data['page']            = 'inventory';
        $data['company_profile'] = $this->inventory->get_company_profile(); 
        $data['project_list']    = $this->inventory->find_project(); 
        $data['users_list']      = $this->inventory->get_user();

        $data['all_list']        = $this->inventory->get_item('All');
        $data['normal_list']     = $this->inventory->get_item('Normal');
        $data['critical_list']   = $this->inventory->get_item('Critical');
        $data['exceed_list']     = $this->inventory->get_item('Exceed');
        $data['empty_list']      = $this->inventory->get_item('Empty');

        $data['all']             = $this->load->view('inventory/all' , $data , true);
        $data['normal']          = $this->load->view('inventory/normal' , $data , true);
        $data['critical']        = $this->load->view('inventory/critical' , $data , true);
        $data['exceed']          = $this->load->view('inventory/exceed' , $data , true);
        $data['empty']           = $this->load->view('inventory/empty' , $data , true);

        $data['header']          = $this->load->view('templates/admin_header', $data, true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data, true);
        $data['footer']          = $this->load->view('templates/admin_footer', $data, true);
        $data['alert']           = $this->load->view('templates/alert', $data, true);
        $data['modal']           = $this->load->view('inventory/modal', $data, true);

        $this->load->view('inventory/inventory_list', $data); 
    }



    public function add_form() { 
        $data['page']            = 'inventory';
        $data['company_profile'] = $this->inventory->get_company_profile();
        $data['users_list']      = $this->inventory->get_user();

        $data['header']          = $this->load->view('templates/admin_header', $data, true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data, true);
        $data['footer']          = $this->load->view('templates/admin_footer', $data, true);
 
        $this->load->view('inventory/add_form',$data); 
    }



    public function item_to_be_updated() {
        $data = $this->inventory->item_to_be_updated();
        echo json_encode($data);
    }



    // public function update_form() {  
    //     $data['company_profile'] = $this->inventory->get_company_profile();
    //     $data['users_list']      = $this->inventory->get_user(); 

    //     $data['header']          = $this->load->view('templates/admin_header', $data, true);
    //     $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data, true);
    //     $data['footer']          = $this->load->view('templates/admin_footer', $data, true);
        
    //     $this->load->view('inventory/update_form',$data); 
    // }
     


    public function save() {
        $save =  $this->inventory->save();
        if (!empty($save)) {
            $this->session->set_flashdata('success', 'Item '.$save. ' Successfully Added'); 
            $this->inventory->insert_logs('Add new item ' . $save);
            $this->inventory->insert_notif('Add new item ' . $save);
        } 
        else {
            $this->session->set_flashdata('failed', 'Minimum Stock is greater than maximum stock');  
        }
            redirect(site_url('inventory')); 
    }



    public function update() {
        $this->inventory->update();
        redirect(site_url('inventory'));
    } 



    public function export() {
       $this->inventory->export(); 
       redirect(site_url('inventory'));
    }



    public function export_item_list() {
        $data = $this->inventory->export_item_list();
        echo json_encode($data);
    }



    public function save_update($id) {
        $update =  $this->inventory->update($id);
        if ($update != "") {
            $this->session->set_flashdata('success', 'Item '.$update. ' Successfully Updated'); 
            $this->inventory->insert_logs('Update item ' . $update);
        } 
        else {
            $this->session->set_flashdata('failed', 'Minimum Stock is greater than maximum stock'); 
        }
        redirect(site_url('inventory')); 
    }



    public function delete_confirm() {
        $data = $this->inventory->delete_confirm(); 
        echo json_encode($data);
    }



    public function delete() {
        $this->inventory->delete();  
        $this->session->set_flashdata('success', 'Item Successfully Deleted'); 
    } 

}