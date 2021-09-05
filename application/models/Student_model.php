<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Student_model extends CI_Model
{
    public function getAllStudent()
    {
        return $this
            ->db
            ->select('*')
            ->order_by('id', 'DESC')
            ->get('students')
            ->result_array();
    }

    public function getMahasiswaById($id)
    {
        return $this->db->get_where('students', ['id' => $id])->row_array();
    }

    public function add($data)
    {
        $this->db->insert('students', $data);
        if ($this->db->affected_rows() > 0) {
            return true;
        }
        return false;
    }

    public function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('students');

        if ($this->db->affected_rows() > 0) {
            return true;
        }
        return false;
    }


    public function Edit($id, $data)
    {
        $this->db->where('id', $id);
        $this->db->update('students', $data);
        if ($this->db->affected_rows() > 0) {
            return true;
        }
        return false;
    }
}
