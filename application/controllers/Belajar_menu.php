<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Belajar_menu extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_menu','m');
	}

 	function index()
 	{
  	$menus = $this->m->ambilMenu();
    $data = array('menus' => $menus);
		$this->load->view('belajar_menu', $data);
	}

}
