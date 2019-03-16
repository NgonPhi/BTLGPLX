<?php 
    include "connect.php";

    //Tạo mảng
    $mang = array();    

    //Thực hiện truy vấn
    $sql = "SELECT DISTINCT loai FROM BBDB";
    $result = $conn->query($sql);
    foreach ($result as $row) {
        //Thêm vào mảng
        $mang[] = $row['loai'];
    }

    //Xuất dạng JSON
    echo json_encode($mang);

?>