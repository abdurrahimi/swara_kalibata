  <div class="col-xs-12">
    <div class="box">
      <div class="box-header">
        <h3 class="box-title">Data Konfirmasi Pembayaran Konsumen</h3>
      </div><!-- /.box-header -->
      <div class="box-body">
        <table id="example1" class="table table-bordered table-striped">
          <thead>
            <tr>
              <th style='width:30px'>No</th>
              <th>Kode Transaksi</th>
              <th>Tagihan</th>
              <th>Transfer</th>
              <th>Ke Rekening</th>
              <th>Nama Pengirim</th>
              <th>Waktu Trx</th>
              <th>Lampiran</th>
              <th>Status</th>
            </tr>
          </thead>
          <tbody>
        <?php
          $no = 1;
          foreach ($record->result_array() as $row){
          if ($row['proses']=='0'){ $proses = '<i class="text-danger">Pending</i>'; }elseif($row['proses']=='1'){ $proses = '<i class="text-success">Proses</i>';  }else{ $proses = '<i class="text-info">Konfirmasi</i>'; }
          $total = $this->db->query("SELECT sum((a.harga_jual*a.jumlah)-a.diskon) as total FROM `rb_penjualan_detail` a where a.id_penjualan='$row[id_penjualan]'")->row_array();
          $image = base_url()."reseller/download/$row[bukti_transfer]";
          echo "<tr>
                    <td>$no</td>
                    <td><a href='".base_url().$this->uri->segment(1)."/detail_penjualan/$row[id_penjualan]'>$row[kode_transaksi]</a></td>
                    <td>$row[total_transfer]</td>
                    <td>Rp ".rupiah($total['total']+$row['ongkir'])."</td>
                    <td>$row[nama_bank]</td>
                    <td>$row[nama_pengirim]</td>
                    <td>".tgl_indo($row['tanggal_transfer'])."</td>
                    <td class='text-center'><a class='btn btn-success btn-xs' onclick='show_pembayaran(\"".$image."\")'>Show File</a></td>
                    <td>$proses</td>
                </tr>";
            $no++;
          }
        ?>
        </tbody>
      </table>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body">
        <img id='gambar_pemb' src="" style="max-width: 100%">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
  function show_pembayaran(gambar)
  {
    document.getElementById("gambar_pemb").src = gambar+"";
    $("#myModal").modal("show");
  }
</script>
