-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th3 22, 2019 lúc 09:57 AM
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
-- Cấu trúc bảng cho bảng `CauTraLoi`
--

CREATE TABLE `CauTraLoi` (
  `id` int(11) NOT NULL,
  `noiDung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `kiemTra` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idCH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `CauTraLoi`
--

INSERT INTO `CauTraLoi` (`id`, `noiDung`, `kiemTra`, `idCH`) VALUES
(1, 'Là phần đường của đường bộ được sử dụng cho các phương tiện giao thông qua lại.', 'true', 1),
(2, 'Là phần đường bộ được sử dụng cho các phương tiện giao thông qua lại, dải đất dọc hai bên đường để bảo đảm an toàn giao thông', 'false', 1),
(3, 'Là phần đường bộ được sử dụng cho các phương tiện giao thông qua lại, các công trình, thiết bị phụ trợ khác và dải đất dọc hai bên đường để bảo đảm an toàn giao thông.', 'false', 1),
(4, 'Vạch kẻ đường là vạch chỉ sự phân chia làn đường, vị trí hoặc hướng đi, vị trí dừng lại.', 'true', 2),
(5, 'Vạch kẻ đường là vạch chỉ sự phân biệt vị trí dừng, đỗ trên đường', 'false', 2),
(6, 'Tất cả các ý nêu trên', 'false', 2),
(7, 'Là một phần của đường được chia theo chiều ngang của đường, có bề rộng đủ cho xe đỗ an toàn', 'false', 3),
(8, 'Là một phần của đường xe chạy được chia theo chiều dọc của đường, có bề rộng đủ cho xe chạy an toàn', 'true', 3),
(9, 'Cả 2 ý trên', 'false', 3),
(10, 'Đường, cầu đường bộ.', 'true', 4),
(11, 'Hầm đường bộ, bến phà đường bộ.', 'true', 4),
(12, 'Đường, cầu đường bộ, hầm đường bộ, bến phà đường bộ và các công trình phụ trợ khác.', 'false', 4),
(13, 'Đường phố là đường đô thị, gồm lòng đường và hè phố.', 'true', 5),
(14, 'Đường phố là đường bộ ngoài đô thị có lòng đường đủ rộng cho các phương tiện giao thông qua lại.', 'false', 5),
(15, 'Cả hai ý nêu trên.', 'false', 5),
(16, 'Là bộ phận của đường để phân chia mặt đường thành hai chiều xe chạy riêng biệt hoặc để phân chia phần đường của xe cơ giới và xe thô sơ.', 'true', 6),
(17, 'Là bộ phận của đường để xác định ranh giới của đất dành cho đường bộ theo chiều ngang của đường.', 'false', 6),
(18, 'Là bộ phận của đường để ngăn cách không cho các loại xe vào những nơi không được phép.', 'false', 6),
(20, 'Loại cố định.', 'true', 7),
(21, 'Loại di động.', 'true', 7),
(22, 'Đường ưu tiên là đường mà trên đó phương tiện tham gia giao thông đường bộ phải nhường đường cho các phương tiện đến từ hướng khác khi qua nơi đường giao nhau, có thể cắm biển báo hiệu đường ưu tiên.', 'false', 8),
(23, 'Đường ưu tiên là đường mà trên đó phương tiện tham gia giao thông đường bộ được các phương tiện đến từ hướng khác nhường đường khi qua nơi đường giao nhau, được cắm biển báo hiệu đường ưu tiên.', 'true', 8),
(24, 'Đường ưu tiên là đường chỉ dành cho một số phương tiện tham gia giao thông, được cắm biển báo hiệu đường ưu tiên.', 'false', 8),
(25, 'Gồm xe ô tô; máy kéo; xe mô tô hai bánh; xe mô tô ba bánh; xe gắn máy; xe cơ giới dùng cho người khuyết tật và xe máy chuyên dùng.', 'false', 9),
(26, 'Gồm xe ô tô; máy kéo; rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ô tô, máy kéo; xe mô tô hai bánh; xe mô tô ba bánh; xe gắn máy (kể cả xe máy điện) và các loại xe tương tự.', 'true', 9);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `CauTraLoi`
--
ALTER TABLE `CauTraLoi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCH` (`idCH`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `CauTraLoi`
--
ALTER TABLE `CauTraLoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `CauTraLoi`
--
ALTER TABLE `CauTraLoi`
  ADD CONSTRAINT `CauTraLoi_ibfk_1` FOREIGN KEY (`idCH`) REFERENCES `CauHoi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
