<?php defined('BASEPATH') OR exit('No direct script access allowed');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;

include_once APPPATH . 'libraries/phpmailer/PHPMailer.php';
include_once APPPATH . 'libraries/phpmailer/Exception.php';
include_once APPPATH . 'libraries/phpmailer/SMTP.php';

class Account extends CI_Controller {

    public function __construct() {
        parent::__construct(); 
        if (is_null($this->session->id)) { redirect(site_url('login')); } 

        $this->load->model('admin/account_model','account');   
        $this->load->model('admin/count_model','count'); 
        $this->count->count_data(); 
    } 
       


    public function search() {
        $data = $this->account->search();
        echo json_encode($data);
    }



    public function find_leader() {
        $account_id = $this->input->post('account_id');
        $data = $this->account->find_leader($account_id);  
        echo json_encode($data); 
    }



    public function get_account($id) {
        $data['page']            = 'account';
        $data['company_profile'] = $this->account->get_company_profile(); 
        $data['users']           = $this->account->get_user($id);
        $data['users_list']      = $this->account->get_user();
        $data['id']              = $id;

        $data['header']          = $this->load->view('templates/admin_header', $data, true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data, true); 
        $data['alert']           = $this->load->view('templates/alert', $data, true);  
        $data['footer']          = $this->load->view('templates/admin_footer', $data, true);  

        $this->load->view('account/account_list', $data);
        // $this->load->view('account/delete_all'); 
    }


        
    public function add_form() {
        $data['page']            = 'account';
        $data['company_profile'] = $this->account->get_company_profile();
        $data['users_list']      = $this->account->get_user();

        $data['header']          = $this->load->view('templates/admin_header', $data, true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data, true); 
        $data['footer']          = $this->load->view('templates/admin_footer', $data, true); 

        $this->load->view('account/add_form', $data); 
    }



    public function update_form($id) {
        $data['page']            = 'account';
        $data['company_profile']  = $this->account->get_company_profile();
        $data['users_list']       = $this->account->get_user();
        $data['user_info']        = $this->account->get_user($id); 
        $data['assigned_project'] = $this->account->get_assigned_project($id); 

        $data['header']          = $this->load->view('templates/admin_header', $data, true);
        $data['sidenav']         = $this->load->view('templates/admin_sidenav', $data, true); 
        $data['alert']           = $this->load->view('templates/alert', $data, true);  
        $data['footer']          = $this->load->view('templates/admin_footer', $data, true);
 
        $this->load->view('account/update_form' , $data); 
    }



    public function save_update($account_image , $id) {
        $update =  $this->account->save_update($account_image , $id);
        if (!empty($update)) { 
            $this->session->set_flashdata('success', 'Account '.$update. ' Successfully Updated'); 
            $this->account->insert_logs('Update User Account '. $update);
        } 
        else {
            $this->session->set_flashdata('failed', 'Unable to save, try again'); 
        }
        redirect(site_url('account/update_form/'.$id));
    }


 


    public function do_upload($event = 0) {
        // if event == 0 it is add if not it is update and get event as ID
        $config['upload_path']          = './uploads/accounts/';
        $config['allowed_types']        = 'gif|jpg|png';  

        $this->load->library('upload', $config);
        if ( ! $this->upload->do_upload('image') AND empty($this->input->post('fullName')))  {
            $this->session->set_flashdata('failed', 'image properties invalid'); 
            redirect(site_url('account/get/0')); 
        } 
        else { 
            $upload_data = $this->upload->data(); 
            $account_image = $upload_data['file_name'];

            if ($event == 0) {
                $this->save($account_image);
            } 
            else {
                $this->save_update($account_image , $event);
            } 
        }
    }



    public function save($account_image) {
        $user = $this->account->save($account_image);
        if (!empty($user)) { 
            $company_name  = $this->account->get_company_profile('Company_name');
            $company_email = $this->account->get_company_profile('Company_email');
            $full_name     = $user[0]['fullName'];
            $email         = $user[0]['email'];
            $code          = $user[0]['code'];
            $url           = site_url('login');
            $mail = new PHPMailer(true);
            try {
                $mail->isSMTP();                                      // Set mailer to use SMTP
                $mail->Host        = 'smtp.gmail.com';  // Specify main and backup SMTP servers
                $mail->SMTPAuth    = true;                               // Enable SMTP authentication
                $mail->Username    = 'maronbuilders@gmail.com';                 // SMTP username
                $mail->Password    = 'longcop11';                           // SMTP password
                $mail->SMTPSecure  = 'tls';                            // Enable TLS encryption, `ssl` also accepted
                $mail->Port        = 587;       
                $mail->SMTPOptions = array(
                    'ssl' => array('verify_peer' => false,'verify_peer_name' => false, 'allow_self_signed' => true)
                );
                $mail->setFrom($company_email, $company_name);
                $mail->addAddress($email, $full_name);     // Add a recipient
                $mail->addReplyTo($company_email, $company_name);
                $mail->isHTML(true);                                  // Set email format to HTML
                $mail->Subject = 'Registration';
                $body = "<h5>Good Day Mr/Ms. " . $full_name . "!</h5>
                <br>You are now registered to Our Website.
                <br>Your password code is <strong>".$code."</strong> . 
                <br> This code can be used if you forgot your password.
                <br>You can now login by  <a href=". $url .">clicking here </a>to verify account.";
                $mail->Body    = $body;
                $mail->send();

                $this->session->set_flashdata('success', 'Account '.$full_name. ' Successfully Added'); 
                $this->account->insert_logs('Add New UserAccount '. $full_name);
                $this->account->insert_notif('Add New User Account '. $full_name);

                redirect(site_url('account/get/0'));  
            } 
            catch(Exception $e) { 
                echo 'Message could not be sent.';
                echo 'Mailer Error: ' . $mail->ErrorInfo;   
            }
        } 
        else {
            $this->session->set_flashdata('failed', 'Unable to save, try again'); 
        }
        // redirect(site_url('account/get/0')); 
    }



    public function delete($id) {
        $delete = $this->account->delete_account($id); 
        if (!empty($delete)) {
            $this->session->set_flashdata('success', 'Successfully Deleted');
            $this->logs->insert_logs($delete);
        } 
        else {
            $this->session->set_flashdata('failed', 'No data deleted');
        }
        redirect(site_url('account/get/0')); 
    } 

}