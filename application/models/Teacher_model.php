<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Teacher_model extends CI_Model
{
    public function getAllTeacher()
    {
        return $this
            ->db
            ->select('*')
            ->order_by('id', 'DESC')
            ->get('teachers')
            ->result_array();
    }

    public function add($data)
    {
        $this->db->insert('teachers', $data);
        if ($this->db->affected_rows() > 0) {
            return true;
        }
        return false;
    }

    public function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('teachers');

        if ($this->db->affected_rows() > 0) {
            return true;
        }
        return false;
    }

    public function edit($id, $data)
    {
        $this->db->where('id', $id);
        $this->db->update('teachers', $data);
        if ($this->db->affected_rows() > 0) {
            return true;
        }
        return false;
    }

    public function getTeacherById($id)
    {
        return $this->db->get_where('teachers', ['id' => $id])->row_array();
    }
}
