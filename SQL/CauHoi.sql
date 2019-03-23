-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th3 22, 2019 lúc 02:56 PM
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
  `loai` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `CauHoi`
--

INSERT INTO `CauHoi` (`id`, `noiDung`, `hinhAnh`, `loai`, `flag`) VALUES (1, 'Khái niệm \"phần đường xe chạy\" được hiểu như thế nào là đúng?', NULL, 'Khái niệm quy tắc', NULL),
(2, '\"Vạch kẻ đường\" được hiểu thế nào là đúng?', NULL, 'Khái niệm quy tắc', NULL),
(3, 'Khái niệm \"làn đường\" được hiểu như thế nào là đúng?', NULL, 'Khái niệm quy tắc', NULL),
(4, 'Khái niệm \"đường bộ\" được hiểu như thế nào là đúng?', NULL, 'Khái niệm quy tắc', NULL),
(5, 'Khái niệm \"đường bộ\" được hiểu như thế là đúng?', NULL, 'Khái niệm quy tắc', NULL),
(6, 'Khái niệm \"dải phân cách\" được hiểu như thế nào là đúng?', NULL, 'Khái niệm quy tắc', NULL),
(7, 'Dải phân cách trên đường bộ có những loại nào?', NULL, 'Khái niệm quy tắc', NULL),
(8, 'Khái niệm \"đường ưu tiên\" được hiểu như thế nào là đúng?', NULL, 'Khái niệm quy tắc', NULL),
(9, 'Khái niệm \"phương tiện giao thông cơ giới đường bộ\" được hiểu như thế nào là đúng?', NULL, 'Khái niệm quy tắc', NULL),
(10, '\"Phương tiện giao thông đường bộ\" gồm những loại nào?', NULL, 'Khái niệm quy tắc', NULL),
(11, '\"Phương tiện tham gia giao thông đường bộ\" gồm những loại nào?', NULL, 'Khái niệm quy tắc', NULL),
(12, '\"Người tham gia giao thông đường bộ\" gồm những đối tượng nào?', NULL, 'Khái niệm quy tắc', NULL),
(13, 'Khái niệm \"người điều khiển giao thông\" được hiểu như thế nào là đúng?', NULL, 'Khái niệm quy tắc', NULL),
(14, 'Các hành vi nào ghi ở dưới đây bị nghiêm cấm?', NULL, 'Khái niệm quy tắc', NULL),
(15, 'Những hành vi nào ghi ở dưới đây bị nghiêm cấm', NULL, 'Khái niệm quy tắc', NULL),
(16, 'Người điều khiển phương tiện giao thông đường bộ mà trong cơ thể có chất ma túy có bị nghiêm cấm hay không?', NULL, 'Khái niệm quy tắc', NULL),
(17, 'Người điều khiển xe mô tô, xe gắn máy trê đường mà trong máu có nồng độ cồn vượt quá bao nhiêu thì bị cấm?', NULL, 'Khái niệm quy tắc', NULL),
(18, 'Người điều khiển xe ô tô, máy kéo, xe máy chuyên dùng trên đường mà trong máu hoặc hơi thở có nồng độ cồn vượt quá bao nhiêu thì bị cấm?', NULL, 'Khái niệm quy tắc', NULL),
(19, 'Người điều khiển xe mô tô, xe gắn máy trên đường mà trong khí thở có nồng độ cồn vượt quá bao nhiêu thì bị cấm?', NULL, 'Khái niệm quy tắc', NULL),
(20, 'Hành vi giao xe cơ giới, xe máy chuyên dùng cho người không đủ điều kiện để điều khiển xe tham gia giao thông có bị nghiêm cấm hay không?', NULL, 'Khái niệm quy tắc', NULL),
(21, 'Biển nào cấm người đi bộ', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb1.PNG', 'Hệ thống biển báo', NULL),
(22, 'Gặp biển nào người lái xe phải nhường đường cho người đi bộ?', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb2.PNG', 'Hệ thống biển báo', NULL),
(23, 'Biển nào chỉ đường dành cho người đi bộ, các loại xe không được đi vào khi gặp biển này?', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb3.PNG', 'Hệ thống biển báo', NULL),
(24, 'Biển nào báo hiệu sắp đến chỗ giao nhau nguy hiểm', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb4.PNG', 'Hệ thống biển báo', NULL),
(25, 'Biển nào báo hiệu giao nhau có tín hiệu đèn?', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb5.PNG', 'Hệ thống biển báo', NULL),
(26, 'Biển nào báo hiệu sắp đến chỗ giao nhau với đường sắt có rào chắn?', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb6.PNG', 'Hệ thống biển báo', NULL),
(27, 'Biển nào báo hiệu nguy hiểm giao nhau với đường sắt', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb7.PNG', 'Hệ thống biển báo', NULL),
(28, 'Biển nào báo hiệu đường sắt giao nhau với đường bộ không có rào chắn?', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb8.PNG', 'Hệ thống biển báo', NULL),
(29, 'Biển nào báo hiệu \"Hết đoạn đường ưu tiên\"?', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb9.PNG', 'Hệ thống biển báo', NULL),
(30, 'Biển nào báo hiệu, chỉ dẫn xe đi trên đường này được quyền ưu tiên qua nơi giao nhau?', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb10.PNG', 'Hệ thống biển báo', NULL),
(31, 'Biển nào báo hiệu giao nhau với đường không ưu tiên', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb11.PNG', 'Hệ thống biển báo', NULL),
(32, 'Biển nào báo hiệu giao nhau với đường ưu tiên?', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb12.PNG', 'Hệ thống biển báo', NULL),
(33, 'Biển nào báo hiệu giao nhau với đường ưu tiên?', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb13.PNG', 'Hệ thống biển báo', NULL),
(34, 'Biển nào báo hiệu \"Đường giao nhau\" của các tuyến đường cùng cấp?', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb14.PNG', 'Hệ thống biển báo', NULL),
(35, 'Biển nào báo hiệu giao nhau với đường không ưu tiên?', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb15.PNG', 'Hệ thống biển báo', NULL),
(36, 'Biển nào báo hiệu đường hai chiều?', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb16.PNG', 'Hệ thống biển báo', NULL),
(37, 'Biển nào báo hiệu phải giảm tốc độ, nhường đường cho xe cơ giới đi ngược chiều qua đường hẹp?', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb17.PNG', 'Hệ thống biển báo', NULL),
(38, 'Biển nào chỉ dẫn được ưu tiên qua đường hẹp?', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb18.PNG', 'Hệ thống biển báo', NULL),
(39, 'Biển nào báo hiệu cấm xe mô tô ba bánh đi vào?', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb19.PNG', 'Hệ thống biển báo', NULL),
(40, 'Biển nào báo hiệu cấm xe mô tô hai bánh đi vào?', 'https://androidwsv.000webhostapp.com/HinhAnh/CHBB/bb20.PNG', 'Hệ thống biển báo', NULL),
(41, 'Hành vi điều khiển xe cơ giới chạy quá tốc độ quy định, giành đường, vượt ẩu có bị nghiêm cấm hay không?', NULL, 'Khái niệm quy tắc', NULL),
(42, 'Các hành vi nào sau đây bị nghiêm cấm?', NULL, 'Khái niệm quy tắc', NULL),
(43, 'Những hành vi nào sau đây bị cấm?', NULL, 'Khái niệm quy tắc', NULL),
(44, 'Khi xảy ra tai nạn giao thông, những hành vi nào ghi ở dưới đây bị nghiêm cấm', NULL, 'Khái niệm quy tắc', NULL),
(45, 'Hành vi bỏ trốn sau khi gây tai nạn để trốn tránh trách nhiệm hoặc khi có điều kiện mà cố ý không cứu giúp người bị tai nạn giao thông có bị nghiêm cấm hay không?', NULL, 'Khái niệm quy tắc', NULL),
(46, 'Việc sản xuất, mua bán, sử dụng biển số xe cơ giới, xe máy chuyên dùng được quy định như nào trong Luật giao thông đường bộ?', NULL, 'Khái niệm quy tắc', NULL),
(47, 'Người lái xe không được vượt xe khác khi gặp trường hợp nào ghi ở dưới đây?', NULL, 'Khái niệm quy tắc', NULL),
(48, 'Người ngồi trên xe mô tô hai bánh, ba bánh, xe gắn máy khi tham gia giao thông không được thực hiện những hành vi nào dưới đây?', NULL, 'Khái niệm quy tắc', NULL),
(49, 'Khi điều khiển xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy, những hành vi nào không được phép?', NULL, 'Khái niệm quy tắc', NULL),
(50, 'Người ngồi trên xe mô tô hai bánh, xe mô tô ba bánh, xe gắn máy khi tham gia giao thông có được mang, vác vật cồng kềnh hay không?', NULL, 'Khái niệm quy tắc', NULL),
(51, 'Người điều khiển xe mô tô hai bánh, ba bánh, xe gắn máy có được phép sử dụng xe để kéo, đầy các xe khác, vật khác khi tham gia giao thông không?', NULL, 'Khái niệm quy tắc', NULL),
(52, 'Tại nơi đường giao nhau, khi đèn điều khiển giao thông có tín hiệu vàng, người điều khiển phương tiện phải thực hiện như thế nào?', NULL, 'Khái niệm quy tắc', NULL),
(53, 'Bảo đảm trật tự, an toàn giao thông đường bộ là trách nhiệm của ai?', NULL, 'Khái niệm quy tắc', NULL),
(54, 'Biển báo hiệu đường bộ gồm những nhóm nào, ý nghĩa từng nhóm?', NULL, 'Khái niệm quy tắc', NULL),
(55, 'Tại nơi đường giao nhau, khi người điều khiển giao thông ra hiệu lệnh bằng hai tay hoặc một tay giang ngang để báo hiệu thì người tham gia giao thông phải đi như thế nào là đúng quy tắc giao thông?', NULL, 'Khái niệm quy tắc', NULL),
(56, 'Tại nơi đường giao nhau, khi người điều khiển giao thông ra hiệu lệnh giơ tay thẳng đứng để báo hiệu thì người tham gia giao thông phải đi như thế nào?', NULL, 'Khái niệm quy tắc', NULL),
(57, 'Tại nơi đường giao nhau, khi người điều khiển giao thông ra hiệu lệnh bằng tay phải giơ về phía trước để báo hiệu thì người tham gia giao thông phải đi như thế nào?', NULL, 'Khái niệm quy tắc', NULL),
(58, 'Trên đường giao thông, khi hiệu lệnh của người điều khiển giao thông trái với hiệu lệnh của đèn hoặc biển báo hiệu thì người tham gia giao thông phải chấp hành theo hiệu lệnh nào?', NULL, 'Khái niệm quy tắc', NULL),
(59, 'Tại nơi có biển hiệu cố định lại có báo hiệu tạm thời thì người tham gia giao thông phải chấp hành hiệu lệnh của báo hiệu nào?', NULL, 'Khái niệm quy tắc', NULL),
(60, 'Trên đường một chiều có vạch kẻ phân làn đường, xe thô sơ và xe cơ giới phải đi như thế nào là đúng quy tắc giao thông?', NULL, 'Khái niệm quy tắc', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
