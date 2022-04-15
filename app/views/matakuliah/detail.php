<div class="container">
  <div class="row">

    <div class="col-md-12 mt-5">
      <h4>Deskripsi Mata Kuliah <?= $data['matkul']['kode_matkul'] . ' ' . $data['matkul']['nama_matkul']; ?></h4>
      <hr>
    </div>

    <div class="col-md-12 mb-5">
      <table class="table">
        <tr>
          <td style="background-color: #343a40; color: #fff; width: 13%;">Mata Kuliah</td>
          <td><?= $data['matkul']['nama_matkul']; ?></td>
        </tr>
        <tr>
          <td style="background-color: #343a40; color: #fff;">Kode</td>
          <td><?= $data['matkul']['kode_matkul']; ?></td>
        </tr>
        <tr>
          <td style="background-color: #343a40; color: #fff;">SKS</td>
          <td><?= $data['matkul']['sks']; ?></td>
        </tr>
        <tr>
          <td style="background-color: #343a40; color: #fff;">SCPL</td>
          <td><?= $data['matkul']['scpl']; ?></td>
        </tr>
        <tr>
          <td style="background-color: #343a40; color: #fff;">CPMK</td>
          <td><?= $data['matkul']['cpmk']; ?></td>
        </tr>
        <tr>
          <td style="background-color: #343a40; color: #fff;">Deskripsi</td>
          <td><?= $data['matkul']['deskripsi']; ?></td>
        </tr>
      </table>
    </div>
  </div>
</div>