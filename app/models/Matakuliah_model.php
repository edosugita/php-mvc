<?php

class Matakuliah_model
{
    private $table = 'matakuliah';
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function getAllMatakuliah()
    {
        $this->db->query('SELECT * FROM ' . $this->table . ' GROUP BY nama_matkul');
        return $this->db->resultSet();
    }

    public function getAllJadwal()
    {
        $this->db->query('SELECT * FROM ' . $this->table . ' INNER JOIN jadwal ON ' . $this->table . '.id_matkul = jadwal.id_matkul INNER JOIN mahasiswa ON jadwal.id = mahasiswa.id');
        return $this->db->resultSet();
    }

    public function getSumSks()
    {
        $this->db->query('SELECT SUM(m.sks) AS sks FROM '  . $this->table . ' AS m INNER JOIN jadwal AS j ON m.id_matkul = j.id_matkul INNER JOIN mahasiswa AS n ON j.id = n.id GROUP BY nama');
        return $this->db->resultSet();
    }

    public function getMatakuliahById($id)
    {
        $this->db->query('SELECT * FROM ' . $this->table . ' WHERE id_matkul=:id');
        $this->db->bind('id', $id);
        return $this->db->single();
    }
}
