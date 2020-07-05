<style type="text/css">
.modal-dialog,
.modal.right .modal-dialog {
	position: fixed;
	margin: auto;
	width: 270px;
	height: 100%;
	-webkit-transform: translate3d(0%, 0, 0);
		-ms-transform: translate3d(0%, 0, 0);
		 -o-transform: translate3d(0%, 0, 0);
			transform: translate3d(0%, 0, 0);
}

.modal-content,
.modal.right .modal-content {
	height: 100%;
	overflow-y: auto;
}

.modal-body,
.modal.right .modal-body {
	padding: 15px 15px 80px;
}

.modal.right.fade .modal-dialog {
	right: -320px;
	-webkit-transition: opacity 0.3s linear, right 0.3s ease-out;
	   -moz-transition: opacity 0.3s linear, right 0.3s ease-out;
		 -o-transition: opacity 0.3s linear, right 0.3s ease-out;
			transition: opacity 0.3s linear, right 0.3s ease-out;
}

.modal.right.fade.in .modal-dialog {
	right: 0;
}

div.modal-backdrop.fade.in{
	display: none !important;
}

.modal-content {
	border-radius: 0;
	border: none;
}

.modal-header {
	border-bottom-color: #fff;
	background-color: #2a9230;
	box-shadow: inset 0px -140px 200px -50px rgba(0,0,0,0.15);
}


