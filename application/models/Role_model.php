<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Role_model extends CI_Model
{
    public function getRoleByName($roleName)
    {
        return $this->db->get_where('roles', ['name' => $roleName])->row_array();
    }

    public function addRole($data)
    {
        $this->db->insert('roles', $data);
        if ($this->db->affected_rows() > 0) {
            return true;
        }
        return false;
    }

    public function addUserRole($userId, $roleId)
    {
        $this->db->insert('user_roles', [
            'user_id' => $userId,
            'role_id' => $roleId
        ]);
        if ($this->db->affected_rows() > 0) {
            return true;
        }
        return false;
    }

    public function getUserRoleByUserId($userId)
    {
        return $this->db->get_where('user_roles', ['user_id' => $userId])->row_array();
    }
}
