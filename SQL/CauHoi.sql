-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th3 22, 2019 lúc 09:56 AM
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
-- Cấu trúc bảng cho bảng `CauHoi`
--

CREATE TABLE `CauHoi` (
  `id` int(11) NOT NULL,
  `noiDung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhAnh` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loai` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `CauHoi`
--

INSERT INTO `CauHoi` (`id`, `noiDung`, `hinhAnh`, `loai`) VALUES
(1, 'Khái niệm \"phần đường xe chạy\" được hiểu như thế nào là đúng?', NULL, 'Khái niệm quy tắc'),
(2, '\"Vạch kẻ đường\" được hiểu thế nào là đúng?', NULL, 'Khái niệm quy tắc'),
(3, 'Khái niệm \"làn đường\" được hiểu như thế nào là đúng?', NULL, 'Khái niệm quy tắc'),
(4, 'Khái niệm \"đường bộ\" được hiểu như thế nào là đúng?', NULL, 'Khái niệm quy tắc'),
(5, 'Khái niệm \"đường bộ\" được hiểu như thế là đúng?', NULL, 'Khái niệm quy tắc'),
(6, 'Khái niệm \"dải phân cách\" được hiểu như thế nào là đúng?', NULL, 'Khái niệm quy tắc'),
(7, 'Dải phân cách trên đường bộ có những loại nào?', NULL, 'Khái niệm quy tắc'),
(8, 'Khái niệm \"đường ưu tiên\" được hiểu như thế nào là đúng?', NULL, 'Khái niệm quy tắc'),
(9, 'Khái niệm \"phương tiện giao thông cơ giới đường bộ\" được hiểu như thế nào là đúng?', NULL, 'Khái niệm quy tắc'),
(10, '\"Phương tiện giao thông đường bộ\" gồm những loại nào?', NULL, 'Khái niệm quy tắc'),
(11, '\"Phương tiện tham gia giao thông đường bộ\" gồm những loại nào?', NULL, 'Khái niệm quy tắc'),
(12, '\"Người tham gia giao thông đường bộ\" gồm những đối tượng nào?', NULL, 'Khái niệm quy tắc'),
(13, 'Khái niệm \"người điều khiển giao thông\" được hiểu như thế nào là đúng?', NULL, 'Khái niệm quy tắc'),
(14, 'Các hành vi nào ghi ở dưới đây bị nghiêm cấm?', NULL, 'Khái niệm quy tắc'),
(15, 'Những hành vi nào ghi ở dưới đây bị nghiêm cấm', NULL, 'Khái niệm quy tắc'),
(16, 'Người điều khiển phương tiện giao thông đường bộ mà trong cơ thể có chất ma túy có bị nghiêm cấm hay không?', NULL, 'Khái niệm quy tắc'),
(17, 'Người điều khiển xe mô tô, xe gắn máy trê đường mà trong máu có nồng độ cồn vượt quá bao nhiêu thì bị cấm?', NULL, 'Khái niệm quy tắc'),
(18, 'Người điều khiển xe ô tô, máy kéo, xe máy chuyên dùng trên đường mà trong máu hoặc hơi thở có nồng độ cồn vượt quá bao nhiêu thì bị cấm?', NULL, 'Khái niệm quy tắc'),
(19, 'Người điều khiển xe mô tô, xe gắn máy trên đường mà trong khí thở có nồng độ cồn vượt quá bao nhiêu thì bị cấm?', NULL, 'Khái niệm quy tắc'),
(20, 'Hành vi giao xe cơ giới, xe máy chuyên dùng cho người không đủ điều kiện để điều khiển xe tham gia giao thông có bị nghiêm cấm hay không?', NULL, 'Khái niệm quy tắc'),
(21, 'Biển nào cấm người đi bộ', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb1.PNG', 'Hệ thống biển báo'),
(22, 'Gặp biển nào người lái xe phải nhường đường cho người đi bộ?', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb2.PNG', 'Hệ thống biển báo'),
(23, 'Biển nào chỉ đường dành cho người đi bộ, các loại xe không được đi vào khi gặp biển này?', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb3.PNG', 'Hệ thống biển báo'),
(24, 'Biển nào báo hiệu sắp đến chỗ giao nhau nguy hiểm', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb4.PNG', 'Hệ thống biển báo'),
(25, 'Biển nào báo hiệu giao nhau có tín hiệu đèn?', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb5.PNG', 'Hệ thống biển báo');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `CauHoi`
--
ALTER TABLE `CauHoi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `CauHoi`
--
ALTER TABLE `CauHoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
