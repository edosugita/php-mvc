<?php

class Home extends Controller
{
    public function index()
    {
        $data = [
            'judul' => 'Home',
            'nama' => $this->model('User_model')->getUser(),
            'matkul' => $this->model('Matakuliah_model')->getAllMatakuliah(),
        ];

        $this->view('templates/header', $data);
        $this->view('home/index', $data);
        $this->view('templates/footer');
    }
}
