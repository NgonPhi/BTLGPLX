-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2019 at 03:22 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gplx`
--

-- --------------------------------------------------------

--
-- Table structure for table `Luat`
--

CREATE TABLE `Luat` (
  `id` int(11) NOT NULL,
  `tieuDe` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhAnh` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `noiDung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `loai` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tienPhat` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Luat`
--

INSERT INTO `Luat` (`id`, `tieuDe`, `hinhAnh`, `noiDung`, `loai`, `tienPhat`) VALUES
(1, 'Lỗi đội mũ bảo hiểm', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm1.png', 'Chở người trên xe không đội mũ bảo hiểm hoặc không cài quai, trừ trường hợp chở người đi cấp cứu, trẻ dưới 6 tuổi, áp giải người vi phạm pháp luật', 'Xe Máy', '100.000Đ-200.000Đ'),
(2, 'Điều khiển xe chạy quá tốc độ', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm2.png', 'Điều khiển xe máy chạy quá tốc độ quy định trên 20km/h', 'Xe Máy', '3.000.000 Đ - 4.000.000 Đ'),
(3, 'Điều khiển xe chạy quá tốc độ', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm2.png', 'Điều khiển xe chạy quá tốc độ quy định từ 10km/h đến 20km/h', 'Xe Máy', '500.000 Đ - 1.000.000 Đ'),
(4, 'Dừng xe, đỗ xe trong hầm', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Dừng xe, đỗ xe trong hầm đường bộ không đúng nơi quy định', 'Xe Máy', '500.000 Đ - 1.000.000 Đ'),
(5, 'Dừng xe, đỗ xe trên cầu', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Dừng xe, đỗ xe không đúng vị trí, đỗ xe trên cầu, giữa cầu', 'Xe Máy', '300.000 Đ - 400.000 Đ'),
(6, 'Không có báo hiệu xin vượt', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Không có tín hiệu xin vượt trước khi vượt phương tiện phía trước', 'Xe Máy', '60.000 Đ - 80.000 Đ'),
(7, 'Tự ý thay đổi nhãn hiệu, màu sơn xe', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm4.png', 'Tự ý thay đổi nhãn hiệu, màu sơn của xe không đúng với giấy tờ đăng kí xe.', 'Xe Máy', '100.000 Đ - 200.000 Đ'),
(8, 'Không có giấy đăng ký xe', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm5.png', 'Điều khiển xe không có Giấy đăng ký xe theo quy định', 'Xe Máy', '300.000 Đ - 400.000 Đ'),
(9, 'Chuyển làn không có tín hiệu báo trước', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Chuyển làn đường không đúng nơi cho phép hoặc không có tín hiệu báo trước', 'Ô Tô', '300.000 Đ - 400.000 Đ'),
(10, 'Điều khiển xe chạy quá tốc độ', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm2.png', 'Điều khiển xe chạy quá tốc độ  quy định từ 05km/h đến dưới 10km/h', 'Ô Tô', '600.000 Đ - 800.000 Đ'),
(11, 'Điều khiển xe chạy quá tốc độ', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Điều khiển xe chạy quá tốc độ quy định trên 35km/h', 'Ô Tô', '7.000.000 Đ - 8.000.000 Đ'),
(12, 'Quay đầu xe gầy ùn tắc giao thông', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Dừng xe, đỗ xe, quay đầu xe trái quy định gây ùn tắc giao thông', 'Ô Tô', '800.000 Đ - 1.200.000 Đ'),
(13, 'Dừng xe, đỗ xe trong hầm đường bộ', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Dừng xe, đỗ xe trong hầm đường bộ không đúng nơi quy định', 'Ô Tô', '800.000 Đ - 1.200.000 Đ'),
(14, 'Quay đầu xe tại giao nhau với đường sắt', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Quay đầu xe tại nơi đường bộ giao nhau cùng mức với đường sắt', 'Ô Tô', '600.000 Đ - 800.000 Đ'),
(15, 'Thu tiền vé cao hơn quy định', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/ot1.png', 'Thu tiền vé nhưng không trao vé cho hành khách; thu tiền vé cao hơn quy định', 'Ô Tô', '300.000 Đ - 400.000 Đ'),
(16, 'Thu tiền vé cao hơn quy định', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/ot1.png', 'Thu tieefnves nhưng không trao vé cho hành khách, thu tiền vé cao hơn quy định', 'Xe Khách', '300.000 Đ - 400.000 Đ'),
(17, 'Điều khiển xe liên tục quá 4 giờ', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/ot1.png', 'Điều khiển xe ô tô quá 10 giờ trong một ngày hoặc 4 liên tục trong giờ liền ', 'Xe Khách', '3.000.000 Đ- 4.000.000 Đ'),
(18, 'Không đóng cửa xe khi xe đang chạy', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Không đóng cửa lên xuống khi xe đang chạy', 'Xe Khách', '100.000 Đ - 200.000 Đ'),
(19, 'Không mặc đúng trang phụ quy định', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/ot1.png', 'Không mặc đồng phục, không đeo thẻ tên của lái xe theo quy định', 'Xe Khách', '100.000 Đ - 200.000 Đ'),
(20, 'Không chạy đúng tuyến đường quy định', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Không chạy đúng tuyến đường, lịch trình,  hành trình vận tải quy định', 'Xe Khách', '600.000 Đ - 800.000 Đ'),
(21, 'Hành hung hành khách trên xe', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Thái độ không phù hợp,, bắt nạt, hành hùng hành khách trên xe', 'Xe Khách', '3.000.000 Đ - 5.000.000 Đ'),
(22, 'Đón trả hành khách trên đường cao tốc', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Đón trả hành khách trên đường cao tốc', 'Xe Khách', '5.000.000 Đ - 6.000.000 Đ'),
(23, 'Bắt, trả hành khách khi xe đang chạy', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Để người lên, xuống xe khi xe đang chạy', 'Xe Khách', '1.000.000 Đ - 2.000.000 Đ'),
(24, 'Xe có phù hiệu quốc tế vận tải bị hết hạn', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm5.png', 'Điều khiển xe có có giấy phép vận tải quốc tế hoặc đã hết hạn sử dụng', 'Xe Tải', '3.000.000 Đ - 5.000.000 Đ'),
(25, 'Chở hàng vượt quá chiều cao xếp cho phép', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Chở hàng vượt quá chiều cao xếp hàng cho phép đối với xe ô tô tải', 'Xe Tải', '2.000.000 Đ - 3.000.000 Đ'),
(26, 'Chở hàng vượt chiều dài phía trước, sau thùng xe', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Chở hàng trên nóc thùng xe, chở hàng vượt quá bề rộng thùng xe; chở hàng vượt phía trước, phía sau thùng xe trên 10% chiều dài xe', 'Xe Tải', '800.000 Đ - 1.000.000 Đ'),
(27, 'Không thực hiện theo đúng quy định Giấy phép lưu hành', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Không thực hiện đúng quy định trong giấy phéo lưu hành', 'Xe Tải', '1.000.000 Đ - 2.000.000 Đ'),
(28, 'Vận chuyển hàng hóa nguye hiểm dừng ở nơi đông người', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Vận hành hàng nguye hiểm mà dừng, đỗ xe nơi đông người, khu dân cư, công trình quan trọng; không có báo hiệu hàng nguy hiểm theo quy định', 'Xe Tải', '1.000.000 Đ - 2.000.000 Đ'),
(29, 'Điều khiển xe chở hàng vượt giới hạn cầu, đường', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Trực tiếp điều khiển phương tiện chở hàng vượt khổ giới hạn của cầu, đường ghi trong giấy phép lưu hành', 'Xe Tải', '6.000.000 Đ - 8.000.000 Đ'),
(30, 'Giao xe cho người chưa đủ 27 tuổi điều khiển xe hạng D', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Giao hoặc để cho người không đủ 27 tuổi điều khiển xe hạng D kéo rơ móoc', 'Xe Tải', '2.000.000 Đ - 4.000.000 Đ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Luat`
--
ALTER TABLE `Luat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Luat`
--
ALTER TABLE `Luat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
