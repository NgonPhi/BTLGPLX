<?php 
    include "connect.php";

    //Tạo Class
    class Luat{
        function Luat($id, $tieuDe, $hinhAnh, $noiDung, $loai, $tienPhat){
            $this->Id = $id;
            $this->TieuDe = $tieuDe;            
            $this->HinhAnh = $hinhAnh;
            $this->NoiDung = $noiDung;
            $this->Loai = $loai;
            $this->TienPhat = $tienPhat;
        }
    }

    //Tạo mảng
    $mang = array();    

    //Thực hiện truy vấn
    $sql = "SELECT * FROM Luat";
    $result = $conn->query($sql);
    foreach ($result as $row) {
        //Thêm vào mảng
        $mang[] = new Luat($row["id"], $row["tieuDe"], $row["hinhAnh"], $row["noiDung"], $row["loai"], $row['tienPhat']);
    }
    
    //Xuất dạng JSON
    echo json_encode($mang);

?>