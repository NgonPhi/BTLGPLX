-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th3 22, 2019 lúc 03:18 PM
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
-- Cấu trúc bảng cho bảng `CauHinh`
--

CREATE TABLE `CauHinh` (
  `id` int(11) NOT NULL,
  `tenBang` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loai` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `CauHinh`
--

INSERT INTO `CauHinh` (`id`, `tenBang`, `loai`) VALUES
(1, 'A1', 'Khái niệm quy tắc'),
(2, 'A1', 'Hệ thống biển báo'),
(3, 'A1', 'Sa hình'),
(4, 'A1', 'Văn hóa đạo đức'),
(5, 'A2', 'Khái niệm quy tắc'),
(6, 'A2', 'Hệ thống biển báo'),
(7, 'A2', 'Sa hình'),
(8, 'A2', 'Văn hóa đạo đức'),
(9, 'A3', 'Khái niệm quy tắc'),
(10, 'A3', 'Hệ thống biển báo'),
(11, 'A3', 'Sa hình'),
(12, 'A3', 'Văn hóa đạo đức'),
(13, 'A3', 'Nghiệp vụ vận tải'),
(14, 'A4', 'Khái niệm quy tắc'),
(15, 'A4', 'Hệ thống biển báo'),
(16, 'A4', 'Sa hình'),
(17, 'A4', 'Văn hóa đạo đức'),
(18, 'A4', 'Nghiệp vụ vận tải'),
(19, 'B1', 'Khái niệm quy tắc'),
(20, 'B1', 'Hệ thống biển báo'),
(21, 'B1', 'Sa hình'),
(22, 'B1', 'Văn hóa đạo đức'),
(23, 'B1', 'Nghiệp vụ vận tải'),
(24, 'B1', 'Kỹ thuật lái xe'),
(25, 'B1', 'Cấu tạo sửa chữa'),
(26, 'B2', 'Khái niệm quy tắc'),
(27, 'B2', 'Hệ thống biển báo'),
(28, 'B2', 'Sa hình'),
(29, 'B2', 'Văn hóa đạo đức'),
(30, 'B2', 'Nghiệp vụ vận tải'),
(31, 'B2', 'Kỹ thuật lái xe'),
(32, 'B2', 'Cấu tạo sửa chữa'),
(33, 'C', 'Khái niệm quy tắc'),
(34, 'C', 'Hệ thống biển báo'),
(35, 'C', 'Sa hình'),
(36, 'C', 'Văn hóa đạo đức'),
(37, 'C', 'Nghiệp vụ vận tải'),
(38, 'C', 'Kỹ thuật lái xe'),
(39, 'C', 'Cấu tạo sửa chữa'),
(40, 'D', 'Khái niệm quy tắc'),
(41, 'D', 'Hệ thống biển báo'),
(42, 'D', 'Sa hình'),
(43, 'D', 'Văn hóa đạo đức'),
(44, 'D', 'Nghiệp vụ vận tải'),
(45, 'D', 'Kỹ thuật lái xe'),
(46, 'D', 'Cấu tạo sửa chữa'),
(47, 'E', 'Khái niệm quy tắc'),
(48, 'E', 'Hệ thống biển báo'),
(49, 'E', 'Sa hình'),
(50, 'E', 'Văn hóa đạo đức'),
(51, 'E', 'Nghiệp vụ vận tải'),
(52, 'E', 'Kỹ thuật lái xe'),
(53, 'E', 'Cấu tạo sửa chữa'),
(54, 'F', 'Khái niệm quy tắc'),
(55, 'F', 'Hệ thống biển báo'),
(56, 'F', 'Sa hình'),
(57, 'F', 'Văn hóa đạo đức'),
(58, 'F', 'Nghiệp vụ vận tải'),
(59, 'F', 'Kỹ thuật lái xe'),
(60, 'F', 'Cấu tạo sửa chữa');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `CauHinh`
--
ALTER TABLE `CauHinh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenBang` (`tenBang`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `CauHinh`
--
ALTER TABLE `CauHinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `CauHinh`
--
ALTER TABLE `CauHinh`
  ADD CONSTRAINT `CauHinh_ibfk_1` FOREIGN KEY (`tenBang`) REFERENCES `Bang` (`ten`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
