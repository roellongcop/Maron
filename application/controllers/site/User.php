<?php defined('BASEPATH') OR exit('No direct script access allowed');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;

include_once APPPATH . 'libraries/phpmailer/PHPMailer.php';
include_once APPPATH . 'libraries/phpmailer/Exception.php';
include_once APPPATH . 'libraries/phpmailer/SMTP.php';

class User extends CI_Controller {

    public function __construct() {
        parent::__construct();    
        $this->load->model('site/user_model','user'); 
        $this->load->model('site/project_model','project'); 
    } 



    public function check_user($data) {
        $exist = $this->user->check_user($data);
        echo json_encode($exist);
    }





    public function forgot_password($user = "") {
        $data = $this->user->forgot_password($user);
        echo json_encode($data);
    }



    public function quotation_view($id) { 
        if (is_null($this->session->client_id)) {redirect(site_url('site'));}
        $data['page']       = 'project';
        $data['about']      = $this->user->get_about(); 
        $data['quotation']  = $this->user->get_quotation($id);
        $data['header']     = $this->load->view('templates/site/header' , '' , true);
        $data['footer']     = $this->load->view('templates/site/user_footer' , '' , true); 
        $data['navigation'] = $this->load->view('templates/site/user_nav' , $data , true);
        $data['modal']      = $this->load->view('site/modal' , $data  , true);

        $this->load->view('site/quotation_view', $data);
    }



    public function update_profile() {
        $this->user->update_profile(); 
    }



    public function approved_quotation($id) {
        if (is_null($this->session->client_id)) {redirect(site_url('site'));}
        $this->user->approved_quotation($id); 
        $data['page']       = 'request';
        $data['about']      = $this->user->get_about();
        $data['header']     = $this->load->view('templates/site/header' , '' , true);
        $data['footer']     = $this->load->view('templates/site/user_footer' , '' , true); 
        $data['navigation'] = $this->load->view('templates/site/user_nav' , $data , true);
        $data['modal']      = $this->load->view('site/modal' , $data , true); 

        $this->load->view('site/approved_quotation', $data);
    } 



    public function search_notif() {
        $data = $this->user->search_notif();
        echo json_encode($data);
    }



    public function notification() { 
        if (is_null($this->session->client_id)) {redirect(site_url('site'));}
        $data['page']         = 'notification';
        $data['notification'] = $this->user->get_notif();
        $data['header']       = $this->load->view('templates/site/header' , $data , true);
        $data['footer']       = $this->load->view('templates/site/user_footer' , $data , true); 
        $data['navigation']   = $this->load->view('templates/site/user_nav' , $data , true);

        $this->load->view('site/notification', $data);
    }



    public function load_profile() { 
        $response = $this->user->get_client($this->session->client_id);
        echo json_encode($response);
    } 



    public function client_profile() { 
        if (is_null($this->session->client_id)) {redirect(site_url('site'));}
        $data['page']       = 'profile';
        $data['data']       = 'load_profile()';
        $data['header']     = $this->load->view('templates/site/header' , $data , true);
        $data['footer']     = $this->load->view('templates/site/user_footer' , $data , true); 
        $data['navigation'] = $this->load->view('templates/site/user_nav' , $data , true);

        $this->load->view('site/client_profile', $data);
    }



    public function change_password() {
        if($this->user->change_password() == true){
            echo json_encode('success');
        }
        else {
            echo json_encode('failed');
        }
    }



    public function logout() {
        unset($_SESSION['client_id'] , $_SESSION['client_name']);
        session_destroy();
        redirect(site_url('site'));
    }



    public function request_done() {  
        if (is_null($this->session->client_id)) {redirect(site_url('site'));}
        $data['page']       = 'request';
        $data['header']     = $this->load->view('templates/site/header' , '' , true);
        $data['footer']     = $this->load->view('templates/site/user_footer' ,'', true); 
        $data['navigation'] = $this->load->view('templates/site/user_nav' , $data , true);

        $this->load->view('site/request_done', $data);
    }



    public function save_request() {
        $data = $this->user->save_request();
        redirect(site_url('request_done'));
    }



    public function verify($id = '') {
        if($this->user->verify($id)) {
            redirect(site_url('site'));
        }
    }



