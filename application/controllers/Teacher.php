<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Teacher extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Teacher_model');
    }

    public function index()
    {
        $teachers = $this->Teacher_model->getAllTeacher();
        $data['teachers'] = $teachers;

        set_page_title('SI SCHOOL|Teachers');
        load_view('teacher/index', $data);
    }

    public function add()
    {

        set_page_title('SI SCHOOL|Teacher|Add');

        $this->form_validation->set_rules('name', 'Name', 'required');
        $this->form_validation->set_rules('nip', 'NIP', 'required');
        $this->form_validation->set_rules('phone-number', 'Phone Number', 'required');
        $this->form_validation->set_rules('address', 'Address', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('gender', 'Gender', 'required');

        if ($this->form_validation->run() == FALSE) {
            load_view('teacher/add');
        } else {

            $data = [
                'name' => trim($this->input->post('name')),
                'nip' => trim($this->input->post('nip')),
                'phone_number' => trim($this->input->post('phone-number')),
                'address' => trim($this->input->post('address')),
                'email' => trim($this->input->post('email')),
                'gender' => trim($this->input->post('gender'))
            ];

            if ($this->Teacher_model->add($data)) {
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">success to save data !!!</div>');
                redirect('teacher');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">failed to save data !!!</div>');
                redirect('teacher');
            }
        }
    }

    public function delete()
    {
        $id = trim($this->input->post('id'));

        if ($this->Teacher_model->delete($id)) {
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">success to delete data !!!</div>');
            redirect('teacher');
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">failed to delete data !!!</div>');
            redirect('teacher');
        }
    }

    public function edit($id)
    {
        set_page_title('SI SCHOOL|Teacher|Edit');
        $data['teacher'] = $this->Teacher_model->getTeacherById($id);

        $this->form_validation->set_rules('name', 'Name', 'required');
        $this->form_validation->set_rules('nip', 'NIP', 'required');
        $this->form_validation->set_rules('phone-number', 'Phone Number', 'required');
        $this->form_validation->set_rules('address', 'Address', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('gender', 'Gender', 'required');

        if ($this->form_validation->run() == FALSE) {
            load_view('teacher/edit', $data);
        } else {

            $data = [
                'name' => trim($this->input->post('name')),
                'nip' => trim($this->input->post('nip')),
                'phone_number' => trim($this->input->post('phone-number')),
                'address' => trim($this->input->post('address')),
                'email' => trim($this->input->post('email')),
                'gender' => trim($this->input->post('gender'))
            ];

            if ($this->Teacher_model->edit($id, $data)) {
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">success to save data !!!</div>');
                redirect('teacher');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-warning" role="alert">no data has changed to save data !!!</div>');
                redirect('teacher');
            }
        }
    }
    public function report()
	{
		$teachers = $this->Teacher_model->getAllTeacher();
		$data['teachers'] = $teachers;

		set_page_title('SI SCHOOL|Teacher|Report');
		load_view_report('teacher/report', $data);
	}
}
