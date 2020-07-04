<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Quotation extends CI_Controller {

    public function __construct() {
        parent::__construct();    
        if (is_null($this->session->id)) { redirect(site_url('login')); }  
        $this->load->model('admin/quotation_model','quotation');   
        $this->load->model('admin/count_model','count'); 
        $this->count->count_data(); 
        $this->quotation->delete_notif();
    } 



    public function index() {  
        $data['page']            = 'quotation';
        $data['company_profile'] = $this->quotation->get_company_profile(); 
        $data['users_list']      = $this->quotation->get_user();
        $data['all_list']        = $this->quotation->get_list();
        $data['request_list']   = $this->quotation->get_list('Request');
        $data['pending_list']    = $this->quotation->get_list('Pending');
        $data['approved_list']   = $this->quotation->get_list('Approved');

        $data['all']             = $this->load->view('quotation/all', $data , true);
        $data['request']         = $this->load->view('quotation/request', $data , true);
        $data['pending']         = $this->load->view('quotation/pending', $data , true);
        $data['approved']        = $this->load->view('quotation/approved', $data , true);
        $data['header']          = $this->load->view('templates/admin_header', $data , true); 
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data , true); 
        $data['alert']           = $this->load->view('templates/alert', $data , true); 
        $data['footer']          = $this->load->view('templates/admin_footer', $data , true); 
        $data['modal']           = $this->load->view('quotation/modal', $data , true); 

        $this->load->view('quotation/list', $data); 
    }



    public function approved_quotation() {
        $this->quotation->approved_quotation();
    }
      


    public function delete_confirmation() {      
        $data = $this->quotation->delete_confirmation();
        echo json_encode($data);
    }



    public function view($quotation_id) {
        $data['page']            = 'quotation';
        $data['company_profile'] = $this->quotation->get_company_profile();
        $data['quotation_info']  = $this->quotation->get_full_info($quotation_id);
        $data['print']           = 1;

        $data['header']          = $this->load->view('templates/print_header', $data ,true);
        $data['admin_header']    = $this->load->view('templates/admin_header', $data , true); 
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data , true); 
        $data['footer']          = $this->load->view('templates/admin_footer', $data , true);
 
        $this->load->view('quotation/view', $data); 
    }

   


    public function update_form($quotation_id) {
        $this->session->quotation_id = $quotation_id;
        $data['page']            = 'quotation';
        $data['company_profile'] = $this->quotation->get_company_profile();
        $data['quotation_info']  = $this->quotation->get_full_info($quotation_id);
        $data['users_list']      = $this->quotation->get_user();
        $data['client_list']     = $this->quotation->get_client(); 

        $data['header']          = $this->load->view('templates/admin_header', $data , true); 
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data , true); 
        $data['alert']           = $this->load->view('templates/alert', $data , true); 
        $data['footer']          = $this->load->view('templates/admin_footer', $data , true);
 
        $this->load->view('quotation/update_form', $data); 
    }


    public function delete($key)  { 
        $this->quotation->delete_quot($key);
        $this->session->set_flashdata('success', 'Quotation  Deleted Successfully');
        redirect(site_url('quotation'));
    }

     

    public function get_client()  {
        $client_id = $this->input->post('client_id');
        $data = $this->quotation->get_client($client_id); 
        echo json_encode($data); 
    }



    public function update_bill()  {
        $this->quotation->update_bill();
        $this->show_bill();
    }



    public function add_bill()  {
        $this->quotation->add_bill();
        $this->show_bill();
    }



    public function show_bill() {
        $bill          = $this->quotation->get_bill();
        $title_list    = $this->quotation->get_bill_title(1);
        $str           = '';  
        $material_cost = 0;
        $labor_cost    = 0;
        $gas_cost      = 0;
        $toll_cost     = 0;

        $grand_total   = 0;
        $item_no       = 0;  
        $title_no      = 'A';   
        $str .="<table class='table table-bordered'>";
        $str .="<thead>";
        $str .="<tr>";
        $str .="<th rowspan='2' class='center'>ITEM NO</th>";
        $str .="<th rowspan='2' class='center'>DESCRIPTION</th>";
        $str .="<th rowspan='2' class='center'>QTY</th>";
        $str .="<th rowspan='2' class='center'>UNIT</th>";
        $str .="<th colspan='3'  class='center'>UNIT COST</th>";
        $str .="<th rowspan='2' class='center'>TOTAL COST</th>";
        $str .="<th rowspan='2' class='center'>ACTION</th>";
        $str .="</tr>";
        $str .="<tr>";
        $str .="<th class='center'>MATERIALS</th>";
        $str .="<th class='center'>LABOR</th>";
        $str .="<th class='center'>TOTAL</th>";
        $str .="</tr>";
        $str .="</thead>  ";
        $str .="<tbody>"; 
        if ($bill != 0) {   
            foreach ($title_list as $t_list) { 
            $item_no = 1;
            // $grand_total += $b->total;
                foreach ($bill as $b) {  
                    if ($b->title == $t_list->title_name)  {
                        if ($b->title == 'Transportation') {
                            $gas_cost += $b->materials;
                            $toll_cost += $b->labor;
                        }
                        else {
                            $material_cost += $b->materials;
                            $labor_cost += $b->labor; 
                        }
                        if ($item_no == 1)  {
                            $str .= "<tr>";
                            $str .= "<td><b>".$title_no."</b></td>";
                            if ($t_list->title_name == 'Transportation') {
                                $str .= "<td colspan='3'><b>".$t_list->title_name."</b></td>";
                                $str .= "<th>Fuel</th>";
                                $str .= "<th>Toll Gates</th>";
                            }
                            else {
                                $str .= "<td colspan='8'><b>".$t_list->title_name."</b></td>";
                            } 
                            $str .= "</tr>";
                            $title_no ++ ;
                        }
                        $str .= "<tr>";
                        $str .= "<td>". $item_no ."</td>";
                        $str .= "<td>". $b->description ."</td>";
                        $str .= "<td>". $b->quantity ."</td>";
                        $str .= "<td>".  $b->unit ."</td>";
                        $str .= "<td>". $b->materials ."</td>";
                        $str .= "<td>".  $b->labor ."</td>";
                        $str .= "<td>".  $b->total ."</td>";
                        $str .= "<td>".  $b->total ."</td>";  
                        $str .= "<td><a class='btn btn-danger' data-toggle='modal' data-target='#del_bill".$b->bill_id."'><i class='fa fa-trash'></i></a>"; 
                        $str .= "<a onclick='edit_bill(".$b->bill_id.")' class='btn btn-warning' data-toggle='modal' data-target='#update_bill'><i class='fa fa-pencil'></i></a></td>"; 
                        $str .= "</tr>";
                        $grand_total += $b->total; 
                        $item_no ++ ; 
                        // MODAL PARA SA DELETE CONFIRMATION 
                        $str .= "<div id='del_bill".$b->bill_id."' class='modal fade' role='dialog'>";
                        $str .= "<div class='modal-dialog modal-sm'>";
                        $str .= "<div class='modal-content'>";
                        $str .= "<div class='modal-header' style='background-color:". $this->session->color. ";color:white;'; >";
                        $str .= "<button type='button' class='close' data-dismiss='modal'>&times;</button>";
                        $str .= "<h4>";
                        $str .= "<i class='fa fa-trash'></i>";
                        $str .= "Delete Bill Entry";
                        $str .= "</h4>";
                        $str .= "</div>";
                        $str .= "<div class='modal-body'>";
                        $str .= "<h6>Are you sure you want delete " .$b->description ."</h6>";
                        $str .= "</div>";
                        $str .= "<div class='modal-footer'>";
                        $str .= "<a onclick='delete_bill(".$b->bill_id.")' class='btn btn-primary btn-block btn-sm' data-dismiss='modal'>";
                        $str .= "<i class='fa fa-check'></i> Yes</a>";
                        $str .= "</div>";    
                        $str .= "</div>";
                        $str .= "</div>";
                        $str .= "</div>"; 
                    }
                }  
            }
        }
        $str .= "<tr>";
        $str .= "<td colspan='7'><b>Grand Total</b></td>";
        $str .= "<td colspan='2'>".  $grand_total ."</td>";
        $str .= "</tr>"; 
        $str .="</tbody>";  
        $str .="</table>"; 
        if ($bill == 0)  { 
            $bill_data['bill_info'] =''; 
        } 
        else  {
            $bill_data['bill_info'] = $this->get_bill_info();
        }
        $bill_data['table'] = $str;
        $bill_title = $this->quotation->get_bill_title(1);  
        $title = '';
        foreach ($bill_title as $t) {
            $title .= "<option>".$t->title_name."</option>";
        }
        $bill_data['title'] = $title;
        $bill_data['material_cost'] = $material_cost;
        $bill_data['labor_cost'] = $labor_cost;

        $bill_data['gas_cost'] = $gas_cost;
        $bill_data['toll_cost'] = $toll_cost;
        echo json_encode($bill_data); 
    }



    public function get_bill_info() {
        $bill          = $this->quotation->get_bill();
        $title_list    = $this->quotation->get_bill_title(1);
        $str           = '';  
        $material_cost = 0;
        $labor_cost    = 0;
        $gas_cost      = 0;
        $toll_cost     = 0;
        $grand_total   = 0;
        $item_no       = 0;  
        $title_no      = 'A'; 
 
        $str .="<table class='table' style='border: 1px solid grey;'>";
        $str .="<thead>";
        $str .="<tr style='border: 1px solid grey;'>";
        $str .="<th style='border: 1px solid grey;' rowspan='2' class='center'>ITEM NO</th>";
        $str .="<th style='border: 1px solid grey;' rowspan='2' class='center'>DESCRIPTION</th>";
        $str .="<th style='border: 1px solid grey;' rowspan='2' class='center'>QTY</th>";
        $str .="<th style='border: 1px solid grey;' rowspan='2' class='center'>UNIT</th>";
        $str .="<th style='border: 1px solid grey;' colspan='3'  class='center'>UNIT COST</th>";
        $str .="<th style='border: 1px solid grey;' rowspan='2' class='center'>TOTAL COST</th>"; 

        $str .="</tr>";
        $str .="<tr style='border: 1px solid grey;'>";
        $str .="<th style='border: 1px solid grey;' class='center'>MATERIALS</th>";
        $str .="<th style='border: 1px solid grey;' class='center'>LABOR</th>";
        $str .="<th style='border: 1px solid grey;' class='center'>TOTAL</th>";
        $str .="</tr>";
        $str .="</thead>  ";
        $str .="<tbody>"; 
        if ($bill != 0)  {   
            foreach ($title_list as $t_list) { 
                $item_no = 1;
                foreach ($bill as $b) { 
                    if ($b->title == $t_list->title_name)  {
                        if ($t_list->title_name == 'Transportation') {
                            $gas_cost += $b->materials;
                            $toll_cost += $b->labor;
                        }

                        if ($item_no == 1) {
                            $str .= "<tr style='border: 1px solid grey;'>";
                            $str .= "<td style='border: 1px solid grey;'><b>".$title_no."</b></td>";
                            if ($t_list->title_name == 'Transportation')  {
                                $str .= "<td style='border: 1px solid grey;' colspan='3'><b>".$t_list->title_name."</b></td>";
                                $str .= "<th style='border: 1px solid grey;'>Fuel</th>";
                                $str .= "<th style='border: 1px solid grey;' colspan='3'>Toll Gates</th>";
                            }
                            else {
                                $str .= "<td style='border: 1px solid grey;' colspan='8'><b>".$t_list->title_name."</b></td>";
                                $material_cost += $b->materials;
                                $labor_cost += $b->labor; 
                            } 
                            $str .= "</tr>";
                            $title_no ++ ;
                        }
                        $str .= "<tr>";
                        $str .= "<td style='border: 1px solid grey;'>". $item_no ."</td>";
                        $str .= "<td style='border: 1px solid grey;'>". $b->description ."</td>";
                        $str .= "<td style='border: 1px solid grey;'>". $b->quantity ."</td>";
                        $str .= "<td style='border: 1px solid grey;'>".  $b->unit ."</td>";
                        $str .= "<td style='border: 1px solid grey;'>". $b->materials ."</td>";
                        $str .= "<td style='border: 1px solid grey;'>".  $b->labor ."</td>";
                        $str .= "<td style='border: 1px solid grey;'>".  $b->total ."</td>";
                        $str .= "<td style='border: 1px solid grey;'>".  $b->total ."</td>";   
                        $str .= "</tr>";
                        $grand_total += $b->total; 
                        $item_no ++ ; 
                    }
                }  
            }
        }
        $str .= "<tr style='border: 1px solid grey;'>";
        $str .= "<td style='border: 1px solid grey;' colspan='7'><b>Grand Total</b></td>";
        $str .= "<td style='border: 1px solid grey;' colspan='2'>".  $grand_total ."</td>";
        $str .= "</tr>"; 
        $str .="</tbody>";  
        $str .="</table>"; 
        return $str;  
   }



    public function find_bill($bill_id) {
        $bill_data = $this->quotation->get_bill($bill_id); 
        foreach ($bill_data as $bill)  {
            $bill_info = array(
                'bill_id'     => $bill->bill_id,
                'title'       => $bill->title,
                'description' => $bill->description,
                'quantity'    => $bill->quantity,
                'unit'        => $bill->unit,
                'materials'   => $bill->materials,
                'labor'       => $bill->labor,
                'total'       => $bill->total
            );
        }
        echo json_encode($bill_info);
    }



    public function bill_delete($bill_id)  { 
        $this->quotation->bill_delete($bill_id);  
        $this->show_bill();
    }



    public function add_form() {
        $data['page']            = 'quotation';
        $data['company_profile'] = $this->quotation->get_company_profile();
        $data['users_list']      = $this->quotation->get_user();
        $data['client_list']     = $this->quotation->get_client();  
        $data['bill_list']       = $this->quotation->get_bill();  
        $data['bill_title']      = $this->quotation->get_bill_title();  

        $data['header']          = $this->load->view('templates/admin_header', $data , true); 
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data , true); 
        $data['alert']           = $this->load->view('templates/alert', $data , true); 
        $data['footer']          = $this->load->view('templates/admin_footer', $data , true);
        $data['modal']          = $this->load->view('quotation/modal', $data , true);

        $this->load->view('quotation/add_form', $data);  
    }



    public function save_update() {
        $name = $this->quotation->save_update();
        if (!empty($name)) {
            $this->session->set_flashdata('success', 'Quotation'.$name.' Updated Successfully');
            $this->quotation->insert_logs('Update Quotation ' . $name);
            $this->quotation->insert_notif('Update Quotation ' . $name);
        } 
        else {
            $this->session->set_flashdata('failed', 'Unable to save check inputs');
        }
        redirect(site_url('quotation'));
    }



    public function save() { 
        $name = $this->quotation->save();
        if (!empty($name)) {
            $this->session->set_flashdata('success', 'Quotation'.$name.' Added Successfully');
            $this->quotation->insert_logs('Add New Quotation ' . $name);
            $this->quotation->insert_notif('Add New Quotation ' . $name);
        } 
        else {
            $this->session->set_flashdata('failed', 'Unable to save check inputs');
        }
        redirect(site_url('quotation'));
    }



    public function print_quotation($quotation_id = 0) {
        $data['page']            = 'quotation';
        $data['company_profile'] = $this->quotation->get_company_profile();
        $data['quotation_info']  = $this->quotation->get_full_info($quotation_id);
        $data['print']           = 1;

        $data['header']          = $this->load->view('templates/print_header', $data ,true);
        $data['admin_header']    = $this->load->view('templates/admin_header', $data ,true);
        $data['footer']          = $this->load->view('templates/admin_footer', $data ,true); 

        $this->load->view('quotation/print', $data);
    }
 
}