-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th3 22, 2019 lúc 10:00 AM
-- Phiên bản máy phục vụ: 10.3.13-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id8713292_gplx`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Luat`
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
-- Đang đổ dữ liệu cho bảng `Luat`
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
(25, 'Chở hàng vượt quá chiều cao xếp cho phép', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Chở hàng vượt quá chiều cao xếp hàng cho phép đối với xe ô tô tải', 'Xe Tải', '2.000.000 Đ - 3.000.000 Đ');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `Luat`
--
ALTER TABLE `Luat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `Luat`
--
ALTER TABLE `Luat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
