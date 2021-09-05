<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('User_model');
        $this->load->model('Role_model');
    }

    public function registration()
    {
        // validasi email
        $this->form_validation->set_rules(
            'email',
            'Email',
            'required|trim|valid_email|is_unique[users.email]',
            ['is_unique' => 'this email has already registered !!!']
        );
        // validasi password 
        $this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[3]|matches[password2]', [
            'matches' => 'password dont match!',
            'min_length' => 'password too short'
        ]);
        // valiasi repeat password
        $this->form_validation->set_rules('password2', 'Password', 'required|trim|matches[password1]');

        if ($this->form_validation->run() == false) {
            set_page_title('SI SCHOOL|Registration');
            load_view_auth('auth/registration');
        } else {
            $email = $this->input->post('email', true);

            $data = [
                'email' => htmlspecialchars($email),
                'password' => password_hash($this->input->post('password1'), PASSWORD_DEFAULT),
                'active' => true,
                'created_at' => date('Y-m-d h:i:s'),
                'updated_at' => date('Y-m-d h:i:s')
            ];
            if ($this->User_model->addUser($data)) {

                $user = $this->User_model->getUserByEmail($data['email']);
                $user_id = $user['id'];

                $role = $this->Role_model->getRoleByName('member');
                if (!$role) {
                    $this->Role_model->addRole(['name' => 'member']);
                }

                $role = $this->Role_model->getRoleByName('member');
                $role_id = $role['id'];

                if ($this->Role_model->addUserRole($user_id, $role_id)) {
                    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">login successful !!!</div>');
                    redirect('auth/login');
                } else {
                    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">login failed !!!</div>');
                    redirect('auth/registration');
                }

                // cari user berdasarkan email
                //  $user = this-> user model-> get user by email($data[email])
                // user id = user [id]

                // $role  = this - role model - get role by name (pengunjung)

                // jika $role kosong
                //  buat role sesuai yang di cari
                // this - role model - add role (pengunjung)
                // $role  = this - role model - get role by name (pengunjung)

                // $role id = $role[id]

                // simpan ke dalam table user role

                // this role model - add user role ($user id, $role id)

                //  registrasi berhasil
            }
        }
    }

    public function login()
    {
        if ($this->session->userdata('email')) {
            redirect('home');
        }
        $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'trim|required');

        if ($this->form_validation->run() == false) {

            set_page_title('SI SCHOOL | LOGIN');
            load_view_auth('auth/login');
        } else {
            $this->_login();
        }
    }

    public function _login()
    {
        $email = $this->input->post('email');
        $password = $this->input->post('password');

        $user = $this->db->get_where('users', ['email' => $email])->row_array();

        // jika user ada
        if ($user) {
            // jika user aktif
            if ($user['active'] == 1) {
                // cek password
                if (password_verify($password, $user['password'])) {

                    $userRole = $this->Role_model->getUserRoleByUserId($user['id']);
                    $data = [
                        'email' => $user['email'],
                        'role_id' => $userRole['role_id']
                    ];
                    $this->session->set_userdata($data);
                    if ($userRole['role_id'] == 1) {
                        // redirect('admin');
                        echo 'admin';
                    } else {
                        // redirect('user');
                        echo 'user';
                    }
                } else {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Wrong password !!!</div>');
                    redirect('auth/login');
                }
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">This email has not been activate</div>');
                redirect('auth/login');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Email is not regitered !!!</div>');
            redirect('auth/login');
        }
    }
}
