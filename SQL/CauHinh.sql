-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th3 22, 2019 lúc 09:52 AM
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
  `loai` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `soLuong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
