<style type="text/css">
  @media screen and (max-width: 600px) {
    div{
      padding-right:0px !important; padding-left:0px !important
    }
    .box{
      padding-left: 15px !; padding-right: 15px !important;
    }
  }
</style>
<script language="JavaScript" type="text/JavaScript">
  function showSub(){
    <?php
    $query = $this->db->query("SELECT * FROM rb_kategori_produk");
    foreach ($query->result_array() as $data) {
       $id_kategori_produk = $data['id_kategori_produk'];
       echo "if (document.demo.a.value == \"".$id_kategori_produk."\")";
       echo "{";
       $query_sub_kategori = $this->db->query("SELECT * FROM rb_kategori_produk_sub where id_kategori_produk='$id_kategori_produk'");
       $content = "document.getElementById('sub_kategori_produk').innerHTML = \"  <option value=''>- Pilih Sub Kategori Produk -</option>";
       foreach ($query_sub_kategori->result_array() as $data2) {
           $content .= "<option value='".$data2['id_kategori_produk_sub']."'>".$data2['nama_kategori_sub']."</option>";
       }
       $content .= "\"";
       echo $content;
       echo "}\n";
    }
    ?>
    }
    var i=1;
    var row = 3;
    function addrow(){      
      i = i+1;
      var nr = row+1;
      var html =  
                "<tr id='"+i+"'><td><div class='col-md-9' style='padding-left:0px !important; padding-right:0px !important'><input type='text' class='form-control' name='varian[]' placeholder='Masukkan nama varian...'></div><div class='col-md-2' style='padding-right:0px !important; '><input type='text' class='form-control' name='stock[]' placeholder='Jumlah Stock' required></div><a onclick='removerow("+nr+")' style='font-size:36px; color:red; margin-left:50px !important' class='fa fa-minus-circle'></a></td></tr>";
      $('table > tbody > tr').eq(row).after(html);
      document.getElementById("varian").rowSpan = i;
      document.getElementById("varians").required = true;
      document.getElementById("stocks").required = true;
      row = row+1;
    }

    function removerow(r){
      if(r==3){
        alert('Tidak Bisa Menghapus Varian Pertama');
        return;
      }
      console.log(r); 
      $('table > tbody > tr').eq(row).remove();
      i=i-1;
      row = row-1;
      document.getElementById("varian").rowSpan = i;
    }
</script>

<?php 
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Produk Baru</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form','name'=>'demo');
              echo form_open_multipart('reseller/tambah_produk',$attributes); 
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden' name='id' value=''>
                    <tr><th scope='row'>Kategori</th>                   <td><select name='a' class='form-control' onchange=\"showSub()\" required>
                                                                            <option value='' selected>- Pilih Kategori Produk -</option>";
                                                                            foreach ($record as $row){
                                                                                echo "<option value='$row[id_kategori_produk]'>$row[nama_kategori]</option>";
                                                                            }
                    echo "</td></tr>
                    <tr><th scope='row'>Sub Kategori</th>                   <td><select name='aa' class='form-control' id='sub_kategori_produk'>
                                                                              <option value='' selected>- Pilih Sub Kategori Produk -</option>
                                                                            </td></tr>
                    <tr><th width='130px' scope='row'>Nama Produk</th>  <td><input type='text' class='form-control' name='b' required></td></tr>
                    <tr id='1'><th id='varian' scope='row'>Varian</th><td><div class='col-md-9' style='padding-left:0px !important; padding-right:0px !important'><input id='varians' type='text' class='form-control varian' name='varian[]' placeholder='Masukkan nama varian...'></div><div class='col-md-2' style='padding-right:0px !important;'><input id='stocks' type='text' class='form-control varian' name='stock[]' placeholder='Jumlah Stock'></div><a onclick='removerow(3)' style='font-size:36px; color:red; margin-left:50px !important' class='fa fa-minus-circle'></a></td></tr>
                    <tr><td colspan='2'><div class='pull-right' style='padding-left:0px !important'><a class='btn btn-primary' onclick='addrow()'><i class='fa fa-plus'></i>&nbspAdd More</a></div></td></tr>
                    <tr><th scope='row'>Satuan</th>                     <td><input type='text' class='form-control' name='c'></td></tr>
                    <tr><th scope='row'>Berat / Gram</th>                      <td><input type='number' class='form-control' name='berat'></td></tr>
                    <tr><th scope='row'>Harga Modal</th>                 <td><input type='number' class='form-control' name='d'></td></tr>
                    <input type='hidden' class='form-control' name='e' value='0'>
                    <tr><th scope='row'>Harga Jual</th>             <td><input type='number' class='form-control' name='f'></td></tr>
                    <tr><th scope='row'>Diskon</th>                 <td><input type='number' class='form-control' name='diskon'></td></tr>
                    <tr><th scope='row'>Stok Awal</th>                 <td><input type='number' class='form-control' name='stok'></td></tr>
                    <tr><th scope='row'>Keterangan</th>                 <td><textarea class='textarea form-control' name='ff' style='height:180px'></textarea></td></tr>
                    <tr><th scope='row'>Foto Produk</th>                     <td><input type='file' id='fileupload' class='form-control' name='userfile[]' multiple>Multiple Upload, Allowed File : .gif, jpg, png
                                                                                  <div id='dvPreview'></div> </td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Tambahkan</button>
                    <a href='index.php'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div>";
