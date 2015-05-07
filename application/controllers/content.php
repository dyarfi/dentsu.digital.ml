<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Content extends Public_Controller {

	public function __construct() {
		parent::__construct();
	
		// Load User related model in admin module
		$this->load->model('page/Pagemenus');
		$this->load->model('page/Pages');
					
	}
	
	//public function index() { }
	
	public function view($menu='') {
				
		// Set Language list
		$data['languages']	= $this->Languages->getAllLanguage();
		
		// Set menus
		//$data['menus']		= $this->Pagemenus->getAllPageMenu();
		
		// Set site title page with module menu
		$data['page_title'] = $this->config->item('developer_name') .' | '. $this->Settings->getByParameter('title_default')->value;
		
		// Set data
		$_menu			= $this->Pagemenus->getMenu($menu);
		
		$data['menus']	= $_menu;
		
		// Set data
		$data['pages']	= $this->Pages->getAllPageByMenu($_menu->id);
		
		// Set main template
		$data['main'] = 'page';
		
		// Load site template
		$this->load->view('template/public/template', $this->load->vars($data));		
	}
}

/* End of file pages.php */
/* Location: ./application/controllers/.php */