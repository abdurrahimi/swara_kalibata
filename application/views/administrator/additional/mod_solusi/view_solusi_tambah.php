<?php 
    echo "<div class='col-md-12'>
              <div class='box box-info'>
                <div class='box-header with-border'>
                  <h3 class='box-title'>Tambah Data Solusi</h3>
                </div>
              <div class='box-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart('administrator/tambah_solusi',$attributes); 
          echo "<div class='col-md-12'>
                  <table class='table table-condensed table-bordered'>
                  <tbody>
                    <tr><th width='130px' scope='row'>Kode Solusi</th><td><input class='form-control' type='text' name='a' value='".$kode."' readonly></td></tr>
                    <tr><th scope='row'>Nama Solusi</th><td><input class='form-control' type='text' name='b'></td></tr>
                    <tr><th scope='row'>Solusi</th><td><textarea id='editor1' class='form-control' name='c'></textarea></td></tr>
                    <tr><th scope='row'>Definisi</th><td><textarea id='editor2' class='form-control' name='d'></textarea></td></tr>
                  </tbody>
                  </table>
                </div>
              </div>
              <div class='box-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Tambah</button>
                    <a href='".site_url('administrator/solusi')."'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div>";
