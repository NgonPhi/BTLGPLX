-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th3 22, 2019 lúc 03:29 PM
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `BBDB`
--

CREATE TABLE `BBDB` (
  `id` int(11) NOT NULL,
  `tieuDe` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `noiDung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhAnh` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `loai` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `BBDB`
--

INSERT INTO `BBDB` (`id`, `tieuDe`, `noiDung`, `hinhAnh`, `loai`) VALUES
(1, 'Cấm máy kéo', 'Để báo đường cấm tất cả các loại máy kéo, kể cả máy kéo bánh hơi và bánh xích đi qua.', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/c1.PNG', 'Biển báo cấm'),
(2, 'Cấm xe người kéo, đẩy', 'Để báo đường cấm xe người kéo, đẩy đi qua. Biển không có giá trị cấm những xe nôi của trẻ em và phương tiện chuyên dùng để đi lại của người tàn tật', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/c2.PNG', 'Biển báo cấm'),
(3, 'Cấm ô tô rẽ trái', 'Đường cấm tất cả các loại xe cơ giới kể cả mô tô 3 bánh có thùng xe rẽ trái, trừ mô tô hai bánh, xe gắn máy và các xe được ưu tiên theo luật lệ nhà nước', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/c3.PNG', 'Biển báo cấm'),
(4, 'Đường cấm', 'Đường cấm tất cả các loại phương tiện (cơ giới và thôi sơ) đi lại cả hai hướng, trừ các xe được ưu tiên theo luật lệ nhà nước quy định', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/c4.PNG', 'Biển báo cấm'),
(5, 'Ấn còi', 'Biểu thị xe cộ đi đến chỗ cắm biển đó thì phải ấn còi', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/hl5.PNG', 'Biển báo hiệu lệnh'),
(6, 'Hướng đi phải theo', 'để báo cho các loại xe (thô sơ và cơ giới) chỉ được đi thẳng', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/hl6.PNG', 'Biển báo hiệu lệnh'),
(7, 'Tuyến đường cầu vượt cắt qua', 'biểu thị tại cầu vượt, xe có thể đi thẳng hoặc theo chỉ dẫn trên hình vẽ để rẽ trái. Biển đặt tại vị trí thích hợp ngay trước khi vào đường rẽ trái hoặc qua cầu vượt', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/hl7.PNG', 'Biển báo hiệu lệnh'),
(8, 'Khách sạn', 'Để chỉ dẫn những nơi có khách sạn phục vụ khách đi đường', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/cd8.PNG', 'Biển báo chỉ dẫn'),
(9, 'Đường cụt', 'Để chỉ lối rẽ vào đường cụt', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/cd9.PNG', 'Biển báo chỉ dẫn'),
(10, 'Trạm sửa chữa', 'Để chỉ dẫn những nơi có đặt xưởng chuyên phục vụ sửa chữa ô tô, mô tô hỏng trên đường', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/cd10.PNG', 'Biển báo chỉ dẫn'),
(11, 'Đường một chiều', 'Để chỉ dẫn những đoạn đường chạy một chiều đặt sau ngã ba, ngã tư', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/cd11.PNG', 'Biển báo chỉ dẫn'),
(12, 'Bến xe buýt', 'Để chỉ dẫn những chỗ xe buýt dừng cho hành khách lên xuống', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/cd12.PNG', 'Biển báo chỉ dẫn'),
(13, 'Đường cao tốc', 'Để chỉ dẫn bắt đầu đường cao tốc. Quy chế sử dụng đường cao tốc phải được thực hiện nghiêm ngặt', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/cd13.PNG', 'Biển báo chỉ dẫn'),
(14, 'Biển báo phần đường cho người', 'Dùng để biểu thị vị trí thiết bị chuyên dùng cho người tàn tật', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/cd14.PNG', 'Biển báo chỉ dẫn'),
(15, 'Hết đường cao tốc', 'Để chỉ dẫn hết đường cao tốc', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/cd15.PNG', 'Biển báo chỉ dẫn '),
(16, 'Giao nhau với đường sắt không rào chắn', 'Báo trước sắp đến chỗ giao nhau giữa đường bộ và đường sắt không có rào chắn, không có người điểu khiển giao thông', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/nh16.PNG', 'Biển báo nguy hiểm'),
(17, 'Trẻ em', 'Báo trước là gần đến đoạn đường thường có trẻ em đi ngang qua hoặc tụ tập trên đường như vườn trẻ, trường học, câu lạc bộ đi qua.', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/nh17.PNG', 'Biển báo nguy hiểm'),
(18, 'Giao nhau với đường ưu tiên', 'Trên đường không ưu tiên, biển này để báo trước sắp đến nơi giao nhau với đường ưu tiên.', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/nh18.PNG', 'Biển báo nguy hiểm'),
(19, 'Cấm đi thằng và rẽ trái', 'Biểu thị ở ngã tư, ngã năm đường phía trước cấm tất cả các loại xe đi thẳng và rẽ trái', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/c19.PNG', 'Biển báo cấm'),
(20, 'Tốc độ tối đa cho phép', 'Cấm tất cả các loại xe cơ giới chạy với tốc độ tối đa vượt quá trị số ghi trê biển, trừ các xe được ưu tiên theo luật lệ Nhà nước quy định.', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/c20.PNG', 'Biển báo cấm'),
(21, 'Đường dành cho người đi bộ ', 'Báo đường dành cho người đi bộ. Các loại xe cơ giới và thô sở kể cả các xe được ưu tiên theo luật lệ Nhà nước quy định không được phép đi vào đường đã đặt biển báo này, trừ trường hợp đi cắt ngang qua nhưng phải đảm bảo tuyệt đối an toàn cho người đi bộ.', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/hl21.PNG', 'Biển báo hiệu lệnh'),
(22, 'Nơi giao nhau chạy theo vòng', 'Báo cho các loại xe (cơ giới và thô sơ) phải chạy theo vòng đảo an toàn ở các ngã ba, ngã tư. Biển có hiệu lực bắt buộc các loại xe muốn chuyển hướng phải chạy vòng theo đảo an toàn, theo hướng mũi tên chỉ.', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/hl22.PNG', 'Biển báo hiệu lệnh'),
(23, 'Gia súc', 'Để báo trước gần tới đoạn đường thường có gia súc thả rông hoặc lùa qua ngang đường nguy hiểm, đường ở vùng đồng cỏ của nông trường chăn nuôi, vùng thảo nguyên. Người lái xe có trách nhiệm dừng lại bảo đảm cho gia súc có thể qua đường không bị nguy hiểm.', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/nh23.PNG', 'Biển báo nguy hiểm'),
(24, 'Đường trơn', 'Để báo trước sắp tới đoạn đường có thể xảy ra trơn trượt đặc biệt là khi thời tiết xấu, mưa phùn cần tránh hãm phanh, tăng ga, sang số đột ngột hoặc xe chạy với tốc độ cao sẽ nguy hiểm. Khi gặp biển này tốc độ xe chạy phải giảm kịp thời và thận trọng', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/nh24.PNG', 'Biển báo nguy hiểm'),
(25, 'Vạch nằm ngang 13', 'Là vạch hình tam giác cân màu trắng vạch chỉ rõ vĩ trí mà lái xe phải dừng để nhường cho các phương tiện khác ở đường ưu tiên.', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/kd25.PNG', 'Vạch kẻ đường'),
(26, 'Vạch nằm ngang 2', 'Vạch liền, màu trắng, rộng 20cm, dùng để xác định mép phần xe chạy trên các trục đường. Xe chạy được phép cắt ngang hoặc đè lên vạch khi cần thiết.', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/kd26.PNG', 'Vạch kẻ đường'),
(27, 'Vạch nằm đứng 3', 'Là vạch đen trắng xen kẽ nằm ngang. Vạch kẻ xung quanh các cột tròn đặt trên các đảo an toàn hoặc trên giải phân cách và các nơi khác', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/kd27.PNG', 'Vạch kẻ đường'),
(28, 'Vạch nằm ngang 16.1', '\"Ngựa vằn\" màu trắng, xác định đảo phân chia dòng phương tiện ngược chiều nhau', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/kd28.PNG', 'Vạch kẻ đường'),
(29, 'Vạch nằm đứng 5', 'Kẻ ở thành rào có chắn, chỗ đường vòng có bán kính nhỏ, đường cao hơn so với khu vực xung quanh, dốc xuống với những nơi nguy hiểm khác.', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/kd29.PNG', 'Vạch kẻ đường'),
(30, 'Vạch nằm ngang 17', 'Vạch sơn sóng màu vàng quay định vị trí dừng của xe các phương tiện vận tại. Theo tuyến quay định hoặc nơi tập kết của taxi, cấm dừng hoặc đỗ của bất kì một loại phương tiện nào về cả hai phía và cách vạch 15cm.', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/kd30.PNG', 'Vạch kẻ đường');

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `CauHoi`
--

CREATE TABLE `CauHoi` (
  `id` int(11) NOT NULL,
  `noiDung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhAnh` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loai` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `CauHoi`
--

INSERT INTO `CauHoi` (`id`, `noiDung`, `hinhAnh`, `loai`, `flag`) VALUES
(1, 'Khái niệm \"phần đường xe chạy\" được hiểu như thế nào là đúng?', NULL, 'Khái niệm quy tắc', NULL),
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
(26, 'Gồm xe ô tô; máy kéo; rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ô tô, máy kéo; xe mô tô hai bánh; xe mô tô ba bánh; xe gắn máy (kể cả xe máy điện) và các loại xe tương tự.', 'true', 9),
(27, 'Phương tiện giao thông cơ giới đường bộ, phương tiện giao thông thô sơ đường bộ.', 'true', 10),
(28, 'Phương tiện giao thông thô sơ đường bộ, phương tiện giao thông cơ giới đường bộ và xe máy chuyên dùng.', 'false', 10),
(29, 'Cả hai ý nêu trên.', 'false', 10),
(30, 'Biển 1.', 'false', 21),
(31, 'Biển 1 và 3.', 'false', 21),
(32, 'Biển 2.', 'true', 21),
(33, 'Biển 2 và 3.', 'false', 21),
(34, 'Biển 1.', 'true', 22),
(35, 'Biển 3.', 'false', 22),
(36, 'Biển 2.', 'false', 22),
(37, 'Biển 1 và 3.', 'false', 22),
(38, 'Biển 1.', 'false', 23),
(39, 'Biển 1 và 3.', 'false', 23),
(40, 'Biển 3.', 'true', 23),
(41, 'Cả 3 biển.', 'false', 23),
(42, 'Biển 1 và 2.', 'false', 24),
(43, 'Biển 2 và 3.', 'true', 24),
(44, 'Biển 1.', 'false', 24),
(45, 'Cả 3 biển.', 'false', 24),
(46, 'Biển 2.', 'false', 25),
(47, 'Biển 1.', 'false', 25),
(48, 'Biển 3.', 'true', 25),
(49, 'Cả ba biển.', 'false', 25),
(50, 'Biển 1.', 'true', 26),
(51, 'Biển 2 và 3.', 'false', 26),
(52, 'Biển 3.', 'false', 26),
(53, 'Biển 1 và 3.', 'true', 27),
(54, 'Biển 1 và 2.', 'false', 27),
(55, 'Biển 2 và 3.', 'false', 27),
(56, 'Cả ba biển.', 'false', 27),
(57, 'Biển 1 và 2.', 'false', 28),
(58, 'Biển 2 và 3.', 'true', 28),
(59, 'Biển 1 và 3.', 'false', 28),
(60, 'Cả ba biển.', 'false', 28),
(61, 'Biển 3.', 'true', 29),
(62, 'Biển 1.', 'false', 29),
(63, 'Biển 2.', 'false', 29),
(64, 'Biển 1 và 2.', 'false', 30),
(65, 'Biển 1 và 3.', 'true', 30),
(66, 'Cả ba biển.', 'false', 30),
(67, 'Biển 2 và 3.', 'false', 30);

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
(25, 'Chở hàng vượt quá chiều cao xếp cho phép', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Chở hàng vượt quá chiều cao xếp hàng cho phép đối với xe ô tô tải', 'Xe Tải', '2.000.000 Đ - 3.000.000 Đ'),
(26, 'Chở hàng vượt chiều dài phía trước, sau thùng xe', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Chở hàng trên nóc thùng xe, chở hàng vượt quá bề rộng thùng xe; chở hàng vượt phía trước, phía sau thùng xe trên 10% chiều dài xe', 'Xe Tải', '800.000 Đ - 1.000.000 Đ'),
(27, 'Không thực hiện theo đúng quy định Giấy phép lưu hành', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Không thực hiện đúng quy định trong giấy phéo lưu hành', 'Xe Tải', '1.000.000 Đ - 2.000.000 Đ'),
(28, 'Vận chuyển hàng hóa nguye hiểm dừng ở nơi đông người', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Vận hành hàng nguye hiểm mà dừng, đỗ xe nơi đông người, khu dân cư, công trình quan trọng; không có báo hiệu hàng nguy hiểm theo quy định', 'Xe Tải', '1.000.000 Đ - 2.000.000 Đ'),
(29, 'Điều khiển xe chở hàng vượt giới hạn cầu, đường', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Trực tiếp điều khiển phương tiện chở hàng vượt khổ giới hạn của cầu, đường ghi trong giấy phép lưu hành', 'Xe Tải', '6.000.000 Đ - 8.000.000 Đ'),
(30, 'Giao xe cho người chưa đủ 27 tuổi điều khiển xe hạng D', 'https://androidwsv.000webhostapp.com/HinhAnh/TCL/xm3.png', 'Giao hoặc để cho người không đủ 27 tuổi điều khiển xe hạng D kéo rơ móoc', 'Xe Tải', '2.000.000 Đ - 4.000.000 Đ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `MTLT`
--

CREATE TABLE `MTLT` (
  `id` int(11) NOT NULL,
  `noiDung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `loai` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `MTLT`
--

INSERT INTO `MTLT` (`id`, `noiDung`, `loai`) VALUES
(1, 'Câu khái niệm \"Phương tiện giao thông cơ giới đường bộ\" chọn \"Kể cả xe máy điện\"', 'Khái niệm quy tắc'),
(2, 'Câu khái niệm \"Phương tiện giao thông thô sơ đường bộ\" chọn \"Kể cả xe đạp máy\"', 'Khái niệm quy tắc'),
(3, 'Câu khái niệm \"Người điều khiển giao thông\" là \"Cảnh sát giao thông\".', 'Khái niệm quy tắc'),
(4, 'Câu khái niệm \"Phần đường xe chạy\" chọn câu không có chữ \"An toàn giao thông\".', 'Khái niệm quy tắc'),
(5, 'Câu khái niệm \"Làn đường\" chọn câu có chữ \"An toàn giao thông\".', 'Khái niệm quy tắc'),
(6, 'Các câu \"Đỗ xe: không có giới hạn về thời gian và Dừng xe có giới hạn thời gian\" chọn câu số 2.', 'Khái niệm quy tắc'),
(7, 'Về nồng độ cồn, trong máu = 50, trong khí thở = 0,25 hoặc không có gì cả trong máu và khí thở', 'Khái niệm quy tắc'),
(8, 'Dừng xe, đỗ xe cách lề đường, hè phố không quá 0,25 mét.', 'Khái niệm quy tắc'),
(9, 'Giữ khoảng cách 5 mét với đường sắt', 'Khái niệm quy tắc'),
(10, 'Sử dụng giấy phép lái xe giả cấp 5 năm', 'Khái niệm quy tắc'),
(11, 'Chọn \"Cơ quan quản lý giao thông\" đối với các trường hợp Xe quá tải, xe quá khổ và xe vận chuyển nguy hiểm', 'Khái niệm quy tắc'),
(12, 'Chọn \"UBND cấp tỉnh\" đối với trường hợp cấm đi, cấm đỗ, cấm dừng, đường ngược chiều', 'Khái niệm quy tắc'),
(13, 'Loại giấy tờ mang theo: Giấy phép lái xe phù hợp với loại xe', 'Khái niệm quy tắc'),
(14, 'Độ tuổi lấy bằng theo hạng (mỗi hạng cách nhau 3 tuổi): 16: Xe dưới 50cm3; 18: Hạng A,B; 21: Hạng C; 24: Hạng D,F; 27: Hạng E.', 'Khái niệm quy tắc'),
(15, 'Độ tuổi tối đa người lái xe ô tô hạng E: Nam 55 tuổi và Nữ 50 tuổi.', 'Khái niệm quy tắc'),
(16, 'Không lái xe liên tục quá 4 giờ.', 'Khái niệm quy tắc'),
(17, 'Gặp câu hỏi về hạng FE thì chọn câu 1, hạng FC thì chọn câu 2.', 'Khái niệm quy tắc'),
(18, 'Tốc độ giới hạn của xe: Bên ngoài khu dân cư 80km/h <3,5 tấn, 70km/h>3,5 tấn.', 'Khái niệm quy tắc'),
(19, 'Tốc độ của xe ô tô trên đường cao tốc, bạn lấy tốc độ (lớn nhất) trong câu hỏi rồi trừ cho 30 thì sẽ ra đáp án đúng.', 'Khái niệm quy tắc'),
(20, 'Đối với các câu có biển báo hiệu lệnh được đặt trước ngã ba, ngã tư. Chọn câu 1 nếu câu hỏi 1 dòng, câu 3 nếu câu hỏi có 2 dòng.', 'Hệ thống biển báo'),
(21, 'Biển báo cấm máy kéo thì không cấm ô tô tải và ngược lại', 'Hệ thống biển báo'),
(22, 'Biển báo cấm rẽ trái thì cấm quay đầu và biển cấm quay đầu thì không cấm rẽ trái.', 'Hệ thống biển báo'),
(23, 'Đối với câu hỏi liên quan đến việc điều khiển của CSGT, CSGT giơ tay thẳng lên thì các loại xe phải đứng lại, đưa 1 hoặc 2 tay giang ngang thì xe trước và đằng sau phải đứng lại.', 'Sa hình'),
(24, 'Đường giao nhau có vòng xuyến nhường bên trái, không có vòng xuyến nhường bên phải', 'Sa hình'),
(25, 'Thấy xuất hiện \"công an\" thì chọn câu số 3', 'Sa hình'),
(26, 'Xe nào đã vào ngã tư thì xe đó có quyền ưu tiên đi trước cao nhất', 'Sa hình'),
(27, 'Tiếp đó đến các xe ưu tiên. Trong các xe ưu tiên thì xe cứu hỏa có ưu tiên xe quân sự, xe công an, xe cứu thương.', 'Sa hình'),
(28, 'Tiếp đó nếu cùng là xe ưu tiên hoặc cùng là xe không ưu tiên thì xét đến đường ưu tiên, tức là xe nào nằm trên đường ưu tiên thì có quyền đi trước (Xem biển báo hoặc tín hiệu đèn)', 'Sa hình'),
(29, 'Xe nào không vướng xe khác ở bên phải có quyền đi trước ', 'Sa hình'),
(30, 'Thứ tự ưu tiên tiếp theo: xe rẽ phải, xe đi thằng, xe rẽ trái', 'Sa hình'),
(31, 'Hàng siêu trường, siêu trọng không thể tháo rời', 'Nghiệp vụ vận tải'),
(32, 'Xe quá tải trọng có tải trọng trục xe vượt quá năng lực chịu tải của mặt đường', 'Nghiệp vụ vận tải'),
(33, 'Hàng nguy hiểm: an ninh quốc gia và vận chuyển phải có giấy phép.', 'Nghiệp vụ vận tải'),
(34, 'Xe quá khổ, quá tải: xin phép cơ quan quản lý giao thông. ', 'Nghiệp vụ vận tải'),
(35, 'Vận chuyển động vật sống: bảo vệ mồi trường và chăm sóc.', 'Nghiệp vụ vận tải'),
(36, 'Xe vệ sinh môi trường: che phủ kín và thời gian phù hợp', 'Nghiệp vụ vận tải'),
(37, 'Lùi xe có số tự động: Đạp chân phanh hết hành trình', 'Kỹ thuật lái xe '),
(38, 'Quay đầu xe: Chọn đầu nguy hiểm, đuôi an toàn.', 'Kỹ thuật lái xe '),
(39, 'Xuống dốc muốn dừng xe: về số 1', 'Kỹ thuật lái xe '),
(40, 'Niên hạn sử dụng xe ô tô tải = 25 năm, xe ô tô trên 9 chỗ = 20 năm.', 'Cấu tạo sửa chữa'),
(41, 'Còi của xe ô tô, không lớn hơn 115dB.', 'Cấu tạo sửa chữa'),
(42, 'Điều khiển xe tăng số câu 1, điều khiển xe giảm số câu 2 (tăng 1 giảm 2).', 'Cấu tạo sửa chữa'),
(43, 'Yêu cầu của kính chắn gió, chọn \"Loại kính an toàn\"', 'Cấu tạo sửa chữa'),
(44, 'Mục đích của bảo dưỡng xe để giữ hình thức bên ngoài.', 'Cấu tạo sửa chữa'),
(45, 'Xăng không vào được buồng phao của bộ chế hòa khí do tắc bầu lọc xăng.', 'Cấu tạo sửa chữa'),
(46, 'Khắc phục giclo bằng không khí nén.', 'Cấu tạo sửa chữa'),
(47, 'Động cơ diezen không nổ không có tia lửa điện (chọn câu không có đoạn \"không có tia lửa điện\").', 'Cấu tạo sửa chữa'),
(48, 'Điều chỉnh đánh lửa \"sớm sang muộn\" chọn \"cùng chiều\" [đáp án 1], \"muộn sang sớm\" chọn \"ngược chiều\" [đáp án 2] (sớm 1 muộn 2 hoặc sớm cùng muộn ngược).', 'Cấu tạo sửa chữa'),
(49, 'Thử phanh xe ô tô 6m.', 'Cấu tạo sửa chữa'),
(50, 'Động cơ 2 kì thực hiện 2 hành trình, 4 kì thực hiện 4 hành trình.', 'Cấu tạo sửa chữa'),
(51, 'Động cơ đốt trong có thứ tự hút, nén, nổ, xả.', 'Cấu tạo sửa chữa'),
(52, 'Hộp số đảm bảo cho ô tô chuyển động lùi.', 'Cấu tạo sửa chữa'),
(53, 'Hệ thống lái dùng để thay đổi hướng chuyển động', 'Cấu tạo sửa chữa'),
(54, 'Công dụng của hệ thống lái: chọn câu nào không có chữ mô men.', 'Cấu tạo sửa chữa'),
(55, 'Công dụng hệ thống truyền lực: truyền mô men.', 'Cấu tạo sửa chữa'),
(56, 'Công dụng của ly hợp: truyền hoặc ngắt truyền động.', 'Cấu tạo sửa chữa'),
(57, 'Hệ thống phanh giữ cho ô tô đứng trên dốc', 'Cấu tạo sửa chữa');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `Bang`
--
ALTER TABLE `Bang`
  ADD PRIMARY KEY (`ten`);

--
-- Chỉ mục cho bảng `BBDB`
--
ALTER TABLE `BBDB`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `CauHinh`
--
ALTER TABLE `CauHinh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenBang` (`tenBang`);

--
-- Chỉ mục cho bảng `CauHoi`
--
ALTER TABLE `CauHoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `CauTraLoi`
--
ALTER TABLE `CauTraLoi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCH` (`idCH`);

--
-- Chỉ mục cho bảng `Luat`
--
ALTER TABLE `Luat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `MTLT`
--
ALTER TABLE `MTLT`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `BBDB`
--
ALTER TABLE `BBDB`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `CauHinh`
--
ALTER TABLE `CauHinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `CauHoi`
--
ALTER TABLE `CauHoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `CauTraLoi`
--
ALTER TABLE `CauTraLoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `Luat`
--
ALTER TABLE `Luat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `MTLT`
--
ALTER TABLE `MTLT`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `CauHinh`
--
ALTER TABLE `CauHinh`
  ADD CONSTRAINT `CauHinh_ibfk_1` FOREIGN KEY (`tenBang`) REFERENCES `Bang` (`ten`);

--
-- Các ràng buộc cho bảng `CauTraLoi`
--
ALTER TABLE `CauTraLoi`
  ADD CONSTRAINT `CauTraLoi_ibfk_1` FOREIGN KEY (`idCH`) REFERENCES `CauHoi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
