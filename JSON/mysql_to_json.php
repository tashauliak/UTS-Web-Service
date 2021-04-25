<!DOCTYPE html>  
 <html>  
      <head>  
           <title></title>  
      </head>  
      <body>  
           <?php   
           $connect = mysqli_connect("localhost", "root", "", "data_wp");  
           $sql = "SELECT * FROM wajib_pajak";  
           $result = mysqli_query($connect, $sql);  
           $json_array = array();  
           while($row = mysqli_fetch_assoc($result))  
           {  
                $json_array[] = $row;  
           }  
           echo '<pre>';  
           print_r($json_array);  
           echo '</pre>';
             
           ?>  
      </body>  
 </html>  