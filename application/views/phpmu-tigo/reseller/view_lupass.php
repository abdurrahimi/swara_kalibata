  <p class='sidebar-title text-danger produk-title'> Login Users</p> 

  <div class='alert alert-info'>Masukkan username dan password pada form berikut untuk login,...</div>
  <br>
  <div class="logincontainer">
      <form action="" method="post">
          <?php 
              echo $this->session->flashdata('message'); 
              $this->session->unset_userdata('message');
          ?>
          <div class="form-group <?= !empty($email)?'has-error':'has-feedback' ?>">
            <input id="email" type="email" class="form-control" name='a' value="<?= !empty($email)?$email:'' ?>" placeholder="Email" required>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="row">
            <div class="col-xs-4">
              
            </div>
            <div class="col-xs-4">
              
            </div><!-- /.col -->
            
          </div>
          <div align="center">
              <button name='lupa' type="submit" class="btn btn-success">Kirim</button> <a href="<?= base_url('auth/login') ?>" class="btn btn-default">Batal</a> <br><br> Anda Belum Punya akun? <a href="<?php echo base_url(); ?>auth/register" title="Mari gabung bersama Kami" class="link">Daftar Disini.</a>
          </div>
        </form>
  </div>

<script type="text/javascript">
  document.getElementById("email").focus();
</script>