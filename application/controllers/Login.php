<?php
class Login extends CI_Controller {

    public function __construct() {
        parent::__construct(); 
        $this->load->model('admin/account_model','account');
    }



    public function login() { 
        $login = $this->account->login(); 
        if ($login == "success" ) {
            $user_info = $this->account->check_user();
            foreach ($user_info as $user) {
                $this->session->inCharge  = $user['fullName'];
                $this->session->userType  = $user['userType'];
                $this->session->id        = $user['id'];
                $this->session->image     = $user['imagePath'];
                $this->session->expenseID = 0;
                $this->session->signIn    = "true";
                $this->session->email     = $user['email']; 
                $this->session->color     = '#3c8dbc';
            }
            $data['users_list'] = $this->account->get_user(); 
            redirect(site_url('dashboard'));
        } 
        else {
            $this->session->set_flashdata('login_failed ', ' Log In Failed');
            redirect(site_url('login'));
        }
    }


    public function site()
    {
        redirect(site_url('site'));
    }



    public function index() {  
        $data['alert']         = $this->load->view('templates/alert' , '' , true);  
        $data['header']        = $this->load->view('templates/site/header' , $data , true);
        $data['footer']        = $this->load->view('templates/site/user_footer' , $data , true); 

        $this->session->skin   = 'skin-blue';
        $this->session->layout = 'sidebar-mini';
        $this->session->button = 'primary'; 
        
        $this->load->view('login', $data); 
    }

 

    public function logout () {
        unset(
            $_SESSION['inCharge'],
            $_SESSION['userType'],
            $_SESSION['id'],
            $_SESSION['expenseID'],
            $_SESSION['signIn'],
            $_SESSION['image'],
            $_SESSION['layout'],
            $_SESSION['skin'],
            $_SESSION['location'],
            $_SESSION['project_id'],
            $_SESSION['button']
        );
        session_destroy();
        redirect(site_url('login'));
    }

}