</style>
<script type="text/javascript">
	function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('#dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
<?php
$row_user = $this->db->where('id_konsumen',$this->session->userdata('id_konsumen'))->get('rb_konsumen')->row();
echo "<div class='wrapper'>
	<div class='header-logo'>";
		  $iden = $this->model_utama->view('identitas')->row_array();
		  $logo = $this->model_utama->view_ordering_limit('logo','id_logo','DESC',0,1);
		  foreach ($logo->result_array() as $row) {
			echo "<a href='".base_url()."'><img style='height:40px' src='".base_url()."asset/logo/$row[gambar]'/></a>";
		  }
	echo "
	</div>
	<div class='mainmenu hidden-xs'>
	    <ul class='mainnav'>
	        <li class='hassubs first'><a href='#'><span class='glyphicon glyphicon-th-list'></span>&nbsp; Kategori</a>
	        	<ul class='dropdown-phpmu'>";
	        	$kategori = $this->model_app->view('rb_kategori_produk');
				foreach ($kategori->result_array() as $rows) {
					$sub_kategori = $this->db->query("SELECT * FROM rb_kategori_produk_sub where id_kategori_produk='$rows[id_kategori_produk]'");
					if ($sub_kategori->num_rows()>=1){
						echo "<li class='subs hassubs'><a href='".base_url()."produk/kategori/$rows[kategori_seo]'> $rows[nama_kategori] <span class='caret caret-right'></span></a>
							  <ul class='dropdown-phpmu'>";
							   foreach ($sub_kategori->result_array() as $row) {
								  echo "<li class='subs'><a href='".base_url()."produk/subkategori/$row[kategori_seo_sub]'>$row[nama_kategori_sub]</a></li>";
							   }
							  echo "</ul></li>";
					}else{
						echo "<li class='subs'><a href='".base_url()."produk/kategori/$rows[kategori_seo]'> <a href='".base_url()."produk/kategori/$rows[kategori_seo]'> $rows[nama_kategori]</a></li>";
					}
				}
				echo "</ul>";
	        echo "</li>
	    </ul>
	</div>

	<div class='header-menu'>
		<div class='header-search'>
			".form_open('produk/index')."
				<input type='text' placeholder='Aku Mau Belanja..'' name='kata' class='search-input' required/>
				<input type='submit' value='Search' name='cari' class='search-button'/>
			</form>
		</div>
	</div>
	<div class='header-addons'>
		<span class='city'>
		  ".hari_ini(date('w')).", ".tgl_indo(date('Y-m-d')).", <span id='jam'></span></span><br>";
		  if ($this->session->id_konsumen != ''){
		      $ksm = $this->db->query("SELECT * FROM rb_konsumen where id_konsumen='".$this->session->id_konsumen."'")->row_array();
		  }

          if ($this->session->id_konsumen != ''){
          	$isi_keranjang = $this->db->query("SELECT sum(jumlah) as jumlah FROM rb_penjualan_detail where id_penjualan='".$this->session->idp."'")->row_array();
            echo "<a href='".base_url()."members/orders_report'>Status Transaksi</a> &nbsp; &nbsp;
            	  <a href='".base_url()."members/keranjang'><b>
            	  	<span class='glyphicon glyphicon glyphicon-shopping-cart' style='font-size:19px'></span></b>
            	  	<span class='badge badgee'>".rupiah($isi_keranjang['jumlah'])."</span></a> &nbsp;
            	  	<button type='button' class='btn btn-xs btn-success' data-toggle='modal' data-target='#myModal2'>
						My Account
					</button>";


          }else{
          	$isi_keranjang = $this->db->query("SELECT sum(jumlah) as jumlah FROM rb_penjualan_temp where session='".$this->session->idp."'")->row_array();
			 echo "<a href='".base_url()."members/orders_report'>Status Transaksi</a> &nbsp; 
			 		<a href='".base_url()."produk/keranjang'>
			 			<span class='glyphicon glyphicon glyphicon-shopping-cart' style='font-size:19px'></span></b>
            	  	<span class='badge badgee'>".rupiah($isi_keranjang['jumlah'])."</span></a> &nbsp; ";
            echo "<a class='btn btn-xs btn-success' style='width:60px' href='".base_url()."auth/login'>Login</a>
                  <a class='btn btn-xs btn-default' style='width:60px; color:#000' href='".base_url()."auth/register'>Daftar</a>";

          }
          $foto = !empty($row_user->foto)?base_url('asset/foto_user/'.$row_user->foto):base_url('asset/foto_user/blank.png');
          $saldo_masuk = $this->db->query('select coalesce(sum(saldo),0) from rb_saldo_konsumen where tipe = 1 and id_konsumen = ?',$row_user->id_user);
          $saldo_keluar = $this->db->query('select coalesce(sum(saldo),0) from rb_saldo_konsumen where tipe = 2 and id_konsumen = ?',$row_user->id_user);
	echo "</div>
</div>
<div class='modal right fade' id='myModal2' tabindex='-1' role='dialog' aria-labelledby='myModalLabel2'>
	<div class='modal-dialog' role='document'>
		<div class='modal-content'>
			<div class='modal-header'>
				<span style='font-size:20px'><ion-icon name='person-circle-outline'></ion-icon>&nbsp&nbspProfile</span>
				<button type='button' class='close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
			</div>
			<div class='modal-body' style='background-color:#fff'>
				<table>
					<tr>
						<td width='30%' style='padding-right:10px'>
							<center>
								<a style='padding:1px 12px' href='".base_url()."members/profile'><img src='".$foto."' style='width:48px; height:48px; border-radius:50%'></a>
							</center>
						</td>
						<td style='color:#000 !important; vertical-align: center;font-family: Arial, sans-serif;'>
							<a style='padding:1px 12px' href='".base_url()."members/profile'><b style='font-size:16px; color:#000 !important; font-family: Arial, sans-serif;'>".$row_user->nama_lengkap."</b></a><br>
							&nbsp&nbsp<i style='font-size:12px'><ion-icon name='person-outline'></ion-icon>&nbsp;Member</i>
						</td>
					</tr>
				</table>
				<br>
				<hr>
				<div class='panel-group' id='accordion'>
				  <div class='panel panel-default' style='border:0px !important'>
				    <div class='panel-heading'>
				      <h4 class='panel-title'>
				        <a class='accordion-toggle' data-toggle='collapse' data-parent='#accordion' href='#collapseOne'>
				          <ion-icon name='arrow-forward-circle-outline'></ion-icon>&nbsp;&nbsp;&nbsp;&nbsp;Profile
				        </a>
				      </h4>
				    </div>

				    <div id='collapseOne' class='panel-collapse collapse in' style='margin-left:10px'>
				      <div class='panel-body' >
				        <a class='dropdown-item' href='".base_url()."members/profile' style='color:#000'><ion-icon name='person' ></ion-icon>&nbsp;&nbsp;My Profile</a><br><hr>
				        <a class='dropdown-item' href='".base_url()."members/orders_report' style='color:#000'><ion-icon name='pricetags-outline' style='color:red'></ion-icon>&nbsp;&nbsp;Status Transaksi</a>
				      </div>
				    </div>
				  </div>
				  <br>
				  <div class='panel panel-default' style='border:0px !important'>
				    <div class='panel-heading'>
				      <h4 class='panel-title'>
				        <a class='accordion-toggle collapsed' data-toggle='collapse' data-parent='#accordion' href='#collapseTwo'>
				          <ion-icon name='wallet-outline'></ion-icon>&nbsp;&nbsp;&nbsp;&nbsp;Saldo
				        </a>
				      </h4>
				    </div>
				    <div id='collapseTwo' class='panel-collapse collapse in'>
				      <div class='panel-body'>
				        <table style='width:100%; margin-left:10px'>
				        	<tr>
				        		<td style='width:50%; color:#000'><ion-icon name='cash-outline' style='color:#2a9230'></ion-icon>&nbsp;&nbsp;Sisa saldo </td>
				        		<td class='text-right' style='color:#656565'><b>Rp ".number_format(($saldo_masuk-$saldo_keluar),0,'.',',').",- </b></td>
				        	</tr>
				        </table>
				      </div>
				    </div>
				  </div>
				</div>
				<a class='btn btn-lg btn-danger col-sm-10' style='padding:1px 12px' href='".base_url()."members/logout'><ion-icon name='log-out-outline' style='color:#fff;'></ion-icon>&nbsp;&nbsp;&nbsp;&nbsp;Logout</a>
			</div>
		</div><!-- modal-content -->
	</div><!-- modal-dialog -->
</div><!-- modal -->
<div class='main-menu sticky'>
	<div class='wrapper'>";
		function main_menu() {
			$ci = & get_instance();
	        $query = $ci->db->query("SELECT id_menu, nama_menu, link, id_parent FROM menu where aktif='Ya' AND position='Bottom' order by urutan");
	        $menu = array('items' => array(),'parents' => array());
	        foreach ($query->result() as $menus) {
	            $menu['items'][$menus->id_menu] = $menus;
	            $menu['parents'][$menus->id_parent][] = $menus->id_menu;
	        }
	        if ($menu) {
	            $result = build_main_menu(0, $menu);
	            return $result;
	        }else{
	            return FALSE;
	        }
	    }

		function build_main_menu($parent, $menu) {
			$ci = & get_instance();
	        $html = "";
	        if (isset($menu['parents'][$parent])) {
	        	if ($parent=='0'){
		            $html .= "<ul class='the-menu'>
		            			<li><a href='".base_url()."' style='background: url(".base_url()."asset/images/home.png) no-repeat center; font-size:0; width:34px;'><br></a></li>";
		        }else{
		        	$html .= "<ul>";
		        }
	            foreach ($menu['parents'][$parent] as $itemId) {
	                if (!isset($menu['parents'][$itemId])) {
	                    if(preg_match("/^http/", $menu['items'][$itemId]->link)) {
	                        $html .= "<li><a target='_BLANK' href='".$menu['items'][$itemId]->link."'>".$menu['items'][$itemId]->nama_menu."</a></li>";
	                    }else{
	                        $html .= "<li><a href='".base_url().''.$menu['items'][$itemId]->link."'>".$menu['items'][$itemId]->nama_menu."</a></li>";
	                    }
	                }
	                if (isset($menu['parents'][$itemId])) {
	                    if(preg_match("/^http/", $menu['items'][$itemId]->link)) {
	                        $html .= "<li><a target='_BLANK' href='".$menu['items'][$itemId]->link."'><span>".$menu['items'][$itemId]->nama_menu."</span></a>";
	                    }else{
	                        $html .= "<li><a href='".base_url().''.$menu['items'][$itemId]->link."'><span>".$menu['items'][$itemId]->nama_menu."</span></a>";
	                    }
	                    $html .= build_main_menu($itemId, $menu);
	                    $html .= "</li>";
	                }
	            }

	            if ($parent=='0'){
		            // Keranjang Bisa Disini...
				}

	            $html .= "</ul>";
	        }
	        return $html;
	    }
	    echo main_menu();
	echo "</div>
</div>";



echo "<div class='secondary-menu'>
	<div class='wrapper'>
		<ul>";
				$tag = $this->model_utama->view_ordering_limit('tag','id_tag','RANDOM',0,14);
		  		foreach ($tag->result_array() as $row) {
					echo "<li><a href='".base_url()."tag/detail/$row[tag_seo]'>$row[nama_tag]</a></li>";
				}
		echo "</ul>
	</div>
</div>";
