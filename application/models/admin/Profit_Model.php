<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Profit_Model extends CI_Model {

	public function __construct() {
		$this->load->database(); 
	} 



	public function get_total_profit_monthly($month, $year, $total = 0) { 
        $query = $this->db->query("SELECT * FROM tbl_project AS p INNER JOIN tbl_quotation AS q ON p.quotation_no = q.quotation_id  WHERE p.projectStatus = 'Finished' AND q.expected_finished LIKE '$month%' AND q.expected_finished LIKE '%$year' AND p.is_deleted = 0 ");
        foreach ($query->result() as $row) {
            $total = $total + $row->profit;
        }  
        return $total;
    }



    public function get_company_profile() { 
        $query = $this->db->get_where('tbl_profile', array('is_deleted' => 0)); 
        return $query->result_array();
    }
    


	public function get_user() {
		$query = $this->db->get_where('tbl_account', array('is_deleted' => 0 ));
		return $query->result_array();
	}  


} 
