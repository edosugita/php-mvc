<div class="container">
    <main>
        <div class="row">
            <div class="col-md-12 mt-5">
                <h3>Daftar Mahasiswa Yang Mengikuti Matakuliah</h3>
                <hr>
            </div>
            <div class="col-md-12 mb-5">
                <div class="table-responsive">
                    <table class="table table-striped tb">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">NIM</th>
                                <th scope="col">NAMA</th>
                                <th scope="col">JURUSAN</th>
                                <th scope="col">NAMA MATKUL</th>
                                <th scope="col">DETAIL</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1; ?>
                            <?php foreach ($data['matkul'] as $jadwal) : ?>
                                <tr>
                                    <td><?= $i++ ?></td>
                                    <td scope="col"><?= $jadwal['nrp']; ?></td>
                                    <td scope="col"><?= $jadwal['nama']; ?></td>
                                    <td scope="col"><?= $jadwal['jurusan']; ?></td>
                                    <td scope="col"><?= $jadwal['nama_matkul']; ?></td>
                                    <td scope="col"><a href="<?= BASEURL ?>/matakuliah/detail/<?= $jadwal['id_matkul'] ?>" class="btn btn-success">Detail Matkul</a></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </main>
</div>