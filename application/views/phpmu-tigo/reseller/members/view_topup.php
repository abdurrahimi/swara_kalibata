<style type="text/css">
	.card-saldo{
		background-color: #fcf8e3;border-color: #faebcc; color:##000000; box-shadow: 0 4px 3px 0 rgba(2,2,2,0.2); padding:20px; margin-top:10px;
	}
</style>
<?php
$row_user = $this->db->where('id_konsumen',$this->session->userdata('id_konsumen'))->get('rb_konsumen')->row();
$saldo_masuk = $this->db->query('select coalesce(sum(saldo),0) from rb_saldo_konsumen where tipe = 1 and id_konsumen = ?',$row_user->id_user);
$saldo_keluar = $this->db->query('select coalesce(sum(saldo),0) from rb_saldo_konsumen where tipe = 2 and id_konsumen = ?',$row_user->id_user);
?>
<div class='col-md-12'>
	<div class='col-md-9' style='padding:0px'>
		<h3>Sisa Saldo : </h3> <h2 style='color:#656565'> Rp <?= number_format(($saldo_masuk-$saldo_keluar),0,'.',',') ?></h2>
	</div>
	<br>
	<br>
	<div class='col-md-9' style='padding:0px; margin-top: 50px'>
		<h3>Pilih Nominal Topup</h3>
	</div>
	<div class='col-md-3' style='padding:0px'>";
		<?php include "sidebar_pelapak.php"; ?>
	</div>
	<br>
	<form method="post" action="">
		<div class="row">
			<div class="col-md-12">

				<div class="form-check form-check-inline" style="display: inline-block; margin-right: 50px;">
					<?php foreach ($listData as $key => $value) : ?>
						<label class="form-check-label card-saldo col-sm" for="inlineRadio0" style="">
							<input class="form-check-input" type="radio" name="id_varian" id="inlineRadio0" value="3">
							Rp <?= number_format($value->nominal,0,',','.') ?>,-
						</label>
					<?php endforeach; ?>
				</div>
			</div>
			
			<div class="col-md-6" style="margin-top: 50px">
				<div class="form-group">
					<label>Metode Pembayaran</label>
					<select class="form-control">
						<option>Transfer Bank</option>
						<option>Kartu Kredit</option>
					</select>
					
				</div>
			</div>
		</div>
		<input type="submit" class="btn btn-primary" name="submit" value="BAYAR" style="margin-right: 50px;margin-top: 50px ">
	</form>
	
</div>
<div style='clear:both'><br></div>
