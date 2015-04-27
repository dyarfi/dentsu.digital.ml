<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Page extends Admin_Controller {

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     *	- or -  
     * 		http://example.com/index.php/welcome/index
     *	- or -
     * Since this controller is set as the default controller in 
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see http://codeigniter.com/user_guide/general/urls.html
     */
	
    public function __construct() {
            parent::__construct();
			
            // Load Pages model
            $this->load->model('Pages');

            // Load PageMenu model
            $this->load->model('PageMenus');

            // Load Grocery CRUD
            $this->load->library('grocery_CRUD');
			      
    }
	
    public function index() {
        try {
	    // Set our Grocery CRUD
            $crud = new grocery_CRUD();
            // Set tables
            $crud->set_table('tbl_pages');
            // Set CRUD subject
            $crud->set_subject('Page');                            
            // Set table relation
            $crud->set_relation('menu_id','tbl_page_menus','name');
			// Add custom column
            // Set column
            $crud->columns('subject','name','menu_id','synopsis','text','status','added','modified','translate');			
			// The fields that user will see on add and edit form
			$crud->fields('subject','name','menu_id','synopsis','text','publish_date','unpublish_date','status','added','modified');
            // Set column display 
            $crud->display_as('menu_id','Menu');
			// Changes the default field type
			$crud->field_type('added', 'hidden');
			$crud->field_type('modified', 'hidden');
			
			if ($this->Languages->getActiveCount() > 0) {
				// Callback_column translate
				$crud->callback_column('translate',array($this,'_callback_translate'));
			}
			
			// This callback escapes the default auto field output of the field name at the add form
			$crud->callback_add_field('added',array($this,'_callback_time_added'));
			// This callback escapes the default auto field output of the field name at the edit form
			$crud->callback_edit_field('modified',array($this,'_callback_time_modified'));
			// This callback escapes the default auto field output of the field name at the add/edit form. 
			// $crud->callback_field('status',array($this,'_callback_dropdown'));
			// This callback escapes the default auto column output of the field name at the add form
			$crud->callback_column('added',array($this,'_callback_time'));
			$crud->callback_column('modified',array($this,'_callback_time'));  
			// Sets the required fields of add and edit fields
			$crud->required_fields('subject','name','text','status'); 
            // Set upload field
            // $crud->set_field_upload('file_name','uploads/pages');
			 
			$state = $crud->getState();
			$state_info = $crud->getStateInfo();
			//print_r($state);
			if ($state == 'add') {
				// GC Add Method
			} else if($state == 'edit') {
				// GC Edit Method. 
			} else if($state == 'detail') {
				// GC Edit Method. 
				exit('asdf');
			} else {
				// GC List Method
				/*
					// Get languages from db
					foreach($this->Languages->getAllLanguage() as $lang) {
						//default is the default language
						if($lang->default != 1) {
							$crud->add_action($lang->name, base_url('assets/admin/img/flags/'.$lang->prefix.'.png'),'page/insert_and_redirect/'.$lang->id);
						}
					}
				 * 
				 */
			}
			
            $this->load($crud, 'page');
        } catch (Exception $e) {
            show_error($e->getMessage() . ' --- ' . $e->getTraceAsString());
        }
    }
	
	function insert_and_redirect($lang_id,$field_id) {
	  
		//$this->db->where('lang_id',$lang_id);
		//$this->db->where('field_id',$field_id);
		//$page_db = $this->db->get('pages_lang');

		//if($page_db->num_rows() == 0) {
			  //$this->db->insert('pages_lang',array('lang_code' => $lang_id, 'field_id' => $field_id));
			  redirect(base_url(ADMIN).'/page/detail/edit/'.$field_id);
		//}
		//else {
			  //redirect(base_url(ADMIN).'/pages/pages_lang/edit/'.$page_db->row()->id);
		//}
	}

	function detail($operation = '',$id='',$lang_id='') {
		
		/* Just make sure that you don't want to redirect him at the page_lang page but at pages */
		if($operation == '' || $operation == 'list') {
		   //redirect(strtolower(__CLASS__).'/page/index');
		}
		
		$crud = new grocery_CRUD();
		// Set tables
        $crud->set_table('tbl_page_languages');
		// Set subject
		$crud->set_subject('Translation');                            
		// Set table relation
		$crud->set_relation('page_id','tbl_pages','name');
		// Set table relation
		$crud->set_relation('lang_id','tbl_languages','name');
		// Set column
		$crud->columns('subject','name','menu_id','synopsis','text');		
		$crud->callback_field('lang_id',array($this,'_callback_lang'));
		// Set table relation
		$crud->set_relation('menu_id','tbl_page_menus','name');
		// The fields that user will see on add and edit form
		$crud->fields('subject','name','menu_id','lang_id','synopsis','text','added','modified');
		// Set column display 
		$crud->display_as('menu_id','Menu');
		// Changes the default field type
		$crud->field_type('added', 'hidden');
		$crud->field_type('modified', 'hidden');

		if ($this->Languages->getActiveCount() > 0) {
			// Callback_column translate
			$crud->callback_column('translate',array($this,'_callback_translate'));
		}

		// This callback escapes the default auto field output of the field name at the add form
		$crud->callback_add_field('added',array($this,'_callback_time_added'));
		// This callback escapes the default auto field output of the field name at the edit form
		$crud->callback_edit_field('modified',array($this,'_callback_time_modified'));
		// This callback escapes the default auto field output of the field name at the add/edit form. 
		// $crud->callback_field('status',array($this,'_callback_dropdown'));
		// This callback escapes the default auto column output of the field name at the add form
		$crud->callback_column('added',array($this,'_callback_time'));
		$crud->callback_column('modified',array($this,'_callback_time'));  
		// Sets the required fields of add and edit fields
		$crud->required_fields('subject','name','text','status'); 
		
		
		$crud->unset_fields('lang_id','field_id');

		//$this->template->build('admin/grocery_crud', $crud->render());
	
		$this->load($crud, 'page_detail');
		
	}

	public function _callback_lang ($value, $row) {
		
	}
	
	public function _callback_translate ($value, $row) {
		/*
		if ($row->user_id == NULL) { 
			return '<a href="'.base_url(ADMIN).'/employee/set/'.$row->id.'" class="fa fa-arrow-circle-left">&nbsp;</a>'; 
		} else { 
			return 'Already Employed';
		}*/
		$links = '';
		foreach($this->Languages->getAllLanguage(1) as $lang) {
			// Find other than the default languages
			if($lang->default != 1) {
				$links .= '<a href="'.base_url(ADMIN).'/page/index/detail/edit/'.$row->id.'/'.$lang->id.'" class="fancyframe iframe" title="'.$lang->name.'"><img src="'.base_url('assets/admin/img/flags/'.$lang->prefix.'.png').'"/></a>&nbsp;';
			}
		}
		return $links;
	}
	
    public function _callback_time ($value, $row) {
		return empty($value) ? '-' : date('D, d-M-Y',$value);
    }
    
    public function _callback_time_added ($value, $row) {
		$time = time();
		return '<input type="hidden" maxlength="50" value="'.$time.'" name="added">';
    }
    
    public function _callback_time_modified ($value, $row) {
		$time = time();
		return '<input type="hidden" maxlength="50" value="'.$time.'" name="modified">';
    }
    
    public function _callback_total_image($value, $row) {
        $total = $this->user_model->total_image_submitted($row->participant_id);
        return $total;
    }
    
    private function load($crud, $nav) {
        $output = $crud->render();
        $output->nav = $nav;
        if ($crud->getState() == 'list') {
            // Set Page Title 
            $output->page_title = 'Page Listings';
            // Set Main Template
            $output->main       = 'template/admin/metronix';
            // Set Primary Template
            $this->load->view('template/admin/template.php', $output);
        } else {
            $this->load->view('template/admin/popup.php', $output);
        }    
    }
}

/* End of file page.php */
/* Location: ./application/module/page/controllers/page.php */