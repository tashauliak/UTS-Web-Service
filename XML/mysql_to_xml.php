<?php

Header('Content-type: text/xml');
//koneksi ke database
$connection = mysqli_connect("localhost", "root", "", "data_wp") or die("Error " . mysqli_error($connection));
$xml = new SimpleXMLElement('<xml/>');
//menampilkan data dari database, table tb_anggota
$sql = "select * from wajib_pajak ";
$result = mysqli_query($connection, $sql) or die("Error " . mysqli_error($connection));

//membuat array
while ($row = mysqli_fetch_assoc($result)) {

    $track = $xml->addChild('wajib_pajak');
    $track->addChild('nama', $row['nama']);
    $track->addChild('alamat', $row['alamat']);
    $track->addChild('plat_nomor', $row['plat_nomor']);
    $track->addChild('model_kendaraan', $row['model_kendaraan']);
    $track->addChild('nomor_rangka', $row['nomor_rangka']);
    $track->addChild('nomor_mesin', $row['nomor_mesin']);
}

print($xml->asXML());
//tutup koneksi ke database
mysqli_close($connection);
?>