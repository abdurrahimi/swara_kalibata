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
              <button name='lupa' type="submit" class="btn btn-success btn-block btn-flat">Kirim</button>
            </div><!-- /.col -->
          </div>
        </form>
  </div>

<script type="text/javascript">
  document.getElementById("email").focus();
</script>