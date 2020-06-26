<!DOCTYPE html>
<html>
<head>
  <title>Print Data</title>
  <style type="text/css">
  body {

    font-size: 11pt;
  }
  .left{
    float:left;
    width:50%;
  }

  .right{
    float:right;
    width:50%;
  }

  .td {
    border-bottom: 1px dotted #000;
  }
  </style>
  <link rel="stylesheet" type="text/css" href="<?php echo  base_url(); ?>asset/printer.css">
</head>
<body onload="window.print()">
<?php 
          echo "<table border='0' class='left'>
                    <tr><td colspan='2'><strong>$rows[nama_reseller]</strong></td></tr>
                    <tr><td colspan='2'>$rows[alamat_lengkap]</td></tr>
                    <tr><td colspan='2'>Telp. $rows[no_telpon]</td></tr>
                  </table>

                <div style='clear:both'><br></div>
                  <table>
                    <tr><td width='140px'>No. Transaksi</td><td> : $kode</td></tr>
                    <tr><td scope='row'>Pelanggan</td> <td> : ".urldecode($namapel)."</td></tr>
                  </table>
                <div style='clear:both'><br></div>
                <table width='100%' border='0'>
                      <tbody>";
                        $no = 1;
                        $total = 0;
                        foreach ($record as $r){
                            $sub_total = ($r['harga_jual']*$r['jumlah']);
                            $diskon = $r['diskon'];
                            $total += $sub_total - $diskon;
                            echo "<tr>
                                  <td class='td'>$no</td>
                                  <td class='td'>$r[nama_produk]</td>
                                  <td class='td' align=right>$r[jumlah]</td>
                                  <td class='td'>$r[satuan]</td>
                                  <td class='td' class='td' align=right>".rupiah($r['harga_jual'])."</td></tr>";
                            $no++;
                          }
                     
                    echo "</tbody>
                      <tr><td colspan='4' align=right>Sub Total : </td>   <td class='td' align=right>".rupiah($total)."</td></tr>
                      <tr><td colspan='4' align=right>Bayar Tunai : </td> <td class='td' align=right>".rupiah($jumlah_bayar)."</td></tr>
                      <tr><td colspan='4' align=right>Kembali : </td>     <td class='td' align=right>".rupiah($jumlah_bayar-$total)."</td></tr>
                      
                      <tr class='alert alert-danger'>
                          <td colspan='7'><i>Terbilang : ".terbilang($total)."</i> <br></td>
                      </tr>
                  </table>

                  <center>Barang yang sudah dibeli tidak dapat ditukar/dikembalikan.<br>
                  ";
?>

