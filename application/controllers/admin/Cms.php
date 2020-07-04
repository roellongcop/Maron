<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Cms extends CI_Controller {

    public function __construct() {
        parent::__construct(); 
        if (is_null($this->session->id)) { redirect(site_url('login')); } 
    }


    public function theme($color)  {
        $this->session->skin = $color;

        if ($color == "skin-blue" OR $color == "skin-blue-light")    {
            $this->session->button = "primary";
            $this->session->color = '#3c8dbc';
        }   
        elseif ($color == "skin-black" OR $color == "skin-black-light") {
            $this->session->button = "default";
            $this->session->color = '#fff';
        } 
        elseif ($color == "skin-yellow" OR $color == "skin-yellow-light")  { 
            $this->session->button = "warning";
            $this->session->color = '#f39c12';
        } 
        elseif ($color == "skin-purple" OR $color == "skin-purple-light")   {
            $this->session->button = "purple";
            $this->session->color = '#605ca8'; 
        } 
        elseif ($color == "skin-red" OR $color == "skin-red-light")  {
            $this->session->button = "danger";
            $this->session->color = '#dd4b39'; 
        } 
        elseif ($color == "skin-green" OR $color == "skin-green-light")  {
            $this->session->button = "success";
            $this->session->color = '#00a65a'; 
        }

        $this->session->skin = $color;
        redirect($this->session->location); 
    }




    public function layout($style) { 
        $this->session->layout = $style;
        redirect($this->session->location); 
    }


}