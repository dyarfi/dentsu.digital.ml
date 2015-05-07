<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Language extends CI_Controller {

	public function __construct() {
		parent::__construct();
		
		// Load language related model in admin module
		$this->load->model('admin/Languages');
					
	}
	
	public function index() {
		
		// Set default empty language before change
		$language = '';
		
		// Check if the url has a parameter
		if($this->uri->segment(2) != ''){
			$language = $this->uri->segment(2);
		}
		
		if ($language) {
		
			// Set expired time for about a month
			$time_expired = 7200 + 60 * 60 * 24 * 30;
			
			// Set language from database 
			$this->config->set_item('language', $language);
			
			// Set cookie from default variables
			$this->input->set_cookie("language",$language,$time_expired);

			// print_r(config_item('language'));
			
			// Redirect to previous page
			redirect($this->agent->referrer());
		}
		
	}
}

/* End of file language.php */
/* Location: ./application/controllers/language.php */