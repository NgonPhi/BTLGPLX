<?php 
    include "connect.php";

    //Tạo Class
    class Bang{
        function Bang($ten, $noiDung){
            $this->Ten = $ten;
            $this->NoiDung = $noiDung;
        }
    }

    //Tạo mảng
    $mang = array();    

    //Thực hiện truy vấn
    $sql = "SELECT * FROM Bang";
    $result = $conn->query($sql);
    foreach ($result as $row) {
        //Thêm vào mảng
        $mang[] = new Bang($row["ten"], $row["noiDung"]);
    }
    
    //Xuất dạng JSON
    echo json_encode($mang);

?>