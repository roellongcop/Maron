<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Project_Model extends CI_Model {

    public function __construct() {
        $this->load->database();
    }



    public function get_user() { 
        $query = $this->db->get_where('tbl_account', array('is_deleted' => 0 ));
        return $query->result_array();
    }  



    public function get_total_expense($tbl , $p_id, $total = 0) {
        if ($this->session->userType == "Administrator") {
            $query = $this->db->get_where($tbl, array('projectID' => $p_id, 'is_deleted' => 0 ));
        } 
        else { 
            $match = array('projectID' => $p_id, 'is_deleted' => 0, 'PersonInCharge' => $this->session->inCharge);
            $query = $this->db->get_where($tbl, $match);
        }
        foreach ($query->result() as $row) {
            $total = $total + $row->cost;
        }
        return $total;
    }



    public function get_expense_list($tbl , $p_id) {
        if ($this->session->userType == "Administrator") {
            $query = $this->db->get_where($tbl, array('projectID' => $p_id, 'is_deleted' => 0));
        } 
        else {
            $match = array('projectID' => $p_id,  'is_deleted' => 0, 'PersonInCharge' => $this->session->inCharge);
            $query = $this->db->get_where($tbl, $match);
        }
        return $query->result_array();
    }



    public function get_quot_info()  {
        $query = $this->db->get('tbl_quotation');
        return $query->result_array();
    }



    public function insert_notif($notif) {
        $query = $this->db->get('tbl_account');
        foreach ($query->result() as $row) { 
            $data = array(
                'userImage'   => $this->session->image,
                'userID'      =>  $row->id,
                'description' => $notif,
                'type'        => 'project',
                'dateOccur'   => date('F d, Y'),
                'link'        => 'projects',
                'is_deleted'  => 0
            );
            $this->db->insert('tbl_notification', $data);
        }
    }



    public function insert_logs($log) {   
        $activity = array(
            'userID'       =>  $this->session->id,
            'activity'     => $log,
            'activityDate' => date('Y-m-d'),
            'activityTime' => date('h:i:sa'),
            'is_deleted'   => 0
        );
        $this->db->insert('tbl_activityLogs', $activity); 
    }




    public function get_company_profile() { 
        $query = $this->db->get_where('tbl_profile', array('is_deleted' => 0)); 
        return $query->result_array();
    }



    public function get_client($key = "All"){
        if ($key == "All") {
            $query = $this->db->get_where('tbl_client' , array('is_deleted' => 0, 'verified', 1));
            return $query->result_array();
        } 
        else {
            $query = $this->db->get_where('tbl_client', array('client_no' => $key));
            return $query->result(); 
        }  
    }



    public function find_project($project_id = 0) {
        if ($project_id == 0) {
            $query = $this->db->query("SELECT * FROM tbl_quotation AS q INNER JOIN tbl_client AS c INNER JOIN tbl_project AS p ON p.quotation_no = q.quotation_id AND  q.client_id = c.client_no");
            return $query->result_array();
        } 
        $query = $this->db->query("SELECT * FROM tbl_quotation AS q INNER JOIN tbl_client AS c INNER JOIN tbl_project AS p ON p.quotation_no = q.quotation_id AND  q.client_id = c.client_no WHERE p.id = $project_id");
        return $query->result_array();
    }



    public function update_project_image($project_image) { 
        if (!empty($project_image)) {
            $path = 'uploads/projects/'.$project_image; 
            $this->db->update('tbl_project', array('imagePath' => $path), array('id' => $this->input->post('pro_id')));
        } 
    }



    public function update_leader($user_id){ 
        $match = array('id' => $this->session->project_id);
        $this->db->update('tbl_project', array('project_leader' => $user_id), $match); 
    }



    public function get_assigned_project($user_id){
        $query = $this->db->query("SELECT q.project_name , q.project_address , p.projectStatus, p.id, c.client_name FROM tbl_project AS p INNER JOIN tbl_quotation AS q INNER JOIN tbl_client AS c ON p.quotation_no = q.quotation_id AND q.client_id = c.client_no  WHERE p.project_leader = $user_id AND p.is_deleted = 0 ");
        return $query->result_array(); 
    } 



    public function project_status($id) {
        $post = $this->input->post(); 
        $this->db->update('tbl_project', array('projectStatus' => $post['p_status']), array('id' => $id));

        $query =$this->db->query("SELECT * FROM tbl_project AS p  INNER JOIN tbl_quotation AS q ON p.quotation_no = q.quotation_id WHERE p.id = $id");
        $row = $query->row();
        $notif_data = array(
            'admin_user'  => $this->session->id,
            'client_user' => $row->client_no,
            'description' => 'Project : '. $row->project_name . ' was set to <b>' .   $post['p_status'] . '</b> <br>Call us for more information.',
            'link'        => site_url('site/projects/'.$row->id),
            'date_occur'  => date('F d, Y'),
            'is_deleted'  => 0 
        );
        $this->db->insert('tbl_client_notification', $notif_data);
        return $post['p_status'];
    }



    public function get_list($id = "All") {
        $leader_id = $this->session->id;
        if ($id == "All") {
            $query = $this->db->query("SELECT p.id , p.quotation_no , p.expenses , p.profit , p.projectStatus , p.imagePath, c.client_name , c.client_position FROM tbl_project AS p INNER JOIN tbl_client AS c ON p.client_no = c.client_no WHERE p.is_deleted = 0 AND p.project_leader = '$leader_id'");
        } 
        elseif ($id == "Pending" OR $id == "Ongoing" OR $id == "Finished") {
            $query = $this->db->query("SELECT p.id , p.quotation_no , p.expenses , p.profit , p.projectStatus , c.client_name , c.client_position FROM tbl_project AS p INNER JOIN tbl_client AS c ON p.client_no = c.client_no WHERE p.projectStatus = '$id' AND p.is_deleted = 0 AND p.project_leader = $leader_id");
        } 
        else {
            $query = $this->db->query("SELECT p.id ,p.imagePath , p.quotation_no , p.expenses , p.profit , p.projectStatus , c.client_name  , c.client_address , c.client_number , c.client_email ,  c.client_position FROM tbl_project AS p INNER JOIN tbl_client AS c ON p.client_no = c.client_no WHERE p.id = $id ");
        }
        return $query->result_array();
    }



    public function get_leader($project_id) {
        $query = $this->db->get_where('tbl_project', array('id' => $project_id));
        $leader_id = $query->row()->project_leader;

        $find_leader = $this->db->get_where('tbl_account', array('id' => $leader_id));
        return $find_leader->result_array(); 
    }



    public function save_accomplishments() {
        $caption = $this->input->post('caption');
        $save = array (
            'project_no'        => $this->session->project_id,
            'user_id'           => $this->session->id,
            'caption'           => $caption,
            'date_accomplished' => date('Y-m-d') 
        );
        $this->db->insert('tbl_accomplishment', $save);

        $insert = $this->db->get('tbl_temp_images');
        foreach ($insert->result() as $row) {
            $acc_data = array('accomplishment_no' => $row->image_type_id, 'image_path' => $row->image_path); 
            $this->db->insert('tbl_accomplishment_images', $acc_data); 
        }
        $this->db->truncate('tbl_temp_images'); 

        $id = $save['project_no'];
        $query =$this->db->query("SELECT * FROM tbl_project AS p  INNER JOIN tbl_quotation AS q ON p.quotation_no = q.quotation_id WHERE p.id = $id");
        $row = $query->row();

        $notif_data = array(
            'admin_user'  => $this->session->id,
            'client_user' => $row->client_no,
            'description' => 'New accomplishments Uploaded to Project : <b>'.$row->project_name. '</b>',
            'link'        => site_url('site/projects/'.$row->id),
            'date_occur'  => date('F d, Y'),
            'is_deleted'  => 0
        );
        $this->db->insert('tbl_client_notification', $notif_data); 
    }



    public function upload_accomplishments($image) { 
        $query = $this->db->get('tbl_accomplishment');
        foreach ($query->result() as $row) {  
            $acc_id = $row->accomplishment_id;
        }
        $acc_id = $acc_id + 1;
        $path = 'uploads/accomplishments/'. $image;
        $data = array('image_type_id' =>$acc_id, 'image_path' =>$path);
        $this->db->insert('tbl_temp_images', $data); 
    }




    public function get_accomplishments() { 
        $project_id = $this->session->project_id;
        $query = $this->db->query("SELECT a.imagePath, a.fullName , acc.project_no , acc.caption , acc.date_accomplished , aci.image_path , aci.accomplishment_image_id FROM tbl_account AS a INNER JOIN  tbl_accomplishment AS acc INNER JOIN tbl_accomplishment_images AS aci  ON a.id = acc.user_id AND acc.accomplishment_id = aci.accomplishment_no  WHERE  acc.project_no = $project_id ORDER BY acc.accomplishment_id DESC"); 
        return $query->result_array();
    }



    public function get_count($status = "All") {
        if ($status == "All") {
            $query = $this->db->get_where('tbl_project', array('is_deleted' => 0 ));
            return $query->num_rows();
        }  
        $query = $this->db->get_where('tbl_project', array('projectStatus' => $status, 'is_deleted' => 0 ));
        return $query->num_rows();
    }



    public function delete($key) {   
        if ($key == "All") { 
            $query = $this->db->get_where('tbl_project', array('is_deleted' => 0 ));
        } 
        elseif ($key == "Pending" OR $key == "Ongoing" OR $key == "Finished") {
            $query = $this->db->get_where('tbl_project', array('projectStatus' => '$key', 'is_deleted' => 0 ));
        } 
        else {
            $query = $this->db->get_where('tbl_project', array('id' => $key));
        }

        foreach ($query->result() as $row) {
            $id =  $row->id;
            $projectName = $row->projectName; 
            $this->db->update('tbl_transportexpenses', array('is_deleted' => 1), array('projectID' => $id));
            $this->db->update('tbl_materialexpenses', array('is_deleted' => 1), array('projectID' => $id));
            $this->db->update('tbl_workerexpenses', array('is_deleted' => 1), array('projectID' => $id));
        } 

        if ($key == "All") { 
            $this->db->update('tbl_project', array('is_deleted' => 1), array('projectID' => $id));
        } 
        elseif ($key == "Pending" OR $key == "Ongoing" OR $key == "Finished") {
            $this->db->update('tbl_project', array('is_deleted' => 1), array('projectStatus' => $key)); 
        } 
        else {
            $this->db->update('tbl_project', array('is_deleted' => 1), array('id' => $key));  
        }
        return $projectName;
    }



    public function insert($quo_id) {
        $path = 'uploads/templates/project.png';
        $query = $this->db->get_where('tbl_quotation' , array('quotation_id' => $quo_id));
        foreach ($query->result() as $q) {
            $project_name = $q->project_name;
            $project = array(
                'client_no'      => $q->client_id,
                'quotation_no'   => $q->quotation_id, 
                'expenses'       => 0,
                'profit'         => $q->estimated_cost,
                'projectStatus'  => 'Pending', 
                'imagePath'      => $path,
                'project_leader' => 10001
            );
        } 
        $this->db->update('tbl_quotation', array('status' => 'Approved'), array('quotation_id' => $quo_id));
        $this->db->insert('tbl_project', $project);
        return $project_name;
    } 
}