<div class="container mt-5 mb-5">
    <main>
        <div class="row">
            <div class="col-md-12">
                <h3>Daftar Matakuliah</h3>
                <hr>
            </div>
            <div class="col-md-12" style="margin-top: 30px;">
                <div class="table-responsive">
                    <table class="table table-striped tb">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">KODE</th>
                                <th scope="col">NAMA MATKUL</th>
                                <th scope="col">SKS</th>
                                <th scope="col">JADWAL & RUANGAN</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1; ?>
                            <?php foreach ($data['matkul'] as $display) : ?>
                                <tr>
                                    <td scope="col" colspan="6">
                                        <span class="badge badge-info">S1 Teknik Informatika</span>
                                        <span class="badge badge-secondary">Teknik Elektro</span>
                                        <span class="badge badge-warning" style="color: #fff;">FT</span>
                                        <span class="badge badge-danger"><?= $display['angkatan']; ?></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td scope=" col"><?= $i++; ?></td>
                                    <td scope="col"><?= $display['kode_matkul']; ?></td>
                                    <td scope="col"><?= $display['nama_matkul']; ?></td>
                                    <td scope="col"><?= $display['sks']; ?></td>
                                    <td scope="col">1. <?= $display['hari'] . ' ' . $display['jam'] . '<br>' . $display['ruangan']; ?></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </main>
</div>