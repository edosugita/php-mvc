<?php

class Matakuliah extends Controller
{
    public function index()
    {
        $data = [
            'judul' => 'Home',
            'nama' => $this->model('User_model')->getUser(),
            'matkul' => $this->model('Matakuliah_model')->getAllMatakuliah(),
        ];

        $this->view('templates/header', $data);
        $this->view('home/matkul', $data);
        $this->view('templates/footer');
    }

    public function mahasiswa()
    {
        $data = [
            'judul' => 'Matakuliah',
            'nama' => $this->model('User_model')->getUser(),
            'matkul' => $this->model('Matakuliah_model')->getAllJadwal(),
            'sumsks' => $this->model('Matakuliah_model')->getSumSks(),
        ];

        $this->view('templates/header', $data);
        $this->view('matakuliah/index', $data);
        $this->view('templates/footer');
    }

    public function detail($id)
    {
        $data = [
            'judul' => 'Detail Matakuliah',
            'matkul' => $this->model('Matakuliah_model')->getMatakuliahById($id),
        ];

        $this->view('templates/header', $data);
        $this->view('matakuliah/detail', $data);
        $this->view('templates/footer');
    }
}
