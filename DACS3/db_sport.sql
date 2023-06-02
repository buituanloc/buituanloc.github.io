-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2022 at 06:35 PM
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
-- Database: `db_sport`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_User` varchar(255) NOT NULL,
  `admin_Name` varchar(255) NOT NULL,
  `admin_Email` varchar(255) NOT NULL,
  `admin_Pass` varchar(255) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_User`, `admin_Name`, `admin_Email`, `admin_Pass`, `level`) VALUES
('admin', 'Bùi Tuấn Lộc', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', 0),
('buivanle', 'Bùi Văn Lê', 'buivanle345@gmail.com', '5d4674581b732fdbaad3a5c595d0cae2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(4, 'Nike'),
(5, 'Adidas'),
(7, 'Converse'),
(16, 'Vans'),
(34, 'ASICS'),
(35, 'Champion'),
(40, 'Lacoste');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `ssId` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `size` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productName`, `ssId`, `price`, `size`, `quantity`, `image`) VALUES
(189, 'Vans UA Sport Suede - VN0A4BU6XW3', 'g7tra27g77uiadp0iv1dhn5rkd', 160, '35', 17, '2d391f7fc9.jpg'),
(191, 'Korea 2020 Stadium Away', 'g7tra27g77uiadp0iv1dhn5rkd', 100, 'M', 191, '4f3793a7fb.jpg'),
(194, 'Converse Chuck Taylor All Star VLTG - Back To Earth - 567046V', '2v31j7flp508afsat0bfb1kpir', 1280000, '38', 1, '9d5064dc07.jpg'),
(195, 'Vans UA Sport Suede - VN0A4BU6XW3', '2v31j7flp508afsat0bfb1kpir', 160, '35', 15, '2d391f7fc9.jpg'),
(212, 'PRIMEBLUE ULTRABOOST 20', 'psebnmap26fkur5oi8mdns309p', 220, '41', 1, 'f02eca4501.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL,
  `catSize` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`, `catSize`) VALUES
(12, 'Quần', '28'),
(13, 'Quần', '29'),
(14, 'Quần', '30'),
(15, 'Quần', '31'),
(16, 'Quần', '32'),
(17, 'Quần', '33'),
(18, 'Quần', '34'),
(19, 'Quần', '35'),
(20, 'Quần', '36'),
(21, 'Áo', 'S'),
(22, 'Áo', 'M'),
(23, 'Áo', 'L'),
(24, 'Áo', 'XL'),
(25, 'Áo', 'XXL'),
(26, 'Giày', '35'),
(27, 'Giày', '36'),
(28, 'Giày', '37'),
(29, 'Giày', '38'),
(30, 'Giày', '39'),
(31, 'Giày', '40'),
(32, 'Giày', '41'),
(33, 'Giày', '42'),
(34, 'Giày', '43'),
(35, 'Giày', '44'),
(36, 'Giày', '45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nameCus` varchar(255) NOT NULL,
  `emailCus` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`username`, `password`, `nameCus`, `emailCus`, `address`, `phone`) VALUES
('dinhhuy', 'a8ba5f5a9df6b5794239c21e954854cf', 'Nguyễn Đình Huy', 'dinhhuy@gmail.com', 'Nam Định', 945596392),
('huyhoang', '133873454171716733f01d93115a0c85', 'Bùi Huy Hoàng', 'huyhoang@gmail.com', 'Ngõ 128C Đại La,Phường Đồng Tâm,Quận Hai Bà Trưng,Hà Nội', 369820154),
('nguyenchien', 'dae540e1be97c2ab5680766026f70822', 'nguyenchien', 'chiennguyen@gmail.com', 'Thái Bình', 961253307),
('nguyenvanhoangquan', '8999cb072705d305fda287dc4dbb0220', 'Nguyễn Văn Hoàng Quân', 'nguyenvanhoangquan15@gmail.com', 'Nghệ An', 986727616);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discount`
--

CREATE TABLE `tbl_discount` (
  `id_discount` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_discount`
--

INSERT INTO `tbl_discount` (`id_discount`, `code`, `discount`) VALUES
(1, 'dacs2020', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_imgthumb`
--

CREATE TABLE `tbl_imgthumb` (
  `id` int(11) NOT NULL,
  `imgthumb` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_imgthumb`
--

INSERT INTO `tbl_imgthumb` (`id`, `imgthumb`, `product`) VALUES
(2, '5eeb8d0c7f.jpg', 'Converse Chuck Taylor All Star VLTG - Back To Earth - 567046V');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_Id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `buyer` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `totalprice` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_Id`, `date`, `buyer`, `receiver`, `phone`, `email`, `address`, `totalprice`, `status`) VALUES
(86, '2022-05-20 17:10:48', 'dinhhuy', 'Nguyễn Đình Huy', 945596392, 'dinhhuy@gmail.com', 'Nam Định', 1019000, '2'),
(87, '2022-05-20 17:11:20', 'hoangquan', 'Nguyễn Văn Hoàng Quân', 986727616, 'nguyenvanhoangquan15@gmail.com', 'Nghệ An', 160, '3'),
(88, '2022-05-21 05:44:41', 'huyhoang', 'Bùi Huy Hoàng', 369820154, 'huyhoang@gmail.com', 'Ngõ 128C Đại La,Phường Đồng Tâm,Quận Hai Bà Trưng,Hà Nội', 1280000, '2'),
(89, '2022-05-21 09:43:37', 'bakhai', 'Tằng Bá Khải', 824341560, 'bakhai@gmail.com', 'Hải Dương', 3840000, '1'),
(90, '2022-05-21 09:44:57', 'huulong', 'Nguyễn Hữu Long', 983881265, 'huulong@gmail.com', 'Hải Phòng', 6400000, '1'),
(91, '2022-05-21 09:45:26', 'hieunguyen', 'Nguyễn Trung Hiếu', 388360630, 'hieunguyen@gmail.com', 'Quảng Ninh', 0, '3'),
(92, '2022-05-21 13:15:40', 'huyhung', 'Nguyễn Huy Hùng', 397694632, 'huyhung@gmail.com', 'Quận Nam Từ Liêm,Hà Nội', 1280780, '0'),
(93, '2022-05-21 13:23:49', 'dinhtrung', 'Đinh Tiến Trung', 393605287, 'dinhtrung@gmail.com', 'Quảng Ninh', 1280000, '0'),
(94, '2022-05-21 13:24:41', 'duythanh', 'Vũ Duy Thanh', 772228013, 'duythanh@gmail.com', 'Quảng Ninh', 100, '0'),
(95, '2022-05-21 13:35:30', 'anhthu', 'Nguyễn Anh Thư', 388026626, 'anhthu@gmail.com', 'Hạ Long,Quảng Ninh', 2038000, '0'),
(96, '2022-05-21 13:36:37', 'phuongthao', 'Vũ Phương Thảo', 775280028, 'phuongthao@gmail.com', '1194 Đường Láng,Phường Láng Thượng,Quận Đống Đa,Hà Nội', 2038000, '0'),
(97, '2022-05-21 13:36:56', 'huonggiang', 'Nguyễn Hương Giang', 936524490, 'huonggiang@gmail.com', 'Hòa Bình', 2038000, '2'),
(98, '2022-05-21 13:39:44', 'nguyenchien', 'Nguyễn Minh Chiến', 961253307, 'nguyenchien@gmail.com', 'Thái Bình', 2038000, '2'),
(99, '2022-05-21 13:39:44', 'hoangphuc', 'Bùi Hoàng Phúc', 985492475, 'hoangphuc@gmail.com', 'Quảng Ninh', 2038000, '2'),
(100, '2022-05-21 14:46:21', 'hoangquan', 'Nguyễn Văn Hoàng Quân', 986727616, 'nguyenvanhoangquan15@gmail.com', 'Nghệ An', 2038000, '0'),
(101, '2022-05-22 04:02:37', 'dinhvan', 'Nguyễn Đình Vân', 347530321, 'dinhvan@gmail.com', 'Hải Phòng', 3840160, '2'),
(102, '2022-05-23 17:33:50', 'haitruong', 'Trương Văn Hải', 377638969, 'haitruong@gmail.com', 'Quảng Ninh', 1160, '2'),
(111, '2022-06-08 07:03:11', 'minhanh', 'Nguyễn Minh Anh', 123456789, 'minhanh@gmail.com', 'Phú Thọ', 120, '0'),
(112, '2022-06-12 02:44:05', 'thuhang', 'Lê Thu Hằng', 976826180, 'thuhang@gmail.com', 'Hà Nội', 36, '0'),
(113, '2022-06-12 04:57:36', 'huuthin', 'Nguyễn Hữu Thìn', 394181835, 'huuthin@gmail.com', 'Hà Nam', 36, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orderdetails`
--

CREATE TABLE `tbl_orderdetails` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `size` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_orderdetails`
--

INSERT INTO `tbl_orderdetails` (`id`, `id_order`, `productName`, `size`, `quantity`, `image`, `price`) VALUES
(56, 86, 'Nike Sportswear', '31', 1, '23fe3f827b.jpg', 1019000),
(57, 87, 'Vans UA Sport Suede - VN0A4BU6XW3', '35', 1, '2d391f7fc9.jpg', 160),
(58, 88, 'Converse Chuck Taylor All Star VLTG - Back To Earth - 567046V', '38', 1, '9d5064dc07.jpg', 1280000),
(59, 89, 'Converse Chuck Taylor All Star VLTG - Back To Earth - 567046V', '38', 3, '9d5064dc07.jpg', 1280000),
(60, 90, 'Converse Chuck Taylor All Star VLTG - Back To Earth - 567046V', '38', 5, '9d5064dc07.jpg', 1280000),
(61, 92, 'Vans UA Sport Suede - VN0A4BU6XW3', '35', 3, '2d391f7fc9.jpg', 160),
(62, 92, 'Korea 2020 Stadium Away', 'M', 3, '4f3793a7fb.jpg', 100),
(63, 92, 'Converse Chuck Taylor All Star VLTG - Back To Earth - 567046V', '38', 1, '9d5064dc07.jpg', 1280000),
(64, 93, 'Converse Chuck Taylor All Star VLTG - Back To Earth - 567046V', '38', 1, '9d5064dc07.jpg', 1280000),
(65, 94, 'Korea 2020 Stadium Away', 'M', 1, '4f3793a7fb.jpg', 100),
(66, 95, 'Nike Sportswear', '35', 2, '23fe3f827b.jpg', 1019000),
(67, 96, 'Nike Sportswear', '35', 2, '23fe3f827b.jpg', 1019000),
(68, 97, 'Nike Sportswear', '35', 2, '23fe3f827b.jpg', 1019000),
(69, 98, 'Nike Sportswear', '35', 2, '23fe3f827b.jpg', 1019000),
(70, 99, 'Nike Sportswear', '35', 2, '23fe3f827b.jpg', 1019000),
(71, 100, 'Nike Sportswear', '35', 2, '23fe3f827b.jpg', 1019000),
(73, 101, 'Vans UA Sport Suede - VN0A4BU6XW3', '35', 1, '2d391f7fc9.jpg', 160),
(74, 102, 'Vans UA Sport Suede - VN0A4BU6XW3', '35', 6, '2d391f7fc9.jpg', 160),
(75, 102, 'Korea 2020 Stadium Away', 'M', 2, '4f3793a7fb.jpg', 100),
(85, 111, 'Nike Air Force 1 All White', '38', 1, '85ec88ab11.jpg', 120),
(86, 112, 'Men’s SPORT Crew Neck Ultra Dry T-shirt', 'L', 1, '3070301b97.png', 36),
(87, 113, 'Men’s SPORT Crew Neck Ultra Dry T-shirt', 'L', 1, '3070301b97.png', 36);

--
-- Triggers `tbl_orderdetails`
--
DELIMITER $$
CREATE TRIGGER `trg_delete` AFTER DELETE ON `tbl_orderdetails` FOR EACH ROW UPDATE tbl_product SET tbl_product.quantity = tbl_product.quantity + old.quantity
WHERE tbl_product.productName = old.productName AND tbl_product.size = old.size
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_update` BEFORE INSERT ON `tbl_orderdetails` FOR EACH ROW UPDATE tbl_product SET tbl_product.quantity = tbl_product.quantity - new.quantity
WHERE tbl_product.productName = new.productName AND tbl_product.size = new.size
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `size` varchar(20) NOT NULL,
  `price` bigint(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `size`, `price`, `quantity`, `image`, `type`, `description`) VALUES
(98, 'Men’s SPORT Crew Neck Ultra Dry T-shirt', 21, 40, 'S', 36, 500, '3070301b97.png', 1, 'Một con cá sấu quá khổ mang đến sự tinh tế cho chiếc áo thun jersey kỹ thuật siêu khô, cứng này. Hiệu suất cao, phong cách bất bại.'),
(99, 'Men’s SPORT Crew Neck Ultra Dry T-shirt', 21, 40, 'M', 36, 500, '3070301b97.png', 1, 'Một con cá sấu quá khổ mang đến sự tinh tế cho chiếc áo thun jersey kỹ thuật siêu khô, cứng này. Hiệu suất cao, phong cách bất bại.'),
(100, 'Men’s SPORT Crew Neck Ultra Dry T-shirt', 21, 40, 'L', 36, 498, '3070301b97.png', 1, 'Một con cá sấu quá khổ mang đến sự tinh tế cho chiếc áo thun jersey kỹ thuật siêu khô, cứng này. Hiệu suất cao, phong cách bất bại.'),
(101, 'Men’s SPORT Crew Neck Ultra Dry T-shirt', 21, 40, 'XL', 36, 500, '3070301b97.png', 1, 'Một con cá sấu quá khổ mang đến sự tinh tế cho chiếc áo thun jersey kỹ thuật siêu khô, cứng này. Hiệu suất cao, phong cách bất bại.'),
(102, 'T-Clip Leather Sneakers', 26, 40, '35', 77, 2000, 'dd6e2cca70.png', 0, 'Đôi giày thể thao này mang lại nét thẩm mỹ thành thị, kết hợp hình bóng Sideline đặc trưng của Lacoste với các chi tiết của thập niên 80. Mũ lưỡi trai được chế tác từ hỗn hợp da cao cấp, da lộn và các tấm lưới, được thực hiện với các sắc thái lấy cảm hứng từ thể thao. Các lỗ đục lỗ nâng tầm nhìn xa hơn, liên quan đến sân quần vợt. Con cá sấu xuất hiện được in nổi trên quý và thương hiệu Lacoste có chữ trên lưỡi và gót chân làm tăng thêm nét tinh tế đặc trưng.'),
(103, 'T-Clip Leather Sneakers', 26, 40, '36', 77, 200, 'dd6e2cca70.png', 0, 'Đôi giày thể thao này mang lại nét thẩm mỹ thành thị, kết hợp hình bóng Sideline đặc trưng của Lacoste với các chi tiết của thập niên 80. Mũ lưỡi trai được chế tác từ hỗn hợp da cao cấp, da lộn và các tấm lưới, được thực hiện với các sắc thái lấy cảm hứng từ thể thao. Các lỗ đục lỗ nâng tầm nhìn xa hơn, liên quan đến sân quần vợt. Con cá sấu xuất hiện được in nổi trên quý và thương hiệu Lacoste có chữ trên lưỡi và gót chân làm tăng thêm nét tinh tế đặc trưng.'),
(104, 'Crocodile Striped Colorblock Fleece', 12, 40, '28', 45, 500, '88ff4f6e76.png', 0, 'Những chiếc quần đùi thể thao này có hình khối màu mang tính biểu tượng với các dải cá sấu dọc theo túi. Với hỗn hợp bông chải và dây thắt lưng có thể điều chỉnh, chúng đều mềm mại và tiện dụng, vì vậy bạn có thể tung tăng trên sân mà vẫn trông đẹp và thoải mái.'),
(105, 'Men’s SPORT Crew Neck Ultra Dry T-shirt', 21, 40, 'XXL', 36, 200, '3070301b97.png', 1, 'Một con cá sấu quá khổ mang đến sự tinh tế cho chiếc áo thun jersey kỹ thuật siêu khô, cứng này. Hiệu suất cao, phong cách bất bại.'),
(106, 'T-Clip Leather Sneakers', 26, 40, '45', 77, 60, 'dd6e2cca70.png', 0, 'Đôi giày thể thao này mang lại nét thẩm mỹ thành thị, kết hợp hình bóng Sideline đặc trưng của Lacoste với các chi tiết của thập niên 80. Mũ lưỡi trai được chế tác từ hỗn hợp da cao cấp, da lộn và các tấm lưới, được thực hiện với các sắc thái lấy cảm hứng từ thể thao. Các lỗ đục lỗ nâng tầm nhìn xa hơn, liên quan đến sân quần vợt. Con cá sấu xuất hiện được in nổi trên quý và thương hiệu Lacoste có chữ trên lưỡi và gót chân làm tăng thêm nét tinh tế đặc trưng.'),
(107, 'C LOGO COTTON TERRY BERMUDA SHORTS', 12, 35, '32', 40, 20, '16a5b47221.png', 0, 'Những chiếc quần short bạn cần có trong tủ quần áo mùa mới, được làm thủ công từ vải bông dày dặn. Với chữ C cổ điển bằng vải sa tanh và vải chéo, túi xéo rất tiện dụng cho bất kỳ vật dụng cần thiết nào.'),
(108, 'C LOGO COTTON TERRY BERMUDA SHORTS', 12, 35, '35', 40, 200, '16a5b47221.png', 0, 'Những chiếc quần short bạn cần có trong tủ quần áo mùa mới, được làm thủ công từ vải bông dày dặn. Với chữ C cổ điển bằng vải sa tanh và vải chéo, túi xéo rất tiện dụng cho bất kỳ vật dụng cần thiết nào.'),
(109, 'C LOGO COTTON TERRY BERMUDA SHORTS', 12, 35, '34', 40, 10, '16a5b47221.png', 0, 'Những chiếc quần short bạn cần có trong tủ quần áo mùa mới, được làm thủ công từ vải bông dày dặn. Với chữ C cổ điển bằng vải sa tanh và vải chéo, túi xéo rất tiện dụng cho bất kỳ vật dụng cần thiết nào.'),
(110, 'SCRIPT LOGO COACH JACKET', 21, 35, 'L', 135, 200, '4314a3cf75.jpg', 0, 'Channeling varsity vibes, áo khoác huấn luyện viên của chúng tôi được làm thủ công bằng vải tráng nhẹ với biểu tượng kịch bản của chúng tôi ở ngực. Với phần đóng đinh bấm và các túi bằng vải nỉ, hình bóng thể thao lưu trữ này hoàn chỉnh với miếng dán logo C của chúng tôi trên tay áo.'),
(111, 'SCRIPT LOGO COACH JACKET', 21, 35, 'XXL', 135, 20, '4314a3cf75.jpg', 0, 'Channeling varsity vibes, áo khoác huấn luyện viên của chúng tôi được làm thủ công bằng vải tráng nhẹ với biểu tượng kịch bản của chúng tôi ở ngực. Với phần đóng đinh bấm và các túi bằng vải nỉ, hình bóng thể thao lưu trữ này hoàn chỉnh với miếng dán logo C của chúng tôi trên tay áo.'),
(112, 'GEL-KAYANO 27', 26, 34, '36', 160, 200, '66182f375e.png', 0, 'Tận hưởng sự thoải mái tuyệt vời và sự hỗ trợ nâng cao với giày chạy bộ GEL-KAYANO® 27. Phần trên lưới được thiết kế lại giúp giữ cho đôi chân mát mẻ, trong khi phần đế mềm dẻo hơn để giúp thúc đẩy chuyển động tự nhiên hơn trong chu kỳ dáng đi. Điều này bắt đầu ở gót chân với các rãnh uốn dẻo bổ sung giúp cô lập tác động ban đầu để tạo ra cảm giác mềm mại và mượt mà hơn khi bước chân. Ở giữa, bàn chân nên dừng lại và nằm ngửa để khởi động ngón chân hiệu quả. Để giúp chuyển động tự nhiên này, chúng tôi kết hợp công nghệ DYNAMIC DUOMAX® để giúp hỗ trợ bàn chân và tăng độ ổn định cho người chạy có bàn chân lăn vào trong quá nhiều (quá mức). Đế giữa cũng tích hợp công nghệ SPACE TRUSSTIC ™, mang lại sự ổn định và giảm trọng lượng tổng thể để giúp thúc đẩy quá trình chuyển đổi từ đánh chân sang đánh chân mượt mà hơn. Sự ổn định bổ sung này được bổ sung bởi các rãnh uốn cong của bàn chân trước sâu hơn để cuộn mượt mà hơn từ đầu đến chân, cho phép giày di chuyển tự nhiên hơn với bàn chân. Cuối cùng, một phần lớn vật liệu phản chiếu ở bàn chân sau giúp người chạy có thể nhìn thấy khi chạy trong điều kiện ánh sáng yếu. Mẫu GEL-KAYANO® 27 là sự lựa chọn tuyệt vời cho cả những người chạy cạnh tranh và không cạnh tranh đang tìm kiếm một huấn luyện viên hàng ngày kết hợp sự thoải mái với sự hỗ trợ.'),
(113, 'GEL-KAYANO 27', 26, 34, '43', 160, 200, '66182f375e.png', 0, 'Tận hưởng sự thoải mái tuyệt vời và sự hỗ trợ nâng cao với giày chạy bộ GEL-KAYANO® 27. Phần trên lưới được thiết kế lại giúp giữ cho đôi chân mát mẻ, trong khi phần đế mềm dẻo hơn để giúp thúc đẩy chuyển động tự nhiên hơn trong chu kỳ dáng đi. Điều này bắt đầu ở gót chân với các rãnh uốn dẻo bổ sung giúp cô lập tác động ban đầu để tạo ra cảm giác mềm mại và mượt mà hơn khi bước chân. Ở giữa, bàn chân nên dừng lại và nằm ngửa để khởi động ngón chân hiệu quả. Để giúp chuyển động tự nhiên này, chúng tôi kết hợp công nghệ DYNAMIC DUOMAX® để giúp hỗ trợ bàn chân và tăng độ ổn định cho người chạy có bàn chân lăn vào trong quá nhiều (quá mức). Đế giữa cũng tích hợp công nghệ SPACE TRUSSTIC ™, mang lại sự ổn định và giảm trọng lượng tổng thể để giúp thúc đẩy quá trình chuyển đổi từ đánh chân sang đánh chân mượt mà hơn. Sự ổn định bổ sung này được bổ sung bởi các rãnh uốn cong của bàn chân trước sâu hơn để cuộn mượt mà hơn từ đầu đến chân, cho phép giày di chuyển tự nhiên hơn với bàn chân. Cuối cùng, một phần lớn vật liệu phản chiếu ở bàn chân sau giúp người chạy có thể nhìn thấy khi chạy trong điều kiện ánh sáng yếu. Mẫu GEL-KAYANO® 27 là sự lựa chọn tuyệt vời cho cả những người chạy cạnh tranh và không cạnh tranh đang tìm kiếm một huấn luyện viên hàng ngày kết hợp sự thoải mái với sự hỗ trợ.'),
(114, 'GEL-CUMULUS 22', 26, 34, '41', 120, 20, '1e5c47278b.png', 0, 'Giày chạy bộ GEL-CUMULUS® 22 là một lựa chọn được khuyên dùng cho những người chạy trung tính muốn có một huấn luyện viên hàng ngày mềm mại, linh hoạt với sự phù hợp tuyệt vời. Bản cập nhật này có lưới trên một mảnh được kết hợp với cấu trúc in 3D liền mạch, cân bằng hỗ trợ và thoải mái xung quanh bàn chân - mang lại cho bạn một sự phù hợp tuyệt vời ngay từ hộp. Đế giữa công nghệ FLYTEFOAM® mềm mại hơn so với phiên bản trước để thúc đẩy một chuyến đi gối. Dưới gót chân nơi bàn chân đầu tiên chạm đất đã được thiết kế lại để cô lập tác động tốt hơn. Thiết kế gót chân mới này có các rãnh uốn cong chân trước sâu hơn và bọt giữa mềm hơn để cung cấp cho bạn một chuyến đi mềm mại. Một hợp chất đế cao su AHAR® cứng đã được đặt ở các khu vực tiếp xúc chính để giúp giày GEL-CUMULUS® 22 đứng lên đến một tấn dặm.'),
(115, 'GEL-KAYANO 26', 26, 34, '38', 100, 200, 'fcc7998700.png', 1, 'Tận hưởng sự thoải mái sang trọng và cải thiện độ nảy với giày chạy GEL-KAYANO® 26 của nam giới, có công nghệ GEL® ở chân trước và phía sau để hấp thụ sốc mật độ cao và cảm giác thoải mái trên một khoảng cách dài. Với lưới jacquard trên và công nghệ FLYTEFOAM® Propel cho chất lượng nhẹ cho phép bàn chân của bạn thở, giày chạy ASICS này là tất cả về việc đi xa, cung cấp hỗ trợ đặc biệt và thoải mái trong thời gian dài. Sockliner EVA cung cấp sự phục hồi và đệm tuyệt vời, trong khi công nghệ Hệ thống® TRUSSTIC hướng dẫn mang lại một mức độ ổn định mới, làm việc với đế giữa đường viền để giúp kiểm soát xoắn. Trong khi đó, SpEVA 45 kéo dài cải thiện các đặc tính bounce-back để đặt một mùa xuân trong bước của bạn (theo nghĩa đen). '),
(116, 'OLD SKOOL PRO', 26, 16, '37', 65, 22, '0846299bf7.png', 0, 'Old Skool Pro, một chiếc Vans cổ điển được nâng cấp để nâng cao hiệu suất, có vải và da lộn chắc chắn, băng cáo quấn đơn, đệm chân nâng cao để đệm và bảo vệ tác động cao cấp, và đế bánh quế ban đầu của Vans làm bằng cao su cung cấp độ bám và hỗ trợ. Old Skool Pro cũng bao gồm lớp phủ cao su gia cố DURACAP trong các khu vực hao mòn cao cho độ bền vô song và cấu trúc Pro Vulc Lite để cung cấp tốt nhất trong boardfeel, flex và lực kéo.'),
(117, 'OLD SKOOL PRO', 26, 16, '39', 65, 20, '0846299bf7.png', 0, 'Old Skool Pro, một chiếc Vans cổ điển được nâng cấp để nâng cao hiệu suất, có vải và da lộn chắc chắn, băng cáo quấn đơn, đệm chân nâng cao để đệm và bảo vệ tác động cao cấp, và đế bánh quế ban đầu của Vans làm bằng cao su cung cấp độ bám và hỗ trợ. Old Skool Pro cũng bao gồm lớp phủ cao su gia cố DURACAP trong các khu vực hao mòn cao cho độ bền vô song và cấu trúc Pro Vulc Lite để cung cấp tốt nhất trong boardfeel, flex và lực kéo.'),
(118, 'OLD SKOOL PRO', 26, 16, '43', 65, 10, '0846299bf7.png', 0, 'Old Skool Pro, một chiếc Vans cổ điển được nâng cấp để nâng cao hiệu suất, có vải và da lộn chắc chắn, băng cáo quấn đơn, đệm chân nâng cao để đệm và bảo vệ tác động cao cấp, và đế bánh quế ban đầu của Vans làm bằng cao su cung cấp độ bám và hỗ trợ. Old Skool Pro cũng bao gồm lớp phủ cao su gia cố DURACAP trong các khu vực hao mòn cao cho độ bền vô song và cấu trúc Pro Vulc Lite để cung cấp tốt nhất trong boardfeel, flex và lực kéo.'),
(119, 'WASHED VANS SPORT', 26, 16, '36', 65, 20, 'e6d64b490b.png', 0, 'Washed Vans Sport là một phong cách ren retro với vải rửa và da lộn trên với bản in bàn cờ Vans mang tính biểu tượng, sidetripes V trường học cũ, cổ áo đệm và bánh quế cao su đặc trưng.'),
(120, 'WASHED VANS SPORT', 26, 16, '40', 65, 2, 'e6d64b490b.png', 0, 'Washed Vans Sport là một phong cách ren retro với vải rửa và da lộn trên với bản in bàn cờ Vans mang tính biểu tượng, sidetripes V trường học cũ, cổ áo đệm và bánh quế cao su đặc trưng.'),
(122, 'Converse Chuck Taylor All Star Cheerful - 167069C', 26, 7, '38', 80, 100, '5508c3592a.jpg', 0, 'Gam màu đỏ “bỏng mắt” kết hợp cùng chất liệu vải canvas thoáng nhẹ. Chi tiết mặt cười độc đáo với tạo hình của dòng chữ Converse cùng họa tiết ngôi sao tạo nên điểm nhấn đắt giá cho dòng sản phẩm.'),
(123, 'Converse Chuck Taylor All Star Cheerful - 167069C', 26, 7, '44', 80, 10, '5508c3592a.jpg', 0, 'Gam màu đỏ “bỏng mắt” kết hợp cùng chất liệu vải canvas thoáng nhẹ. Chi tiết mặt cười độc đáo với tạo hình của dòng chữ Converse cùng họa tiết ngôi sao tạo nên điểm nhấn đắt giá cho dòng sản phẩm.'),
(124, 'Converse Chuck Taylor All Star Cheerful - 167068C', 26, 7, '41', 80, 19, '0e96643557.jpg', 0, 'Hút mắt với hình ảnh mặt cười ngộ nghĩnh được biến tấu dưới dạng chữ Converse cực xịn xò. Gam màu xanh “so fresh” mix cùng form dáng cổ cao năng động cho bạn có được những outfit thời trang.'),
(125, 'Converse Chuck Taylor All Star Cheerful - 167068C', 26, 7, '36', 80, 100, '0e96643557.jpg', 0, 'Hút mắt với hình ảnh mặt cười ngộ nghĩnh được biến tấu dưới dạng chữ Converse cực xịn xò. Gam màu xanh “so fresh” mix cùng form dáng cổ cao năng động cho bạn có được những outfit thời trang.'),
(126, 'Chuck Taylor All Star Seasonal Color - 163352C', 26, 7, '38', 80, 20, '6f7f9323f3.jpg', 1, 'Thiết kế cổ cao quen thuộc là đặc trưng trong phong cách của Converse. Logo nằm ở má trong thân giày tạo điểm nhấn nổi bật. Chất vải Canvas nhẹ bền cùng đường viền đen bao quanh đế giày tạo nét nổi bật cho dòng Seasonal Corlor'),
(127, 'Chuck Taylor All Star Seasonal Color - 163352C', 26, 7, '42', 80, 198, '6f7f9323f3.jpg', 1, 'Thiết kế cổ cao quen thuộc là đặc trưng trong phong cách của Converse. Logo nằm ở má trong thân giày tạo điểm nhấn nổi bật. Chất vải Canvas nhẹ bền cùng đường viền đen bao quanh đế giày tạo nét nổi bật cho dòng Seasonal Corlor'),
(128, 'ULTRABOOST 20 BLACK', 26, 5, '37', 220, 100, '585a64a700.jpg', 1, 'KIỂM SOÁT LỰC KHI CHẠM ĐẤT, THOẢI MÁI TRONG TỪNG BƯỚC CHẠY. Mỗi ngày mới. Mỗi buổi chạy mới. Hãy tận dụng tối đa. Đôi giày hiệu năng cao này có thân giày bằng vải dệt kim ôm chân. Các đường may trong trợ lực được bố trí chuẩn xác để tạo độ nâng đỡ ở đúng những vị trí cần thiết. Gót giày làm từ chất liệu elastane mềm mại cho độ ôm thoải mái hơn. Lớp đệm đàn hồi hoàn trả năng lượng cho từng sải bước tạo cảm giác như có thể chạy mãi mãi.'),
(129, 'PRIMEBLUE ULTRABOOST 20', 26, 5, '41', 220, 40, 'f02eca4501.jpg', 1, 'Tự tin không phải tự nhiên mà có. Tố chất ấy được vun đắp qua từng buổi chạy. Đôi giày adidas Primeblue Ultraboost 20 là người bạn đồng hành lý tưởng cho các buổi chạy tuyệt vời nhất. Thân giày bằng vải dệt kim co giãn cho phép bàn chân chuyển động tự nhiên và đế ngoài linh hoạt giúp bạn di chuyển nhịp nhàng. Nhờ đó, bạn dễ dàng hoàn thành quãng đường chạy và đong đầy sự tự tin cho cả cuộc đời.'),
(130, 'ULTRABOOST 20 BLACK', 26, 5, '42', 220, 20, '585a64a700.jpg', 1, 'KIỂM SOÁT LỰC KHI CHẠM ĐẤT, THOẢI MÁI TRONG TỪNG BƯỚC CHẠY. Mỗi ngày mới. Mỗi buổi chạy mới. Hãy tận dụng tối đa. Đôi giày hiệu năng cao này có thân giày bằng vải dệt kim ôm chân. Các đường may trong trợ lực được bố trí chuẩn xác để tạo độ nâng đỡ ở đúng những vị trí cần thiết. Gót giày làm từ chất liệu elastane mềm mại cho độ ôm thoải mái hơn. Lớp đệm đàn hồi hoàn trả năng lượng cho từng sải bước tạo cảm giác như có thể chạy mãi mãi.'),
(131, 'Nike Air Force 1 All White', 26, 4, '38', 120, 99, '85ec88ab11.jpg', 1, 'Hoops in the park, Sunday BBQs and sunshine. The radiance lives on in the Nike Air Force 1 \'07, the b-ball OG that puts a fresh spin on the features you know best: crisp leather, stitched overlays in classic all white and the perfect amount of flash to make you shine.'),
(132, 'COPA 20.3 FIRM GROUND', 26, 5, '41', 80, 10, '46e3bcc890.jpg', 1, 'Đá hăng hơn, thắng lớn hơn. Yêu cầu nhiều hơn. Đường bóng xử lý. Đồng đội cùng chiến tuyến. Với đôi giày bóng đá này, cả hai đều được nâng tầm. Đường khâu ở mũi giày bằng da mềm giúp giữ bóng trong tầm kiểm soát. Má giày bằng vải lưới co giãn và lưỡi giày đơn tích hợp giúp cố định bàn chân khi bạn phô diễn kỹ thuật. Nâng tầm cuộc chơi với đôi giày bóng đá adidas Copa 20.3 Firm Ground.'),
(133, 'STAN SMITH DARK BLUE', 26, 5, '39', 80, 20, 'd77e545430.jpg', 1, 'Trước đây, Stan Smith từng là ngôi sao lớn của làng quần vợt. Từ đó đến nay, đôi giày mang tên ông luôn thắng đậm trên đường phố. Từ trên xuống dưới, đôi giày này giữ đúng phong cách thiết yếu theo nguyên bản năm 1972 với thiết kế bằng da tối giản và đường nét thanh thoát vốn đã trở thành đặc trưng của dòng giày này.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_User`) USING BTREE;

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  ADD PRIMARY KEY (`id_discount`);

--
-- Indexes for table `tbl_imgthumb`
--
ALTER TABLE `tbl_imgthumb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_Id`);

--
-- Indexes for table `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`id_order`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `catId` (`catId`),
  ADD KEY `brandId` (`brandId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  MODIFY `id_discount` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_imgthumb`
--
ALTER TABLE `tbl_imgthumb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_orderdetails`
--
ALTER TABLE `tbl_orderdetails`
  ADD CONSTRAINT `tbl_orderdetails_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`order_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `tbl_category` (`catId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_product_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `tbl_brand` (`brandId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