    public function register() {  
        if($client_info = $this->user->register()){ 
            $company_name  = $this->user->get_company_info('Company_name');
            $company_email = $this->user->get_company_info('Company_email');
            $client_name   = $client_info[0]['client_name'];
            $client_email  = $client_info[0]['client_email'];
            $code          = $client_info[0]['code'];
            $url           = site_url('verify/'.$client_info[0]['client_no']);
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
                    'ssl' => array('verify_peer' => false,'verify_peer_name' => false,'allow_self_signed' => true)
                );
                $mail->setFrom($company_email, $company_name);
                $mail->addAddress($client_email, $client_name);     // Add a recipient
                $mail->addReplyTo($company_email, $company_name);
                $mail->isHTML(true);                                  // Set email format to HTML
                $mail->Subject = 'Registration';
                $body = "<h5>Good Day Mr/Ms. " . $client_name . "!</h5>
                <br>You are now registered to Our Website.
                <br>Your password code is <strong>".$code."</strong> . 
                <br> This code can be used if you forgot your password.
                <br>You can now request your construction or 
                fabrication projects.<br>Just <a href=". $url .">click here </a>to verify account.";
                $mail->Body    = $body;
                $mail->send();
                redirect(site_url('site/register_ok')); 
            } 
            catch(Exception $e) {
                // redirect(site_url('site'));  
                echo 'Message could not be sent.';
                echo 'Mailer Error: ' . $mail->ErrorInfo;   
            } 
        }
        else {
            redirect(site_url('site'));
        } 
    }



    public function filter_accomplishments() {
        $data = $this->project->filter_accomplishments();
        echo json_encode($data);
    }



    public function load_accomplishments() {
        $data = $this->project->load_accomplishments();
        echo json_encode($data);
    }



    public function project_view($id = '') {   
        if (is_null($this->session->client_id)) {redirect(site_url('site'));}
        $data['page']            = 'project';
        $data['project_info']    = $this->project->get_list($id);
        $data['materials']       = $this->project->get_materials($id);
        $data['workers']         = $this->project->get_workers($id);
        $data['transportations'] = $this->project->get_transportations($id);
        $data['accomplishments'] = $this->project->get_accomplishments($id);
        $data['images']          = $this->project->get_accomplishment_images();

        $data['header']          = $this->load->view('templates/site/header' , $data , true);
        $data['footer']          = $this->load->view('templates/site/user_footer' , $data , true); 
        $data['navigation']      = $this->load->view('templates/site/user_nav' , $data , true);

        $this->load->view('site/client_project_details',$data);
    }



    public function request_info($id = '') {  
        if (is_null($this->session->client_id)) {redirect(site_url('site'));}
        $data['page']       = 'request';
        $data['request']    = $this->user->get_request($id); 
        $data['work_des']   = $this->user->get_work_des($id); 
        $data['specs']      = $this->user->get_specs($id); 

        $data['header']     = $this->load->view('templates/site/header' , $data , true);
        $data['footer']     = $this->load->view('templates/site/user_footer' , $data , true); 
        $data['navigation'] = $this->load->view('templates/site/user_nav' , $data , true);

        $this->load->view('site/request_info',$data);
    }



    public function delete_request() {
        $this->user->delete_request();
        redirect(site_url('site/request_list'));
    }



    public function load_myrequests() {
        $data = $this->user->load_myrequests();
        echo json_encode($data);
    }



    public function request_list() {
        if (is_null($this->session->client_id)) {redirect(site_url('site'));}
        $data['page']       = 'request';
        $data['data']       = 'load_myrequests()'; 
        $data['requests']   = $this->user->get_request(); 

        $data['header']     = $this->load->view('templates/site/header' , $data , true);
        $data['footer']     = $this->load->view('templates/site/user_footer' , $data , true); 
        $data['navigation'] = $this->load->view('templates/site/user_nav' , $data , true);
        $data['modal']      = $this->load->view('site/modal' , $data , true);

        $this->load->view('site/request_list',$data);
    }



    public function load_myprojects() {
        $data = $this->user->load_myprojects();
        echo json_encode($data);
    }



    public function find_myproject() {
        $data = $this->user->find_myproject();
        echo json_encode($data);
    }



    public function find_myrequest_list() {
        $data = $this->user->find_myrequest_list();
        echo json_encode($data);
    }



    public function find_myrequest() {
        $data = $this->user->find_myrequest();
        echo json_encode($data);
    }



    public function project_list() {
        if (is_null($this->session->client_id)) {redirect(site_url('site'));}
        $data['data']       = 'load_myprojects()'; 
        $data['page']       = 'project';
        $data['projects']   = $this->project->get_list();  

        $data['header']     = $this->load->view('templates/site/header' , $data , true);
        $data['footer']     = $this->load->view('templates/site/user_footer' , $data , true); 
        $data['navigation'] = $this->load->view('templates/site/user_nav' , $data , true);

        $this->load->view('site/client_project_list',$data);
    }



    public function resend_request($id) {
        $this->user->resend_request($id);
        redirect(site_url('site/request_list'));
    }



    public function delete_work_des() {
        $this->user->delete_work_des();
        $this->load_request();
    }



    public function delete_material() {
        $this->user->delete_material();
        $this->load_request();
    }



    public function delete_material_confirmation() {
        $data = $this->user->delete_material_confirmation();
        echo json_encode($data);
    }



    public function get_work_description() {
        $data = $this->user->get_work_description();
        echo json_encode($data);
    }



    public function add_preferences() {
        $this->user->add_preferences();
        $this->load_request();
    }



    public function load_preferences() {
        $data = $this->user->load_preferences();
        echo json_encode($data);
    }



    public function load_request() { 
        $data = $this->user->load_request();
        echo json_encode($data);
    }



    public function request() {  
        if (is_null($this->session->client_id)) {redirect(site_url('site'));}
        $data['data']       = 'load_request()';
        $data['page']       = 'request';
        $data['header']     = $this->load->view('templates/site/header' , $data , true);
        $data['footer']     = $this->load->view('templates/site/user_footer' , $data , true); 
        $data['navigation'] = $this->load->view('templates/site/user_nav' , $data , true);
        $data['modal']      = $this->load->view('site/modal' , $data , true);

        $this->load->view('site/request_project',$data);
    }



    public function home() {  
        if (is_null($this->session->client_id)) {redirect(site_url('site'));}
        $data['page']       = 'home';
        $data['projects']   = $this->project->get_list();  
        $data['header']     = $this->load->view('templates/site/header' , $data , true);
        $data['footer']     = $this->load->view('templates/site/user_footer' , $data , true); 
        $data['navigation'] = $this->load->view('templates/site/user_nav' , $data , true);

        $this->load->view('site/home',$data);
    }



    public function delete_project_request() {
        $this->project->delete();
        redirect('site/client_project_list');
    }



    public function accomplishments(){   
        if (is_null($this->session->client_id)) {redirect(site_url('site'));}
        $data['page']                   = 'accomplishments';
        $data['accomplishments']        = $this->project->get_accomplishments();   
        $data['accomplishments_images'] = $this->project->get_accomplishment_images();   

        $data['header']     = $this->load->view('templates/site/header' , $data , true);
        $data['footer']     = $this->load->view('templates/site/user_footer' , $data , true); 
        $data['navigation'] = $this->load->view('templates/site/user_nav' , $data , true);

        $this->load->view('site/accomplishments',$data);
    }



    public function dashboard()  {   
        if (is_null($this->session->client_id)) {redirect(site_url('site'));}
        $data['page']       = 'home';
        $data['notif']      = $this->user->get_dashboard_data();
        $data['header']     = $this->load->view('templates/site/header' , '' , true);
        $data['footer']     = $this->load->view('templates/site/user_footer' , '' , true); 
        $data['navigation'] = $this->load->view('templates/site/user_nav' , $data , true);

        $this->load->view('site/dashboard',$data);
    }



    public function login_modal() {
        $user = $this->user->login_modal();
        if ($user == true) { 
            redirect(site_url('site/home'));
        }
        else {
            redirect(site_url('site'));
        }
    }



    public function login() {
        $user = $this->user->login();
        if ($user == TRUE) { 
            redirect(site_url('site/home'));
        }
        else {
            redirect(site_url('site'));
        }
    }



    public function signup() {  
        $data['page']       = '';
        $data['header']     = $this->load->view('templates/site/header' , $data , true);
        $data['footer']     = $this->load->view('templates/site/user_footer' , $data , true); 
        $data['navigation'] = $this->load->view('templates/site/page_nav' , $data , true);

        $this->load->view('site/signup',$data); 
    }



    public function user_login() {  
        $data['page']       = '';
        $data['header']     = $this->load->view('templates/site/header' , $data , true);
        $data['footer']     = $this->load->view('templates/site/user_footer' , $data , true); 
        $data['navigation'] = $this->load->view('templates/site/page_nav' , $data , true);

        $this->load->view('site/user_login',$data); 
    }


}
