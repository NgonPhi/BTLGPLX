-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th3 22, 2019 lúc 09:59 AM
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
(25, 'Vạch nằm ngang 13', 'Là vạch hình tam giác cân màu trắng vạch chỉ rõ vĩ trí mà lái xe phải dừng để nhường cho các phương tiện khác ở đường ưu tiên.', 'https://androidwsv.000webhostapp.com/HinhAnh/BBDB/kd25.PNG', 'Vạch kẻ đường');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `BBDB`
--
ALTER TABLE `BBDB`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `BBDB`
--
ALTER TABLE `BBDB`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
