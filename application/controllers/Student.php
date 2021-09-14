<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Student extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Student_model');
	}

	public function index()
	{

		$students = $this->Student_model->getAllStudent();
		$data['students'] = $students;

		set_page_title('SI SCHOOL|Student');
		load_view('student/index', $data);
	}

	public function add()
	{

		set_page_title('SI SCHOOL|Student|Add');

		$this->form_validation->set_rules('name', 'Name', 'required');
		$this->form_validation->set_rules('npm', 'NPM', 'required');
		$this->form_validation->set_rules('phone-number', 'Phone Number', 'required');
		$this->form_validation->set_rules('address', 'Address', 'required');
		$this->form_validation->set_rules('email', 'Email', 'required|valid_email');

		if ($this->form_validation->run() == FALSE) {
			load_view('student/add');
		} else {

			$data = [
				'name' => trim($this->input->post('name')),
				'npm' => trim($this->input->post('npm')),
				'phone_number' => trim($this->input->post('phone-number')),
				'address' => trim($this->input->post('address')),
				'email' => trim($this->input->post('email'))
			];

			if ($this->Student_model->add($data)) {
				$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">success to save data !!!</div>');
				redirect('student');
			} else {
				$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">failed to save data !!!</div>');
				redirect('student');
			}
		}
	}

	public function delete()
	{
		$id = trim($this->input->post('id'));

		if ($this->Student_model->delete($id)) {
			$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">success to delete data !!!</div>');
			redirect('student');
		} else {
			$this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">failed to delete data !!!</div>');
			redirect('student');
		}
	}

	public function edit($id)
	{
		set_page_title('SI SCHOOL|Student|Edit');
		$data['student'] = $this->Student_model->getMahasiswaById($id);

		$this->form_validation->set_rules('name', 'Name', 'required');
		$this->form_validation->set_rules('npm', 'NPM', 'required');
		$this->form_validation->set_rules('phone-number', 'Phone Number', 'required');
		$this->form_validation->set_rules('address', 'Address', 'required');
		$this->form_validation->set_rules('email', 'Email', 'required|valid_email');

		if ($this->form_validation->run() == FALSE) {
			load_view('student/edit', $data);
		} else {


			$data = [
				'name' => trim($this->input->post('name')),
				'npm' => trim($this->input->post('npm')),
				'phone_number' => trim($this->input->post('phone-number')),
				'address' => trim($this->input->post('address')),
				'email' => trim($this->input->post('email'))
			];

			if ($this->Student_model->edit($id, $data)) {
				$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">success to save data !!!</div>');
				redirect('student');
			} else {
				$this->session->set_flashdata('message', '<div class="alert alert-warning" role="alert">no data has changed to save data !!!</div>');
				redirect('student');
			}
		}
	}
	
	public function report()
	{
		$students = $this->Student_model->getAllStudent();
		$data['students'] = $students;

		set_page_title('SI SCHOOL|Student|Report');
		load_view_report('student/report', $data);
	}
}
