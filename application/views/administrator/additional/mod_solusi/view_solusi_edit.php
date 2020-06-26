<?php 
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Edit Data Solusi</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('administrator/edit_solusi',$attributes); 
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <input type='hidden'  value='$rows[id_solusi]' name='id'>
                    <tr><th width='130px' scope='row'>Kode solusi</th><td><input class='form-control' type='text' name='a' value='$rows[kode_solusi]' readonly></td></tr>
                    <tr><th scope='row'>Nama solusi</th><td><input class='form-control' type='text' name='b' value='$rows[nama_solusi]'></td></tr>
                    <tr><th scope='row'>Solusi</th><td><textarea id='editor1' class='form-control' name='c'>$rows[solusi]</textarea></td></tr>
                    <tr><th scope='row'>Definisi</th><td><textarea id='editor2' class='form-control' name='d'>$rows[definisi]</textarea></td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='".site_url('administrator/solusi')."'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div>";
