<?php
//import.php
sleep(3);
$output = '';

if(isset($_FILES['file']['name']) &&  $_FILES['file']['name'] != '')
{
 $valid_extension = array('xml');
 $file_data = explode('.', $_FILES['file']['name']);
 $file_extension = end($file_data);
 if(in_array($file_extension, $valid_extension))
 {
  $data = simplexml_load_file($_FILES['file']['tmp_name']);
  $connect = new PDO('mysql:host=localhost;dbname=data_wp','root', '');
  $query = "
  INSERT INTO wajib_pajak 
   (nama, alamat, plat_nomor, model_kendaraan, nomor_rangka, nomor_mesin) 
   VALUES(:nama, :alamat, :plat_nomor, :model_kendaraan, :nomor_rangka, :nomor_mesin);
  ";
  $statement = $connect->prepare($query);
  for($i = 0; $i < count($data); $i++)
  {
   $statement->execute(
    array(
     ':nama'   => $data->wajib_pajak[$i]->nama,
     ':alamat'  => $data->wajib_pajak[$i]->alamat,
     ':plat_nomor'  => $data->wajib_pajak[$i]->plat_nomor,
     ':model_kendaraan' => $data->wajib_pajak[$i]->model_kendaraan,
     ':nomor_rangka'   => $data->wajib_pajak[$i]->nomor_rangka,
     ':nomor_mesin'   => $data->wajib_pajak[$i]->nomor_mesin
    )
   );

  }
  $result = $statement->fetchAll();
  if(isset($result))
  {
   $output = '<div class="alert alert-success">Import Data Done</div>';
  }
 }
 else
 {
  $output = '<div class="alert alert-warning">Invalid File</div>';
 }
}
else
{
 $output = '<div class="alert alert-warning">Please Select XML File</div>';
}

echo $output;

?>