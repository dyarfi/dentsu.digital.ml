<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

// Model Class Object for Content
class Content extends CI_Model {

	var $table = '';
	var $primary_key = '';
	
	public function __construct(){
		// Call the Model constructor
		parent::__construct();
		// Set database library		
		$this->db = $this->load->database('default', true);		
		
	}
	
	public function getContent($table='') {
	
		// Set default table
		$this->table = $this->db->dbprefix($table);
		
		$content = $this->
				
		print_r($this->table);
		
	}
	
}