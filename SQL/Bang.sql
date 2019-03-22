-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th3 22, 2019 lúc 09:50 AM
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
-- Cấu trúc bảng cho bảng `Bang`
--

CREATE TABLE `Bang` (
  `ten` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noiDung` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Bang`
--

INSERT INTO `Bang` (`ten`, `noiDung`) VALUES
('A1', 'Xe mô tô 2 bánh có dung tích xilanh từ 50 đến dưới 175 cm3.'),
('A2', 'Xe mô tô 2 bánh có dung tích xilanh từ 175 cm3 trở lên và các loại\r\nxe quy định cho giấy phép hạng A1.'),
('A3', 'Cấp cho người lái xe để điều khiển xe mô tô ba bánh, bao gồm cả xe\r\nlam, xích lô máy và các loại xe quy định cho giấy phép lối xe hạng A1.'),
('A4', 'Cấp cho người lái xe để điều khiển các loại máy kéo nhỏ có trọng\r\ntải đến 1000 kg.'),
('B1', 'Ô tô chở người đến 9 chỗ ngồi, ô tô tải dưới 3500 Kg không kinh\r\ndoanh vận tải.'),
('B2', ' Ô tô chở người đến 9 chỗ ngồi, ô tải đầu kéo có 1 rơ móoc dưới\r\n3500 Kg kinh doanh vận tải và các loại xe quy định cho giấy phép hạng\r\nB1.'),
('C', 'Ô tô tải trên 3500kg.'),
('D', 'Ô tô chở người từ 10-30 chỗ.'),
('E', 'Ô tô chở người trên 30 chỗ.'),
('F', 'Điều khiển các loại kéo, móc.');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `Bang`
--
ALTER TABLE `Bang`
  ADD PRIMARY KEY (`ten`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
