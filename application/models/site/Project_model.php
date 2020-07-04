<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Project_model extends CI_Model {

    public function __construct() {
        $this->load->database(); 
    }



    public function get_accomplishment_images($id = '') {
        if ($id == '') {
            $query = $this->db->get('tbl_accomplishment_images');  
            return $query->result_array();
        }
    }
       


    public function get_accomplishments($id = '') {
        if ($id == '') {
            $this->db->select('a.accomplishment_id , a.caption , a.date_accomplished , p.id , q.project_name ,
            ac.fullName , ac.imagePath');
            $this->db->from('tbl_accomplishment AS a');
            $this->db->join('tbl_project AS p', 'p.id = a.project_no');
            $this->db->join('tbl_quotation AS q', 'p.quotation_no = q.quotation_id');
            $this->db->join('tbl_account AS ac', 'ac.id = a.user_id');  
            $this->db->where('p.client_no', $this->session->client_id); 
            $this->db->order_by('a.accomplishment_id', 'DESC'); 
            $query = $this->db->get();

            return $query->result_array();
        }
        $this->db->select('*');
        $this->db->from('tbl_accomplishment AS a');
        $this->db->join('tbl_project AS p', 'p.id = a.project_no');
        $this->db->join('tbl_account AS ac', 'ac.id = a.user_id'); 
        $this->db->where('p.id', $id); 
        $this->db->order_by('a.accomplishment_id', 'DESC'); 
        $query = $this->db->get();

        return $query->result_array();
    }


    public function get_list($id = '') {
        if ($id == '') {
            $this->db->select('p.imagePath , p.id  , p.projectStatus , a.fullName , q.project_name , q.scope_of_work , q.project_address , q.date_started , q.expected_finished');
            $this->db->from('tbl_project AS p');
            $this->db->join('tbl_quotation AS q', 'p.quotation_no = q.quotation_id');
            $this->db->join('tbl_account AS a', 'a.id = p.project_leader') ;
            $this->db->where('p.client_no', $this->session->client_id);
            $this->db->where('p.is_deleted', 0);
            $query = $this->db->get(); 

            return $query->result_array();
        }  
            $this->db->select('p.imagePath , p.id  , p.projectStatus , a.fullName , q.project_name , q.scope_of_work , q.project_address  , a.imagePath AS image, q.date_started , q.expected_finished , q.quotation_id');
            $this->db->from('tbl_project AS p');
            $this->db->join('tbl_quotation AS q', 'p.quotation_no = q.quotation_id'); 
            $this->db->join('tbl_account AS a', 'a.id = p.project_leader'); 
            $this->db->where('p.id', $id);
            $this->db->where('p.is_deleted', 0);
            $this->db->where('p.client_no', $this->session->client_id);
            $query = $this->db->get();

            return $query->result_array(); 
    }



    public function load_accomplishments() {
        $images = $this->db->get('tbl_accomplishment_images');  

        $this->db->select('*');
        $this->db->from('tbl_accomplishment AS a');
        $this->db->join('tbl_project AS p', 'p.id = a.project_no');
        $this->db->join('tbl_account AS ac', 'ac.id = a.user_id'); 
        $this->db->where('p.id', $this->input->post('id')); 
        $this->db->order_by('a.accomplishment_id', 'DESC'); 
        $accomplishments = $this->db->get(); 

        $response = "<script>$('.materialboxed').materialbox();</script>";
        foreach ($accomplishments->result() as $a) {
            $response .= '<div class="col s12 m12">';
            $response .= '<div class="chip grey">';
            $response .= '<img src="' . base_url() . $a->imagePath . '" alt="Contact Person">';
            $response .=  $a->fullName ;
            $response .= '</div>';
            $response .= '<p>' . $a->date_accomplished . '</p>'. $a->caption ;
            $response .= '<center>';
            foreach ($images->result() as $i) {
                if($a->accomplishment_id == $i->accomplishment_no ){
                    $response .='<div class="col s6 m2">';
                    $response .= '<img  class="a_img materialboxed card" src="' . base_url() . $i->image_path . '">';
                    $response .= '</div>';
                }
            }
            $response .='</center>';
            $response .='</div>';
            $response .='<div class="col s12 m12"><br><br><hr></div>';
        }
        return $response;
    }



    public function filter_accomplishments() {
        $filter     = $this->input->post('date');
        $date       = explode(" ", $filter);
        $real_day   = $date[0];
        $temp_month = $date[1]; 
        $year       = explode(",", $filter);  
        $month      = explode(",", $temp_month); 
        $temp_year  = explode(" ", $year[1]);
        $real_year  = $temp_year[1];

        if ($real_day < 10) {
            $real_day = '0'.$real_day;
        }
        switch ($month[0]) {
            case 'January':
                $real_month = '01';
                break;
            case 'February':
                $real_month = '02';
                break;
            case 'March':
                $real_month = '03';
                break;
            case 'April':
                $real_month = '04';
                break;
            case 'May':
                $real_month = '05';
                break;
            case 'June':
                $real_month = '06';
                break;
            case 'July':
                $real_month = '07';
                break;
            case 'August':
                $real_month = '08';
                break;
            case 'September':
                $real_month = '09';
                break;
            case 'October':
                $real_month = '10';
                break;
            case 'November':
                $real_month = '11';
                break;
            case 'December':
                $real_month = '12';
                break;  
            default: 
                break;
        }
        $key_date = $real_year . '-' . $real_month . '-' . $real_day; 
        $images = $this->db->get('tbl_accomplishment_images');  
        $this->db->select('*');
        $this->db->from('tbl_accomplishment AS a');
        $this->db->join('tbl_project AS p', 'p.id = a.project_no');
        $this->db->join('tbl_account AS ac', 'ac.id = a.user_id'); 
        $this->db->where('p.id', $this->input->post('id'));
        $this->db->where('a.date_accomplished', $key_date);  
        $accomplishments = $this->db->get();

        $response = "<script>$('.materialboxed').materialbox();</script>";
        foreach ($accomplishments->result() as $a) {
            $response .= '<div class="col s12 m12">';
            $response .= '<div class="chip grey">';
            $response .= '<img src="' . base_url() . $a->imagePath . '" alt="Contact Person">';
            $response .=  $a->fullName ;
            $response .= '</div>';
            $response .= '<p>' . $a->date_accomplished . '</p>'. $a->caption ;
            $response .= '<center>';

            foreach ($images->result() as $i) {
                if($a->accomplishment_id == $i->accomplishment_no ){
                    $response .='<div class="col s6 m2">';
                    $response .= '<img  class="a_img materialboxed card" src="' . base_url() . $i->image_path . '">';
                    $response .= '</div>';
                }
            }
            $response .='</center>';
            $response .='</div>';
            $response .='<div class="col s12 m12"><br><br><hr></div>';
        }
        return $response;
    }



    public function get_materials($id = '')  {
        $this->db->select('*');
        $this->db->from('tbl_materialexpenses AS m');
        $this->db->join('tbl_project AS p', 'm.projectID = p.id');
        $this->db->join('tbl_account AS a', 'a.id = p.project_leader');
        $this->db->where('m.is_deleted', 0);
        $this->db->where('p.id', $id);
        $this->db->order_by('m.id', 'DESC');
        $query = $this->db->get();

        return $query->result_array();
    }



    public function get_workers($id = '') {
        $this->db->select('*');
        $this->db->from('tbl_workerexpenses AS w');
        $this->db->join('tbl_project AS p', 'w.projectID = p.id');
        $this->db->join('tbl_account AS a', 'a.id = p.project_leader');
        $this->db->where('w.is_deleted', 0);
        $this->db->where('p.id', $id);
        $this->db->order_by('w.id', 'DESC');
        $query = $this->db->get();

        return $query->result_array();
    }



    public function get_transportations($id = '') {
        $this->db->select('*');
        $this->db->from('tbl_transportexpenses AS t');
        $this->db->join('tbl_project AS p', 't.projectID = p.id');
        $this->db->join('tbl_account AS a', 'a.id = p.project_leader');
        $this->db->where('t.is_deleted', 0);
        $this->db->where('p.id', $id);
        $this->db->order_by('t.id', 'DESC');
        $query = $this->db->get();

        return $query->result_array();
    }



    public function delete($id = '') {
        $post = $this->input->post();
        if ($id === '') { 
            $project = $this->db->get_where('tbl_project', array('client_no', $this->session->client_id));
            foreach ($project->result() as $row) {
                if(isset($post['p'.$row->id])){
                    $this->db->update('tbl_project', array('is_deleted' => 1), array('id' => $row->id));
                }
            }

            $request = $this->db->get_where('tbl_request', array('client_id', $this->session->client_id));
            foreach ($request->result() as $r) {
                if(isset($post['r'.$r->request_id])){
                    $this->db->update('tbl_request', array('is_deleted' => 1), array('request_id' => $r->request_id));
                }
            }
        }
    }

    
}
