<script>
        shortcut.add("F1",function() {
          window.open('<?php echo base_url(); ?>reseller/transaksi_selesai/', '_self');
        });


        shortcut.add("F4",function() {
          return popitup('<?php echo base_url(); ?>reseller/transaksi_penjualan_print/', '_self');
        });
      </script>
<div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">POS Penjualan</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                <?php
                  $attributes = array('class'=>'form-horizontal','role'=>'form');
                  echo form_open_multipart('reseller/pos',$attributes);
                  $kode_transaksi = 'TRX-'.date('YmdHis');
                ?>
                      <div class="row">
                      <div class="col-md-9">
                      <table class="table table-bordered table-striped">
                        <thead>
                          <tr>
                            <th style='width:40px' class='text-center'>No</th>
                            <th>Nama Produk</th>
                            <th width='120px'>Harga Jual</th>
                            <th width='80px' class='text-center'>Jumlah</th>
                            <th width='80px' class='text-center'>Satuan</th>
                            <th  class='text-center'>Sub Total</th>
                            <th width='70px' class='text-center'>Action</th>
                          </tr>
                        </thead>
                        <?php
                            echo "<tr>
                                    <td></td>
                                    <input type='hidden' value='".$this->uri->segment(3)."' name='idpd'>
                                    <td ><select name='aa' class='select2 form-control' onchange=\"changeValue(this.value)\" autofocus>
                                                                          <option value='' selected> Cari Barang </option>";
                                                                          $jsArray = "var prdName = new Array();\n";
                                                                          foreach ($barang as $r){
                                                                            $disk = $this->model_app->edit('rb_produk_diskon',array('id_produk'=>$r['id_produk'],'id_reseller'=>$this->session->id_reseller))->row_array();
                                                                            if ($r['id_produk']==$row['id_produk']){
                                                                              echo "<option value='$r[id_produk]' selected>$r[nama_produk]</option>";
                                                                              $jsArray .= "prdName['" . $r['id_produk'] . "'] = {name:'" . addslashes($r['harga_konsumen']-$disk['diskon']) . "',desc:'".addslashes($r['satuan'])."'};\n";
                                                                            }else{
                                                                              echo "<option value='$r[id_produk]'>$r[nama_produk]</option>";
                                                                              $jsArray .= "prdName['" . $r['id_produk'] . "'] = {name:'" . addslashes($r['harga_konsumen']-$disk['diskon']) . "',desc:'".addslashes($r['satuan'])."'};\n";
                                                                            }
                                                                          }
                                                                      echo "</select></td>
                                    <td><input class='form-control' type='number' name='bb' value='$row[harga_jual]' id='harga'> </td>
                                    <td><input class='form-control' type='number' name='dd' value='1'></td>
                                    <td><input class='form-control' type='text' name='ee' id='satuan' value='$row[satuan]' readonly='on'> </td>
                                    <td></td>
                                    <td class='text-center'><button type='submit' name='submit' class='btn btn-success  btn-xs'><span class='glyphicon glyphicon-ok' aria-hidden='true'></span> Submit</button>

                                    </td>
                                  </tr>";
                          ?>
                        </form>
                        <tbody>
                      <?php
                        $no = 1;
                        $total = 0;
                        foreach ($record as $row){
                        $sub_total = ($row['harga_jual']*$row['jumlah']);
                        $diskon = $row['diskon'];
                        $total += $sub_total - $diskon;
                        echo "<tr><td class='text-center'>$no</td>
                                  <td>$row[nama_produk]</td>
                                  <td class='text-center'>".rupiah($row['harga_jual'])."</td>
                                  <td class='text-center'>$row[jumlah]</td>
                                  <td class='text-center'>$row[satuan]</td>
                                  <td>".rupiah($sub_total)."</td>
                                  <td class='text-center'>
                                    <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url()."reseller/delete_pos_temp/$row[id_penjualan_detail]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='glyphicon glyphicon-remove'></span> Delete </a>
                                  </td>
                              </tr>";
                          $no++;
                        }

                        echo "<tr class='success'>
                                <td colspan='5'><b>Total</b></td>
                                <td colspan='2'><b>Rp ".rupiah($total)."</b></td>
                              </tr>";
                      ?>
                      </tbody>
                    </table>
                    </div>
                    <div class="col-md-3">
                    <?php
                      $attributes = array('class'=>'form-horizontal','role'=>'form');
                      echo form_open_multipart('reseller/pos',$attributes);
                      $kode_transaksi = 'TRX-'.date('YmdHis');
                    ?>
                    <table class='table table-condensed table-bordered'>
                    <tbody>
                    <tr><td colspan="2"><input type='text' class='form-control' placeholder='Nomor Transaksi' id='kode_transaksi' value='<?=$kode_transaksi;?>' name='a' readonly></td></tr>
                      <tr><td colspan="2"><input type='text' class='form-control' placeholder='Nama Konsumen' id='nama_konsumen' value='Nama Konsumen' name='b' required></td></tr>
                    </tbody>
                    <tbody>
                    <tr><td width='100px'><b>Total Bayar</b></td><td><input type='text' class='form-control formbesar' id='total_bayar' value="<?=rupiah($total);?>" readonly></td></tr>
                    <tr><td width='100px'><b>Jumlah Bayar</b></td><td><input type='text' class='form-control formbesar' id='jumlah_bayar' name='jumlah_bayar' onkeyup="uang_kembali()" required></td></tr>
                    <tr><td width='100px'><b>Uang Kembali</b></td><td><div id='uang_kembali'></div></td></tr>
                    </tbody>
                    </table>
                    <?php echo"
                    <center>
                      <input type='submit' name='selesai' style='padding:5px' class='btn btn-info btn-sm' value='Simpan' >&nbsp;&nbsp;&nbsp;&nbsp;
                      <button type='button'  onclick=\"return popitup()\" class='btn btn-success btn-sm'><i class='fa fa-print'></i> Cetak</button>
                      </center>";
                    ?>
                    </form>
                    </div>
                    </div>
                </div>
                </div>
                </div>

              </div>


<script type="text/javascript">
<?php echo $jsArray; ?>
  function changeValue(id){
    document.getElementById('harga').value = prdName[id].name;
    document.getElementById('satuan').value = prdName[id].desc;
  };
  $(document).ready(function(){
    $('#jumlah_bayar').maskMoney({prefix:'', thousands:',', precision:0});


  });
  function uang_kembali(){
        var total_bayar = $('#total_bayar').val();
        var jumlah_bayar = $('#jumlah_bayar').val();

        setTimeout("uang_kembali()", 1500);
        $.ajax({
            type: "POST",
            data: "total_bayar="+total_bayar+"&jumlah_bayar="+jumlah_bayar,
            url: "<?php echo site_url('reseller/uang_kembali'); ?>"
            }).done(function( data ) {
            $('#uang_kembali').html(data);
        });
      }
</script>

<script language="javascript" type="text/javascript">

      function popitup() {
        var kode_trx = $('#kode_transaksi').val();
        var nama_konsumen = $('#nama_konsumen').val();
        var jumlah_bayar = $('#jumlah_bayar').val();
        var jumbayar = jumlah_bayar.replace(/,/g, '');
        var url = '<?php echo base_url();?>reseller/transaksi_penjualan_print/'+kode_trx+'/'+nama_konsumen+'/'+jumbayar;
        console.log(url);
        newwindow=window.open(url,'name','height=700,width=550');
        if (window.focus) {newwindow.focus()}
        return false;

      }
 </script>
