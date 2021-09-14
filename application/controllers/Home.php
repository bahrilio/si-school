<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		login_required();
		$this->load->model('Student_model');
		$this->load->model('Teacher_model');
	}

	public function index()
	{
		$data['students'] = $this->Student_model->getAllStudent();
		$data['teachers'] = $this->Teacher_model->getAllTeacher();

		set_page_title('SI SCHOOL|Dasboard');
		load_view('home/index', $data);
	}
	
}
