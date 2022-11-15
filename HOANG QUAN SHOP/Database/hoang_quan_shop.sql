-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2022 at 08:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoang quan shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_ad` int(11) NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Pass` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_ad`, `Name`, `Pass`, `Email`) VALUES
(12, 'vanle', 'vanle', 'vanle123@gmail.com'),
(13, 'tuanloc', 'tuanloc', 'tuanloc123@gmail.com'),
(14, 'hoangquan', 'hoangquan', 'quan123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `anhsanpham`
--

CREATE TABLE `anhsanpham` (
  `id_anh` int(11) NOT NULL,
  `id_sp` int(11) DEFAULT NULL,
  `anhsanpham2` varchar(200) DEFAULT NULL,
  `anhsanpham3` varchar(200) DEFAULT NULL,
  `anhmota` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anhsanpham`
--

INSERT INTO `anhsanpham` (`id_anh`, `id_sp`, `anhsanpham2`, `anhsanpham3`, `anhmota`) VALUES
(45, 247, '../upload/iphone-13-pro-max-2.jpg', '../upload/iphone-13-pro-max-3.jpg', '../upload/iphone-13-pro-max-4.jpg'),
(124, 326, '../upload/vi-vn-apple-macbook-air-m1-2020-z124000de-3.jpg', '../upload/vi-vn-apple-macbook-air-m1-2020-z124000de-7.jpg', '../upload/vi-vn-apple-macbook-air-m1-2020-z124000de-2.jpg'),
(125, 327, '../upload/dell-gaming-alienware-m15-r6-i7-70272633-2.jpg', '../upload/dell-gaming-alienware-m15-r6-i7-70272633-3.jpg', '../upload/dell-gaming-alienware-m15-r6-i7-70272633-4.jpg'),
(126, 328, '../upload/hp-gaming-victus-16-e0170ax-r7-4r0u7pa-3-1.jpg', '../upload/hp-gaming-victus-16-e0170ax-r7-4r0u7pa-4-1.jpg', '../upload/hp-gaming-victus-16-e0170ax-r7-4r0u7pa-14.jpg'),
(129, 331, '../upload/hp-elitebook-x360-1040-g8-i7-3g1h4pa-3-1-org.jpg', '../upload/hp-elitebook-x360-1040-g8-i7-3g1h4pa-4-1-org.jpg', '../upload/hp-elitebook-x360-1040-g8-i7-3g1h4pa-13-org.jpg'),
(146, 348, '../upload/samsung1-2.jpg', '../upload/samsung1-3.jpg', '../upload/samsung1-4.jpg'),
(147, 349, '../upload/oppo1-2.jpg', '../upload/oppo1-3.jpg', '../upload/oppo1-4.jpg'),
(148, 350, '../upload/iphone-12-pro-512gb2.jpg', '../upload/iphone-12-pro-512gb3.jpg', '../upload/iphone-12-pro-512gb4.jpg'),
(149, 351, '../upload/iphone-13-2.jpg', '../upload/iphone-13-3.jpg', '../upload/iphone-13-4.jpg'),
(150, 352, '../upload/samsung-galaxy-s22-ultra-do-4.jpg', '../upload/samsung-galaxy-s22-ultra-do-5.jpg', '../upload/samsung-galaxy-s22-ultra-do-11.jpg'),
(151, 353, '../upload/oppo-find-x5-pro-4.jpg', '../upload/oppo-find-x5-pro-5.jpg', '../upload/oppo-find-x5-pro-12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_donhang`
--

CREATE TABLE `chi_tiet_donhang` (
  `id_ct` int(11) NOT NULL,
  `id_dh` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `Ten_sp_mua_hang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Gia_don_hang` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `mau_sac` int(11) NOT NULL,
  `anh_sp` varchar(100) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `thanh_tien` varchar(50) NOT NULL,
  `Thoi_gian` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chi_tiet_donhang`
--

INSERT INTO `chi_tiet_donhang` (`id_ct`, `id_dh`, `id_sp`, `Ten_sp_mua_hang`, `Gia_don_hang`, `mau_sac`, `anh_sp`, `so_luong`, `thanh_tien`, `Thoi_gian`) VALUES
(70, 49, 348, 'Điện thoại Samsung Galaxy A33 5G 6GB ', '8.490.000', 0, '../upload/samsung1.jpg', 1, '8.490.000', '2022-07-06 11:45:35'),
(71, 50, 350, 'Điện thoại iPhone 12 Pro 512GB', '28.490.000', 0, '../upload/iphone-12-pro-512gb1.jpg', 2, '56.980.000', '2022-07-06 12:00:15'),
(72, 51, 351, 'Điện thoại iPhone 13 128GB', '20.790.000', 0, '../upload/iphone-13-1.jpg', 1, '20.790.000', '2022-07-09 00:43:53'),
(73, 0, 326, 'Laptop Apple MacBook Air M1 2020 16GB/256GB/7-core', '28.190.000', 0, '../upload/apple-macbook-air-m1-2020-z124000de-1-org.jpg', 1, '28.190.000', '2022-07-09 00:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc_sp`
--

CREATE TABLE `danhmuc_sp` (
  `id_dm` int(11) NOT NULL,
  `ten_dm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `danhmuc_sp`
--

INSERT INTO `danhmuc_sp` (`id_dm`, `ten_dm`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(4, 'oppo');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id_dh` int(11) NOT NULL,
  `ho_ten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `so_dien_thoai` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dia_chi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `hinh_thuc_mua_hang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id_dh`, `ho_ten`, `so_dien_thoai`, `email`, `dia_chi`, `hinh_thuc_mua_hang`) VALUES
(49, 'Bùi Hoàng Phúc', '0985492475', 'hoangphuc@gmail.com', '16 Độc Lập-Cẩm Sơn-Cẩm Phả-Quảng Ninh', 1),
(50, 'Nguyễn Anh Thư', '0388026626', 'anhthu@gmail.com', '103 Nhà Tập Thể E2-Ngõ 128C Đại La-Phườn Đồng Tâm-Quận Hai Bà Trưng-Hà Nội', 1),
(51, 'Nguyễn Hương Giang', '0936524490', 'huonggiang@gmail.com', '16 Cốt Mìn-Cẩm Đông-Cẩm Phả-Quảng Ninh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `id_lh` int(11) NOT NULL,
  `hoten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sdt` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(40) NOT NULL,
  `danhmuc_hotro` int(11) NOT NULL,
  `noi_dung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lienhe`
--

INSERT INTO `lienhe` (`id_lh`, `hoten`, `sdt`, `email`, `danhmuc_hotro`, `noi_dung`, `Time`) VALUES
(10, 'Bùi Huy Hoàng', '0369820154', 'huyhoang@gmail.com', 3, 'Xử Lý Đơn Hàng', '2022-07-06 11:43:43'),
(11, 'Nguyễn Trung Hiếu', '0388360630', 'hieunguyen@gmail.com', 1, 'Cần Được Tư Vấn Về Thông Tin Sản Phẩm', '2022-07-06 12:04:56');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sp` int(11) NOT NULL,
  `ten_sp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `gia_sp` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `anh_sp` varchar(100) DEFAULT NULL,
  `thuocdanhmuc` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `hien_trang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `sanphamdacbiet` bit(1) DEFAULT NULL,
  `chuyen_muc` varchar(40) DEFAULT NULL,
  `mota` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thongso_kithuat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id_sp`, `ten_sp`, `gia_sp`, `anh_sp`, `thuocdanhmuc`, `hien_trang`, `sanphamdacbiet`, `chuyen_muc`, `mota`, `thongso_kithuat`) VALUES
(247, 'Điện thoại iPhone 13 Pro Max 128GB', '29.900.000', '../upload/iphone-13-pro-max.jpg', 'Apple', 'Còn Hàng', b'1', 'Dien_Thoai', '<p><strong>Điện thoại iPhone 13 Pro Max 128GB</strong></p>\r\n<p><strong>iPhone 13 Pro Max 128GB</strong> - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.</p>\r\n', '<table cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td>Chất liệu:</td>\n<td>Khung thép không gỉ & Mặt lưng kính cường lực</td>\n</tr>\n<tr>\n<td>Thiết kế:</td>\n<td>\nNguyên khối</td>\n</tr>\n<tr>\n<td>Kích thước, khối lượng::</td>\n<td>Kích thước, khối lượng:</td>\n</tr>\n<tr>\n<tr>\n<td>RAM:</td>\n<td>6 GB</td>\n</tr>\n<tr>\n<td>Camera trước:</td>\n<td>12 MP</td>\n</tr>\n<tr>\n<td>Camera sau:</td>\n<td>3 camera 12 MP</td>\n</tr>\n<tr>\n<td>Bộ nhớ trong:</td>\n<td>128 GB</td>\n</tr>\n<tr>\n\n<tr>\n<td>Hỗ trợ đa sim:</td>\n<td>\n1 Nano SIM & 1 eSIM</td>\n</tr>\n<tr>\n<td>Danh bạ:</td>\n<td>Không giới hạn</td>\n</tr>\n<tr>\n<td>Mạng di động:</td>\n<td>Hỗ trợ 5G</td>\n</tr>\n<tr>\n<td>Wifi:</td>\n<td>Dual-band (2.4 GHz/5 GHz)\nWi-Fi 802.11 a/b/g/n/ac/ax\nWi-Fi hotspot\nWi-Fi MIMO</td>\n</tr>\n<tr>\n<td>Danh bạ:</td>\n<td>Không giới hạn</td>\n</tr>\n<tr>\n<td>Quay phim:</td>\n<td>4K 2160p@24fps\n4K 2160p@30fps\n4K 2160p@60fps\nFullHD 1080p@120fps\nFullHD 1080p@240fps\nFullHD 1080p@30fps\nFullHD 1080p@60fps\nHD 720p@30fps</td>\n</tr>\n<tr>\n<td>Pin:</td>\n<td>Li-Ion, 4352 mAh</td>\n</tr>\n<tr>\n<td>Tính năng đặc biệt:</td>\n<td>Mở khoá khuôn mặt Face ID, Ghi âm có microphone chuyên dụng chống ồn, chống nước IP68</td>\n</tr>\n</tbody>\n</table>'),
(326, 'Laptop Apple MacBook Air M1 2020 16GB/256GB/7-core', '28.190.000', '../upload/apple-macbook-air-m1-2020-z124000de-1-org.jpg', NULL, 'Còn Hàng', NULL, 'May_Tinh', '', '<table cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Bộ vi xử lý:</td>\r\n<td>\r\nApple M1 </td>\r\n</tr>\r\n<tr>\r\n<td>Bộ nhớ:</td>\r\n<td>\r\n16 GB ram, \r\n256 GB SSD \r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Màn hình:</td>\r\n<td>\r\n13.3 inch,\r\nRetina (2560 x 1600)\r\n, 1440 x 900 pixels, LED Backlit</td>\r\n</tr>\r\n<tr>\r\n<td>Ổ cứng:</td>\r\n<td>\r\n256 GB SSD\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Card màn hình:</td>\r\n<td>\r\nCard tích hợp - 7 nhân GPU</td>\r\n</tr>\r\n<tr>\r\n<td>Webcam:</td>\r\n<td>\r\n720p FaceTime Camera</td>\r\n</tr>\r\n<tr>\r\n<td>Hệ điều hành:</td>\r\n<td>MAC OS</td>\r\n</tr>\r\n<tr>\r\n<td>Ổ quang:</td>\r\n<td>Không có</td>\r\n</tr>\r\n<tr>\r\n<td>Bảo hành:</td>\r\n<td>12 tháng</td>\r\n</tr>\r\n<tr>\r\n<td>Kích thước, trọng lượng:</td>\r\n<td>Dài 304.1 mm - Rộng 212.4 mm - Dày 4.1 mm đến 16.1 mm - Nặng 1.29 kg</td>\r\n</tr>\r\n<tr>\r\n<td>chất liệu:</td>\r\n<td>\r\nVỏ kim loại nguyên khối</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(327, 'Laptop Dell Gaming Alienware m15 R6', '61.490.000', '../upload/dell-gaming-alienware-m15-r6-i7-70272633-1.jpg', '', 'Còn Hàng', b'1', 'May_Tinh', '<p><strong>Với phong cách thiết kế độc đáo cùng cấu hình vượt trội, laptop Dell Gaming Alienware m15 R6 i7 11800H (70272633) sẵn sàng đáp ứng hoàn hảo mọi tác vụ của một chiếc laptop đồ họa - kỹ thuật như thiết kế hay chiến game.\r\n• Laptop Dell Gaming Alienware sở hữu CPU Intel Core i7 Tiger Lake 11800H mang lại hiệu năng xử lý vượt trội. Cùng bạn thoả sức sáng tạo hình ảnh, video với card tích hợp NVIDIA GeForce RTX 3070 8 GB hay giải trí với các tựa game hấp dẫn như CS:GO, GTAV,...\r\n\r\n• Bộ nhớ RAM 32 GB cho khả năng đa nhiệm cực mượt mà, ổ cứng SSD 1 TB cho bạn thoải mái lưu trữ dữ liệu với khả năng truy xuất, khởi động máy cực nhanh.\r\n\r\n• Laptop Dell sở hữu ngoại hình độc đáo mang lại độ nhận diện cao với chiếc logo nổi bật trên lớp vỏ nhựa bền chắc, trọng lượng 2.69 kg luôn trong tư thế sẵn sàng chiến đấu bất cứ khi nào bạn cần.\r\n\r\n• Màn hình 15.6 inch có độ sáng lên đến 400 nits và 99% DCI-P3 cho hình ảnh hiển thị sống động, rực rỡ với độ tương phản cao.\r\n\r\n• Công nghệ WVA mang đến cho màn hình laptop góc nhìn rộng lên đến 178 độ, tần số quét 240 Hz cho độ trễ cực thấp, mang lại trải nghiệm hình ảnh siêu mượt mà, không bị giật, xé khi chiến những trận game đỉnh cao.\r\n\r\n• Đèn bàn phím chuyển màu RGB độc đáo hỗ trợ bạn gõ tốt, chiến game trong mọi điều kiện sáng.\r\n\r\n• Trang bị các cổng kết nối tiện lợi như USB 3.2, HDMI, LAN (RJ45), USB Type-C.\r\n\r\n• Công nghệ High Definition (HD) với tính năng khuếch đại âm thanh cùng Audio Nahimic Audio giả lập hệ thống âm vòm 3D sống động, lọc và khử tiếng ồn hiệu quả.\r\n\r\n</p>\r\n', '<table cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Thiết kế:</td>\r\n<td>Pin rời</td>\r\n</tr>\r\n<tr>\r\n<td>Chất liệu:</td>\r\n<td>Vỏ nhựa v&acirc;n xước</td>\r\n</tr>\r\n<tr>\r\n<td>M&agrave;n h&igrave;nh:</td>\r\n<td>15.6\', HD, 1366 x 768 pixels</td>\r\n</tr>\r\n<tr>\r\n<td>Bộ vi xử l&yacute;:</td>\r\n<td>Intel&reg;&nbsp;Core&trade; i5 Broadwell-5200U (2.2 GHz, 3 MB Cache)</td>\r\n</tr>\r\n<tr>\r\n<td>Bộ nhớ:</td>\r\n<td>4 GB, DDR3L, 1600MHz</td>\r\n</tr>\r\n<tr>\r\n<td>Ổ cứng:</td>\r\n<td>500 GB, HDD, 5400 rpm</td>\r\n</tr>\r\n<tr>\r\n<td>Ổ quang:</td>\r\n<td>DVD-RW</td>\r\n</tr>\r\n<tr>\r\n<td>Hệ điều h&agrave;nh:</td>\r\n<td>Free DOS</td>\r\n</tr>\r\n<tr>\r\n<td>Card đồ họa:</td>\r\n<td>NVIDIA GT 930M, 2 GB</td>\r\n</tr>\r\n<tr>\r\n<td>Webcam:</td>\r\n<td>0.9 MP</td>\r\n</tr>\r\n<tr>\r\n<td>K&iacute;ch thước:</td>\r\n<td>328 x 256 x 25.8 mm</td>\r\n</tr>\r\n<tr>\r\n<td>Trọng lượng:</td>\r\n<td>2.3 kg</td>\r\n</tr>\r\n<tr>\r\n<td>Bảo h&agrave;nh:</td>\r\n<td>24 th&aacute;ng</td>\r\n</tr>\r\n<tr>\r\n<td>Loại pin:</td>\r\n<td>Li-Ion, 3 cell</td>\r\n</tr>\r\n<tr>\r\n<td>Kết nối:</td>\r\n<td>1 x USB 3.0, 2 x USB 2.0, Audio Combo Jack (headphone and mic), 1 x VGA, 1 x HDMI card reader</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(328, 'Laptop Dell N3543A- P40F001', '23.990.000', '../upload/hp-gaming-victus-16-e0170ax-r7-4r0u7pa-2-1.jpg', NULL, 'Còn Hàng', NULL, 'May_Tinh', '<p><strong>Dòng Gaming Victus là một phiên bản lột xác hoàn toàn từ thiết kế đến hiệu năng của nhà HP. Chỉ với một mức giá tầm trung là bạn có thể sở hữu ngay chiếc laptop HP Gaming VICTUS 16 e0170AX R7 (4R0U7PA) chinh phục mọi tác vụ.</p>', '<table cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Bộ vi xử l&yacute;:</td>\r\n<td>Intel&reg; Core&trade; i3-5005U (2.0 GHz, 3 MB Cache)</td>\r\n</tr>\r\n<tr>\r\n<td>Bộ nhớ:</td>\r\n<td>4 GB, DDR3, 1600 MHz</td>\r\n</tr>\r\n<tr>\r\n<td>M&agrave;n h&igrave;nh:</td>\r\n<td>15.6\', HD, 1366 x 768 pixels</td>\r\n</tr>\r\n<tr>\r\n<td>Ổ cứng:</td>\r\n<td>500 GB, 5400rpm</td>\r\n</tr>\r\n<tr>\r\n<td>Card đồ họa:</td>\r\n<td>Intel&reg; HD Graphics 5500</td>\r\n</tr>\r\n<tr>\r\n<td>Webcam:</td>\r\n<td>C&oacute;</td>\r\n</tr>\r\n<tr>\r\n<td>Hệ điều h&agrave;nh:</td>\r\n<td>Free DOS</td>\r\n</tr>\r\n<tr>\r\n<td>Ổ quang:</td>\r\n<td>DVDRW</td>\r\n</tr>\r\n<tr>\r\n<td>Trọng lượng:</td>\r\n<td>2.3 kg</td>\r\n</tr>\r\n<tr>\r\n<td>Bảo h&agrave;nh:</td>\r\n<td>12 th&aacute;ng</td>\r\n</tr>\r\n<tr>\r\n<td>Loại pin:</td>\r\n<td>Li-Ion, 4 Cell</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(331, 'Laptop HP EliteBook X360 1040 G8', '42.090.000', '../upload/hp-elitebook-x360-1040-g8-i7-3g1h4pa-2-1-org.jpg', NULL, 'Còn Hàng', NULL, 'May_Tinh', '<p><strong>Đẳng cấp và ấn tượng hơn bao giờ hết cùng laptop HP EliteBook X360 1040 G8 i7 (3G1H4PA) với thiết kế sang trọng, bản lề gập xoay 360 độ cùng khả năng vận hành và xử lý mọi tác vụ mạnh mẽ mang đến những trải nghiệm trọn vẹn, khó quên cho người dùng.</p>', '<table cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>M&agrave;n h&igrave;nh:</td>\r\n<td>15.6\', HD LED, 1366 x 768 pixels</td>\r\n</tr>\r\n<tr>\r\n<td>Bộ vi xử l&yacute;:</td>\r\n<td>Intel&reg; Core&trade; i3-4005U (1.7Ghz - 3 MB Cache)</td>\r\n</tr>\r\n<tr>\r\n<td>Bộ nhớ:</td>\r\n<td>4 GB, DDR3, 1600 MHz</td>\r\n</tr>\r\n<tr>\r\n<td>Ổ cứng:</td>\r\n<td>500 GB, HDD, 5400 rpm</td>\r\n</tr>\r\n<tr>\r\n<td>Card đồ họa:</td>\r\n<td>Intel HD Graphics 4400</td>\r\n</tr>\r\n<tr>\r\n<td>Webcam:</td>\r\n<td>C&oacute;</td>\r\n</tr>\r\n<tr>\r\n<td>Hệ điều h&agrave;nh:</td>\r\n<td>Free DOS</td>\r\n</tr>\r\n<tr>\r\n<td>Ổ quang:</td>\r\n<td>DVDSM</td>\r\n</tr>\r\n<tr>\r\n<td>Trọng lượng:</td>\r\n<td>2.3 kg</td>\r\n</tr>\r\n<tr>\r\n<td>Bảo h&agrave;nh:</td>\r\n<td>12 th&aacute;ng</td>\r\n</tr>\r\n<tr>\r\n<td>Loại pin:</td>\r\n<td>Li-Ion, 4 cell</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(348, 'Điện thoại Samsung Galaxy A33 5G 6GB ', '8.490.000', '../upload/samsung1.jpg', 'Samsung', 'còn hàng', NULL, 'Dien_Thoai', '<p><strong> Samsung Galaxy A33 5G 6GB</strong></p>\r\n<p><strong> Samsung Galaxy A33 5G 6GB</strong> Samsung Galaxy A33 5G 6GB ra mắt vào ngày 17/03, được xem là bản cập nhật khá lớn so với thế hệ tiền nhiệm Galaxy A32 về thiết kế đến thông số kỹ thuật bên trong, nhằm mang đến vẻ ngoài đẹp mắt cũng như cạnh tranh trực tiếp ở phần hiệu năng đối với các đối thủ cùng phân khúc giá.</p>', '<table cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Chất liệu:</td>\r\n<td>Khung & Mặt lưng nhựa\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Thiết kế:</td>\r\n<td>\r\nNguyên khối</td>\r\n</tr>\r\n<tr>\r\n<td>Kích thước, khối lượng:</td>\r\n<td>Dài 159.7 mm - Ngang 74 mm - Dày 8.1 mm - Nặng 186 g\r\n</td>\r\n</tr>\r\n<tr>\r\n<tr>\r\n<td>RAM:</td>\r\n<td>6 GB</td>\r\n</tr>\r\n<tr>\r\n<td>Camera trước:</td>\r\n<td>13 MP</td>\r\n</tr>\r\n<tr>\r\n<td>Camera sau:</td>\r\n<td>Chính 48 MP & Phụ 8 MP, 5 MP, 2 MP</td>\r\n</tr>\r\n<tr>\r\n<td>Bộ nhớ trong:</td>\r\n<td>128 GB</td>\r\n</tr>\r\n<tr>\r\n\r\n<tr>\r\n<td>Hỗ trợ đa sim:</td>\r\n<td>\r\n2 Nano SIM (SIM 2 chung khe thẻ nhớ)</td>\r\n</tr>\r\n<tr>\r\n<td>Danh bạ:</td>\r\n<td>Không giới hạn</td>\r\n</tr>\r\n<tr>\r\n<td>Mạng di động:</td>\r\n<td>Hỗ trợ 5G</td>\r\n</tr>\r\n<tr>\r\n<td>Wifi:</td>\r\n<td>Dual-band (2.4 GHz/5 GHz)\r\n\r\nWi-Fi 802.11 a/b/g/n/ac\r\n\r\nWi-Fi Direct\r\n\r\nWi-Fi hotspot</td>\r\n</tr>\r\n<tr>\r\n<td>Danh bạ:</td>\r\n<td>Không giới hạn</td>\r\n</tr>\r\n<tr>\r\n<td>Quay phim:</td>\r\n<td>4K 2160p@30fps\r\n\r\nFullHD 1080p@30fps\r\n\r\nFullHD 1080p@60fps\r\n\r\nHD 720p@30fps</td>\r\n</tr>\r\n<tr>\r\n<td>Pin:</td>\r\n<td>Li-Po 5000 mAh</td>\r\n</tr>\r\n<tr>\r\n<td>Tính năng đặc biệt:</td>\r\n<td>\r\nMở khoá vân tay dưới màn hình\r\n, Chạm 2 lần tắt/sáng màn hình\r\n\r\nChế độ trẻ em (Samsung Kids),\r\n\r\nChế độ đơn giản (Giao diện đơn giản),\r\n\r\nMở rộng bộ nhớ RAM,\r\n\r\nSamsung Pay,\r\n\r\nSmart Switch (ứng dụng chuyển đổi dữ liệu),\r\n\r\nThu nhỏ màn hình sử dụng một tay,\r\n\r\nTrợ lý ảo Samsung Bixby,\r\n\r\nTối ưu game (Game Booster),\r\n\r\nÂm thanh Dolby Atmos,\r\n\r\nỨng dụng kép (Dual Messenger)</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(349, 'Điện thoại OPPO Reno7 Z 5G', '10.490.000', '../upload/oppo1-1.jpg', 'oppo', 'còn hàng', b'1', 'Dien_Thoai', '<p><strong>Điện thoại OPPO Reno7 Z 5G</strong></p>\r\n<p><strong>Điện thoại OPPO Reno7 Z 5G</strong> OPPO đã trình làng mẫu Reno7 Z 5G với thiết kế OPPO Glow độc quyền, camera mang hiệu ứng như máy DSLR chuyên nghiệp cùng viền sáng kép, máy có một cấu hình mạnh mẽ và đạt chứng nhận xếp hạng A về độ mượt.</p>\r\n', '<table cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Chất liệu:</td>\r\n<td>Khung nhựa & Mặt lưng thuỷ tinh hữu cơ\r\n\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Thiết kế:</td>\r\n<td>\r\nNguyên khối</td>\r\n</tr>\r\n<tr>\r\n<td>Kích thước, khối lượng:</td>\r\n<td>Dài 159.85 mm - Ngang 73.17 mm - Dày 7.49 mm - Nặng 173 g\r\n\r\n</td>\r\n</tr>\r\n<tr>\r\n<tr>\r\n<td>RAM:</td>\r\n<td>8 GB</td>\r\n</tr>\r\n<tr>\r\n<td>Camera trước:</td>\r\n<td>16 MP</td>\r\n</tr>\r\n<tr>\r\n<td>Camera sau:</td>\r\n<td>Chính 64 MP & Phụ 2 MP, 2 MP</td>\r\n</tr>\r\n<tr>\r\n<td>Bộ nhớ trong:</td>\r\n<td>128 GB</td>\r\n</tr>\r\n<tr>\r\n\r\n<tr>\r\n<td>Hỗ trợ đa sim:</td>\r\n<td>2 Nano SIM (SIM 2 chung khe thẻ nhớ)\r\n\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Danh bạ:</td>\r\n<td>Không giới hạn</td>\r\n</tr>\r\n<tr>\r\n<td>Mạng di động:</td>\r\n<td>Hỗ trợ 5G</td>\r\n</tr>\r\n<tr>\r\n<td>Wifi:</td>\r\n<td>Dual-band (2.4 GHz/5 GHz)\r\n\r\nWi-Fi 802.11 a/b/g/n\r\n\r\nWi-Fi 802.11 a/b/g/n/ac</td>\r\n</tr>\r\n<tr>\r\n<td>Danh bạ:</td>\r\n<td>Không giới hạn</td>\r\n</tr>\r\n<tr>\r\n<td>Quay phim:</td>\r\n<td>FullHD 1080p@30fps\r\n\r\nHD 720p@120fps\r\n\r\nHD 720p@30fps</td>\r\n</tr>\r\n<tr>\r\n<td>Pin:</td>\r\n<td>Li-Po \r\n4500 mAh</td>\r\n</tr>\r\n<tr>\r\n<td>Tính năng đặc biệt:</td>\r\n<td>\r\nChạm 2 lần tắt/sáng màn hình\r\n\r\nChế độ trẻ em (Không gian trẻ em)\r\n\r\nChế độ đơn giản (Giao diện đơn giản)\r\n\r\nCử chỉ màn hình tắt\r\n\r\nCử chỉ thông minh\r\n\r\nKhoá ứng dụng\r\n\r\nMở rộng bộ nhớ RAM\r\n\r\nTrợ lý ảo Google Assistant\r\n\r\nĐa cửa sổ (chia đôi màn hình)\r\n\r\nỨng dụng kép (Nhân bản ứng dụng)</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(350, 'Điện thoại iPhone 12 Pro 512GB', '28.490.000', '../upload/iphone-12-pro-512gb1.jpg', 'Apple', 'còn hàng', b'1', 'Dien_Thoai', '<p><strong>Điện thoại iPhone 12 Pro 512GB</strong></p>\r\n<p><strong>Thêm siêu phẩm của điện thoại iPhone 12 series được Apple cho ra mắt trong sự kiện “Hi Speed”, mang trên mình các yếu tố của một siêu phẩm với nhiều tính năng đặc biệt, hấp dẫn và không ai khác đó chính là smartphone iPhone 12 Pro 512 GB..</p>\r\n', '<table cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Chất liệu:</td>\r\n<td>Khung thép không gỉ & Mặt lưng kính cường lực\r\n\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Thiết kế:</td>\r\n<td>\r\nNguyên khối</td>\r\n</tr>\r\n<tr>\r\n<td>Kích thước, khối lượng:</td>\r\n<td>Dài 146.7 mm - Ngang 71.5 mm - Dày 7.4 mm - Nặng 189 g\r\n</td>\r\n</tr>\r\n<tr>\r\n<tr>\r\n<td>RAM:</td>\r\n<td>6 GB</td>\r\n</tr>\r\n<tr>\r\n<td>Camera trước:</td>\r\n<td>\r\n12 MP</td>\r\n</tr>\r\n<tr>\r\n<td>Camera sau:</td>\r\n<td>\r\n3 camera 12 MP</td>\r\n</tr>\r\n<tr>\r\n<td>Bộ nhớ trong:</td>\r\n<td>512 GB</td>\r\n</tr>\r\n<tr>\r\n\r\n<tr>\r\n<td>Hỗ trợ đa sim:</td>\r\n<td>1 Nano SIM & 1 eSIM\r\n\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Danh bạ:</td>\r\n<td>Không giới hạn</td>\r\n</tr>\r\n<tr>\r\n<td>Mạng di động:</td>\r\n<td>Hỗ trợ 5G</td>\r\n</tr>\r\n<tr>\r\n<td>Wifi:</td>\r\n<td>Dual-band (2.4 GHz/5 GHz)\r\n\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\n\r\nWi-Fi hotspot</td>\r\n</tr>\r\n<tr>\r\n<td>Danh bạ:</td>\r\n<td>Không giới hạn</td>\r\n</tr>\r\n<tr>\r\n<td>Quay phim:</td>\r\n<td>\r\n4K 2160p@24fps\r\n\r\n4K 2160p@30fps\r\n\r\n4K 2160p@60fps\r\n\r\nFullHD 1080p@30fps\r\n\r\nFullHD 1080p@60fps\r\n\r\nHD 720p@30fps</td>\r\n</tr>\r\n<tr>\r\n<td>Pin:</td>\r\n<td>\r\nLi-Ion \r\n\r\n2815 mAh</td>\r\n</tr>\r\n<tr>\r\n<td>Tính năng đặc biệt:</td>\r\n<td>\r\n\r\nMở khoá khuôn mặt Face ID,\r\n\r\nGhi âm có microphone chuyên dụng chống ồn,\r\n\r\nChế độ đơn giản (Giao diện đơn giản),\r\n\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(351, 'Điện thoại iPhone 13 128GB', '20.790.000', '../upload/iphone-13-1.jpg', 'Apple', 'còn hàng', b'1', 'Dien_Thoai', '<p><strong>Điện thoại iPhone 13 128GB </strong></p>\r\n<p><strong>Trong khi sức hút đến từ bộ 4 phiên bản iPhone 12 vẫn chưa nguội đi, thì hãng điện thoại Apple đã mang đến cho người dùng một siêu phẩm mới iPhone 13 với nhiều cải tiến thú vị sẽ mang lại những trải nghiệm hấp dẫn nhất cho người dùng.</p>\r\n', '<table cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Chất liệu:</td>\r\n<td>Khung nhôm & Mặt lưng kính cường lực\r\n\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Thiết kế:</td>\r\n<td>\r\nNguyên khối</td>\r\n</tr>\r\n<tr>\r\n<td>Kích thước, khối lượng:</td>\r\n<td>Dài 146.7 mm - Ngang 71.5 mm - Dày 7.65 mm - Nặng 174 g\r\n\r\n</td>\r\n</tr>\r\n<tr>\r\n<tr>\r\n<td>RAM:</td>\r\n<td>\r\n4 GB</td>\r\n</tr>\r\n<tr>\r\n<td>Camera trước:</td>\r\n<td>12 MP</td>\r\n</tr>\r\n<tr>\r\n<td>Camera sau:</td>\r\n<td>12 MP</td>\r\n</tr>\r\n<tr>\r\n<td>Bộ nhớ trong:</td>\r\n<td>128 GB</td>\r\n</tr>\r\n<tr>\r\n\r\n<tr>\r\n<td>Hỗ trợ đa sim:</td>\r\n<td>1 Nano SIM & 1 eSIM\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Danh bạ:</td>\r\n<td>Không giới hạn</td>\r\n</tr>\r\n<tr>\r\n<td>Mạng di động:</td>\r\n<td>Hỗ trợ 5G</td>\r\n</tr>\r\n<tr>\r\n<td>Wifi:</td>\r\n<td>Dual-band (2.4 GHz/5 GHz)\r\n\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\n\r\nWi-Fi hotspot\r\n\r\nWi-Fi MIMO</td>\r\n</tr>\r\n<tr>\r\n<td>Danh bạ:</td>\r\n<td>Không giới hạn</td>\r\n</tr>\r\n<tr>\r\n<td>Quay phim:</td>\r\n<td>4K 2160p@24fps\r\n\r\n4K 2160p@30fps\r\n\r\n4K 2160p@60fps\r\n\r\nFullHD 1080p@120fps\r\n\r\nFullHD 1080p@240fps\r\n\r\nFullHD 1080p@30fps\r\n\r\nFullHD 1080p@60fps\r\n\r\nHD 720p@30fps</td>\r\n</tr>\r\n<tr>\r\n<td>Pin:</td>\r\n<td>Li-Ion \r\n3240 mAh\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Tính năng đặc biệt:</td>\r\n<td>\r\nMở khoá khuôn mặt Face ID,\r\n\r\n\r\nGhi âm có microphone chuyên dụng chống ồn,\r\n\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(352, 'Điện thoại Samsung Galaxy S22 Ultra 5G 128GB ', '27.990.000', '../upload/samsung-galaxy-s22-ultra-1-1.jpg', 'Samsung', 'còn hàng', b'1', 'Dien_Thoai', '<p><strong>Galaxy S22 Ultra 5G</strong></p>\r\n<p><strong>Galaxy S22 Ultra 5G chiếc smartphone cao cấp nhất trong bộ 3 Galaxy S22 series mà Samsung đã cho ra mắt. Tích hợp bút S Pen hoàn hảo trong thân máy, trang bị vi xử lý mạnh mẽ cho các tác vụ sử dụng vô cùng mượt mà và nổi bật hơn với cụm camera không viền độc đáo mang đậm dấu ấn riêng.</p>\r\n', '<table cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Chất liệu:</td>\r\n<td>\r\nKhung kim loại & Mặt lưng kính\r\n\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Thiết kế:</td>\r\n<td>\r\nNguyên khối</td>\r\n</tr>\r\n<tr>\r\n<td>Kích thước, khối lượng:</td>\r\n<td>Dài 163.3 mm - Ngang 77.9 mm - Dày 8.9 mm - Nặng 228 g\r\n\r\n</td>\r\n</tr>\r\n<tr>\r\n<tr>\r\n<td>RAM:</td>\r\n<td>8 GB</td>\r\n</tr>\r\n<tr>\r\n<td>Camera trước:</td>\r\n<td>40 MP</td>\r\n</tr>\r\n<tr>\r\n<td>Camera sau:</td>\r\n<td>\r\nChính 108 MP & Phụ 12 MP, 10 MP, 10 MP</td>\r\n</tr>\r\n<tr>\r\n<td>Bộ nhớ trong:</td>\r\n<td>128 GB</td>\r\n</tr>\r\n<tr>\r\n\r\n<tr>\r\n<td>Hỗ trợ đa sim:</td>\r\n<td>2\r\n2 Nano SIM hoặc 1 Nano SIM + 1 eSIM\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Danh bạ:</td>\r\n<td>Không giới hạn</td>\r\n</tr>\r\n<tr>\r\n<td>Mạng di động:</td>\r\n<td>Hỗ trợ 5G</td>\r\n</tr>\r\n<tr>\r\n<td>Wifi:</td>\r\n<td>\r\nDual-band (2.4 GHz/5 GHz),\r\n\r\nWi-Fi 802.11 a/b/g/n/ac/ax,\r\n\r\nWi-Fi Direct,\r\n\r\nWi-Fi hotspot</td>\r\n</tr>\r\n<tr>\r\n<td>Danh bạ:</td>\r\n<td>Không giới hạn</td>\r\n</tr>\r\n<tr>\r\n<td>Quay phim:</td>\r\n<td>\r\nDual-band (2.4 GHz/5 GHz)\r\n\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\n\r\nWi-Fi Direct\r\n\r\nWi-Fi hotspot</td>\r\n</tr>\r\n<tr>\r\n<td>Pin:</td>\r\n<td>Li-Ion \r\n5000 mAh</td>\r\n</tr>\r\n<tr>\r\n<td>Tính năng đặc biệt:</td>\r\n<td>\r\n\r\nChạm 2 lần sáng màn hình\r\n\r\nChặn cuộc gọi\r\n\r\nChặn tin nhắn\r\n\r\nKhông gian thứ hai (Thư mục bảo mật)\r\n\r\nMàn hình luôn hiển thị AOD\r\n\r\nSamsung DeX (Kết nối màn hình sử dụng giao diện tương tự PC)\r\n\r\nSamsung Pay\r\n\r\nThu nhỏ màn hình sử dụng một tay\r\n\r\nTrợ lý ảo Samsung Bixby\r\n\r\nTối ưu game (Game Booster)\r\n\r\nÂm thanh AKG\r\n\r\nÂm thanh Dolby Atmos\r\n\r\nĐa cửa sổ (chia đôi màn hình)</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(353, 'Điện thoại OPPO Find X5 Pro 5G ', '32.990.000', '../upload/oppo-find-x5-pro-1-1.jpg', 'oppo', 'còn hàng', b'1', 'Dien_Thoai', '<p><strong>OPPO Find X5 Pro 5G</strong></p>\r\n<p><strong>OPPO Find X5 Pro 5G có lẽ là cái tên sáng giá được xướng tên trong danh sách điện thoại có thiết kế ấn tượng trong năm 2022. Máy được hãng cho ra mắt với một diện mạo độc lạ chưa từng có, cùng với đó là những nâng cấp về chất lượng ở camera nhờ sự hợp tác với nhà sản xuất máy ảnh Hasselblad. </p>\r\n', '<table cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Chất liệu:</td>\r\n<td>Khung kim loại & Mặt lưng gốm\r\n\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Thiết kế:</td>\r\n<td>\r\nNguyên khối</td>\r\n</tr>\r\n<tr>\r\n<td>Kích thước, khối lượng:</td>\r\n<td>Dài 163.7 mm - Ngang 73.9 mm - Dày 8.5 mm - Nặng 218 g\r\n\r\n</td>\r\n</tr>\r\n<tr>\r\n<tr>\r\n<td>RAM:</td>\r\n<td>\r\n12 GB</td>\r\n</tr>\r\n<tr>\r\n<td>Camera trước:</td>\r\n<td>32 MP</td>\r\n</tr>\r\n<tr>\r\n<td>Camera sau:</td>\r\n<td>Chính 50 MP & Phụ 50 MP, 13 MP\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Bộ nhớ trong:</td>\r\n<td>256 GB</td>\r\n</tr>\r\n<tr>\r\n\r\n<tr>\r\n<td>Hỗ trợ đa sim:</td>\r\n<td>2 Nano SIM (SIM 2 chung khe thẻ nhớ)\r\n\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Danh bạ:</td>\r\n<td>Không giới hạn</td>\r\n</tr>\r\n<tr>\r\n<td>Mạng di động:</td>\r\n<td>Hỗ trợ 5G</td>\r\n</tr>\r\n<tr>\r\n<td>Wifi:</td>\r\n<td>Dual-band (2.4 GHz/5 GHz)\r\n\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\n\r\nWi-Fi Direct\r\n\r\nWi-Fi hotspot\r\n\r\nWi-Fi MIMO</td>\r\n</tr>\r\n<tr>\r\n<td>Danh bạ:</td>\r\n<td>Không giới hạn</td>\r\n</tr>\r\n<tr>\r\n<td>Quay phim:</td>\r\n<td>4K 2160p@30fps\r\n\r\n4K 2160p@60fps\r\n\r\nFullHD 1080p@30fps\r\n\r\nFullHD 1080p@60fps\r\n\r\nHD 720p@30fps\r\n\r\nHD 720p@60fps</td>\r\n</tr>\r\n<tr>\r\n<td>Pin:</td>\r\n<td>Li-Po \r\n\r\n5000 mAh</td>\r\n</tr>\r\n<tr>\r\n<td>Tính năng đặc biệt:</td>\r\n<td>\r\nChạm 2 lần tắt/sáng màn hình\r\n\r\nChế độ trẻ em (Không gian trẻ em)\r\n\r\nChế độ đơn giản (Giao diện đơn giản)\r\n\r\nCử chỉ màn hình tắt\r\n\r\nCử chỉ thông minh\r\n\r\nKhoá ứng dụng\r\n\r\nMàn hình luôn hiển thị AOD\r\n\r\nMở rộng bộ nhớ RAM\r\n\r\nTích hợp NPU MariSilicon X\r\n\r\nTối ưu game (Không gian trò chơi)\r\n\r\nÂm thanh Dolby Atmos\r\n\r\nĐa cửa sổ (chia đôi màn hình)\r\n\r\nỨng dụng kép (Nhân bản ứng dụng)\r\n\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>');

-- --------------------------------------------------------

--
-- Table structure for table `thanhvienhqshop`
--

CREATE TABLE `thanhvienhqshop` (
  `id_tv` int(11) NOT NULL,
  `tentaikhoan` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `matkhau` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ngaysinh` varchar(30) DEFAULT NULL,
  `sodienthoai` varchar(50) DEFAULT NULL,
  `ho_ten` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `CMND` varchar(20) DEFAULT NULL,
  `dia_chi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `tinh_thanh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `quan_huyen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ngaydangki` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thanhvienhqshop`
--

INSERT INTO `thanhvienhqshop` (`id_tv`, `tentaikhoan`, `matkhau`, `email`, `ngaysinh`, `sodienthoai`, `ho_ten`, `CMND`, `dia_chi`, `tinh_thanh`, `quan_huyen`, `ngaydangki`) VALUES
(34, 'phuongthao', 'fdf9501afea1540047bfb841f1e5f81c', 'phuongthao@gmail.com', '10/09/2001', '0775280028', 'Vũ Phương Thảo', '021943579386', 'Cẩm Bình', 'Quảng Ninh', 'Cẩm Phả', '2022-07-06 11:49:34'),
(35, 'hoangphuc', 'd379f16aeed7dcf14ea32faffafedec2', 'hoangphuc@gmail.com', '02/02/2002', '0985492475', 'Bùi Hoàng Phúc', '022202000935', '16 Độc Lập-Cẩm Sơn', 'Quảng Ninh', 'Cẩm Phả', '2022-07-06 11:51:45'),
(36, 'anhthu', '526e19af394628551701ca28f657af7f ', 'anhthu@gmail.com', '07/08/2000', '0388026626', 'Nguyễn Anh Thư', '218473925325', 'Ngõ 128C Đại La-Phường Đồng Tâm', 'Hà Nội', 'Hai Bà Trưng', '2022-07-06 11:54:13'),
(37, 'huonggiang', '820ab25f3f337354effe95226a21ce84 ', 'huonggiang@gmail.com', '01/01/1970', '0936524490', NULL, NULL, NULL, NULL, NULL, '2022-07-09 00:39:55'),
(38, 'dinhhuy', 'ffe7265a058dcde55da5a3fab004fc8b', 'dinhhuy@gmail.com', NULL, '0945596392', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_ad`),
  ADD UNIQUE KEY `Name_Unique` (`Name`);

--
-- Indexes for table `anhsanpham`
--
ALTER TABLE `anhsanpham`
  ADD PRIMARY KEY (`id_anh`);

--
-- Indexes for table `chi_tiet_donhang`
--
ALTER TABLE `chi_tiet_donhang`
  ADD PRIMARY KEY (`id_ct`);

--
-- Indexes for table `danhmuc_sp`
--
ALTER TABLE `danhmuc_sp`
  ADD PRIMARY KEY (`id_dm`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id_dh`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `so_dien_thoai` (`so_dien_thoai`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id_lh`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sp`);

--
-- Indexes for table `thanhvienhqshop`
--
ALTER TABLE `thanhvienhqshop`
  ADD PRIMARY KEY (`id_tv`),
  ADD UNIQUE KEY `Thanhvien_Unique` (`tentaikhoan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_ad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `anhsanpham`
--
ALTER TABLE `anhsanpham`
  MODIFY `id_anh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `chi_tiet_donhang`
--
ALTER TABLE `chi_tiet_donhang`
  MODIFY `id_ct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `danhmuc_sp`
--
ALTER TABLE `danhmuc_sp`
  MODIFY `id_dm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id_dh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id_lh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- AUTO_INCREMENT for table `thanhvienhqshop`
--
ALTER TABLE `thanhvienhqshop`
  MODIFY `id_tv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;


