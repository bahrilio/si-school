<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		login_required();
	}

	public function index()
	{
		set_page_title('SI SCHOOL|Dasboard');
		load_view('home/index');
	}
}
