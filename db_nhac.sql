-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2020 at 04:22 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_nhac`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `tenAlbum` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `caSi` int(11) NOT NULL,
  `theLoai` int(11) NOT NULL,
  `artworkPath` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `dangBoi` int(11) NOT NULL DEFAULT 102,
  `hienThi` int(11) NOT NULL DEFAULT 0,
  `ngayDang` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `tenAlbum`, `caSi`, `theLoai`, `artworkPath`, `dangBoi`, `hienThi`, `ngayDang`) VALUES
(50, 'Bigcityboi', 82, 2, 'public/images/albums/3e67acabbc0d489ab208bbb63627c394 (1).jpg', 1, 0, '2020-07-12 16:23:59'),
(51, 'Mắt Biếc', 65, 1, 'public/images/albums/1578367464332_640.jpg', 1, 1, '2020-07-12 16:26:58'),
(52, '20 Ca Khúc Gây Bão Nhất Quý 2-2020', 77, 1, 'public/images/albums/cb5c4e7ab8610d63371270e51d487439.jpg', 1, 1, '2020-07-12 16:29:41'),
(53, 'Single', 77, 1, 'public/images/albums/microphone_01_vector_180739.jpg', 1, 0, '2020-07-12 16:36:53'),
(54, 'Nhạc Rap Hay Nhất', 77, 2, 'public/images/albums/e73202090414098233f270c7bfda15fd.jpg', 1, 1, '2020-07-12 16:43:47'),
(55, 'Giai Điệu Buồn', 77, 1, 'public/images/albums/5afa08323602dd63f9d46f1a5ce0c1dd.jpg', 1, 1, '2020-07-12 16:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `baihat`
--

CREATE TABLE `baihat` (
  `id` int(11) NOT NULL,
  `tenBaiHat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `caSi` int(11) NOT NULL,
  `album` int(11) NOT NULL DEFAULT 0,
  `theLoai` int(11) NOT NULL,
  `duration` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '3:00',
  `path` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `albumOrder` int(11) NOT NULL DEFAULT 1,
  `luotNghe` int(11) NOT NULL DEFAULT 0,
  `dangBoi` int(11) NOT NULL DEFAULT 102,
  `ngayDangBaiHat` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `baihat`
--

INSERT INTO `baihat` (`id`, `tenBaiHat`, `caSi`, `album`, `theLoai`, `duration`, `path`, `albumOrder`, `luotNghe`, `dangBoi`, `ngayDangBaiHat`) VALUES
(211, 'Bigcityboi', 82, 52, 2, '3:00', 'public/nhac/Bigcityboi-Binz-Touliver.mp3', 1, 12533, 1, '2020-07-12 16:38:50'),
(212, 'Anh ƠI Ở Lại', 66, 53, 1, '3:00', 'public/nhac/Anh-Oi-O-Lai-Chi-Pu-Dat-G.mp3', 1, 1, 1, '2020-07-12 16:49:06'),
(213, 'Cũng Đành Thôi', 76, 53, 1, '3:00', 'public/nhac/Cung-Danh-Thoi-Duc-Phuc.mp3', 1, 7936, 1, '2020-07-12 16:59:20'),
(214, 'Anh Không Sai Chúng Ta Sai', 73, 52, 1, '3:00', 'public/nhac/Em-Khong-Sai-Chung-Ta-Sai-ERIK.mp3', 1, 9087, 1, '2020-07-12 17:00:43'),
(215, 'Có Chàng Trai Viết Lên Cây', 65, 51, 1, '3:00', 'public/nhac/Co-Chang-Trai-Viet-Len-Cay-Phan-Manh-Quynh.mp3', 1, 10533, 1, '2020-07-12 17:18:16'),
(216, 'Khi Người Mình Yêu Khóc', 65, 53, 1, '3:00', 'public/nhac/Khi-Nguoi-Minh-Yeu-Khoc-Phan-Manh-Quynh.mp3', 1, 1, 1, '2020-07-12 17:01:50'),
(217, 'Hà Lan', 65, 51, 1, '3:00', 'public/nhac/[MatBiecOST]HaLan-PhanManhQuynh(Offical).mp3', 1, 6, 1, '2020-07-12 17:02:34'),
(218, 'Từ Đó', 65, 51, 1, '3:00', 'public/nhac/TuDoMatBiecOst-PhanManhQuynh-6182376.mp3', 1, 3, 1, '2020-07-12 17:03:00'),
(219, 'Tôi Chỉ Muốn Nói', 65, 51, 1, '3:00', 'public/nhac/ToiChiMuonNoiMatBiecOST-PhanManhQuynh-6183913.mp3', 1, 3, 1, '2020-07-12 17:03:29'),
(220, 'Khóc Cùng Em', 69, 53, 1, '3:00', 'public/nhac/Khoc-Cung-Em-Mr-Siro-Gray-Wind.mp3', 1, 8990, 1, '2020-07-12 17:04:09'),
(221, 'Thay Tôi Yêu Cô Ấy', 72, 55, 1, '3:00', 'public/nhac/Thay-Toi-Yeu-Co-Ay-Thanh-Hung.mp3', 1, 5, 1, '2020-07-12 17:05:01'),
(222, 'Tôi Đã Quên Thật Rồi', 75, 55, 1, '3:00', 'public/nhac/Toi-Da-Quen-That-Roi-Isaac.mp3', 1, 8302, 1, '2020-07-12 17:17:41'),
(223, 'Trời Ơi Con Chưa Muốn Chết', 70, 54, 2, '3:00', 'public/nhac/TroiOiConChuaMuonChet-Den-4311368.mp3', 1, 8, 1, '2020-07-12 17:06:59'),
(224, 'Gửi Anh Xa Nhớ', 81, 53, 1, '3:00', 'public/nhac/Gui-Anh-Xa-Nho-Bich-Phuong.mp3', 1, 1, 1, '2020-07-12 17:07:56'),
(225, 'Em Bỏ Thuốc Chưa', 81, 52, 1, '3:00', 'public/nhac/EmBoHutThuocChua-BichPhuongtraitimtrongvang-6281294.mp3', 1, 8651, 1, '2020-07-12 17:16:36'),
(226, 'Bùa Yêu', 81, 53, 1, '3:00', 'public/nhac/BuaYeu-BichPhuong-5472208.mp3', 1, 1, 1, '2020-07-12 17:09:01'),
(227, 'Hôm Nay Tôi Buồn', 68, 55, 1, '3:00', 'public/nhac/Hom-Nay-Toi-Buon-Phung-Khanh-Linh.mp3', 1, 1, 1, '2020-07-12 17:09:33'),
(228, 'Anh Nhà Ở Đâu Thế', 80, 53, 1, '3:00', 'public/nhac/Anh-Nha-O-Dau-The-AMEE-B-Ray.mp3', 1, 1, 1, '2020-07-12 17:10:03'),
(229, 'Ex Hate Me', 67, 54, 2, '3:00', 'public/nhac/ExSHateMe-BRay;Masew;AMee.mp3', 1, 3, 1, '2020-07-12 17:10:41'),
(230, 'Hết Thương Cạn Nhớ', 76, 55, 1, '3:00', 'public/nhac/Het-Thuong-Can-Nho-Duc-Phuc.mp3', 1, 7631, 1, '2020-07-12 17:11:17'),
(231, 'Thành Thị', 79, 55, 1, '3:00', 'public/nhac/Thanh-Thi-Thuy-Chi.mp3', 1, 1, 1, '2020-07-12 17:12:36'),
(232, 'Giấc Mơ Trưa', 79, 53, 1, '3:00', 'public/nhac/Giac-Mo-Trua-Thuy-Chi.mp3', 1, 1, 1, '2020-07-12 17:13:15'),
(233, 'Thất Tình', 78, 55, 1, '3:00', 'public/nhac/That-Tinh-Trinh-Dinh-Quang.mp3', 1, 1, 1, '2020-07-12 17:13:54'),
(234, 'Người Lạ Ơi', 1, 54, 2, '3:00', 'public/nhac/Nguoi-La-Oi-Karik-Orange-Superbrothers.mp3', 1, 3, 1, '2020-07-12 17:14:26'),
(235, 'Vô Thường', 1, 54, 2, '3:00', 'public/nhac/Vo-Thuong-Karik-Orange.mp3', 1, 6933, 1, '2020-07-12 17:15:01'),
(236, 'Tôi Là Người Cô Đơn', 1, 53, 2, '3:00', 'public/nhac/Toi-La-Nguoi-Co-Don-Karik-Addy-Tran.mp3', 1, 1, 1, '2020-07-12 17:15:31'),
(237, 'Mặc Cảm', 1, 54, 2, '3:00', 'public/nhac/Mac-Cam-Karik.mp3', 1, 1, 1, '2020-07-12 17:16:01'),
(238, 'Có Chắc Yêu Là Đây', 71, 52, 1, '3:00', 'public/nhac/y2mate.com-SONTUNGM-TP_COCHACYEULADAY_OFFICIALMUSICVIDEO_6t-MjBazs3o.mp3', 1, 15535, 1, '2020-07-12 17:16:49'),
(239, 'Ex Hate Me 2 New Version', 80, 54, 2, '3:00', 'public/nhac/exhateme.mp3', 1, 11638, 1, '2020-07-12 18:08:32');

-- --------------------------------------------------------

--
-- Table structure for table `casi`
--

CREATE TABLE `casi` (
  `id` int(11) NOT NULL,
  `tenCaSi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anhCaSi` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `casi`
--

INSERT INTO `casi` (`id`, `tenCaSi`, `anhCaSi`) VALUES
(1, 'Karik', 'public/images/anhcasi/c541d6f844cb783a42f4cf860c4ea2d6_1467878911.jpg'),
(65, 'Phan Mạnh Quỳnh', 'public/images/anhcasi/img20170331130851837.jpg'),
(66, 'Chi Pu', 'public/images/anhcasi/nnhh.jpg'),
(67, 'B Ray', 'public/images/anhcasi/bray-15605337334731681494947.jpg'),
(68, 'Phùng Khánh Linh', 'public/images/anhcasi/b04fa408026c791222f6a5cd04ff23d5.jpg'),
(69, 'Mr Siro', 'public/images/anhcasi/b3fb3a5c4e8f6981a766d11a2e269513.jpg'),
(70, 'Đen', 'public/images/anhcasi/artworks-000470135124-nksa5q-t500x500.jpg'),
(71, 'Sơn Tùng MTP', 'public/images/anhcasi/20180627074807-7dc1.jpg'),
(72, 'Thanh Hưng', 'public/images/anhcasi/1573834150811_600.jpg'),
(73, 'Erik', 'public/images/anhcasi/1572506582623_600.jpg'),
(74, 'Lynk Lee', 'public/images/anhcasi/1569986876395_600.jpg'),
(75, 'Issac 365', 'public/images/anhcasi/1562568867072_600.jpg'),
(76, 'Đức Phúc', 'public/images/anhcasi/1512969882850_500.jpg'),
(77, 'Nhiều Ca Sĩ', 'public/images/anhcasi/73688444a73a76169d03b689a7e785cf_1404904575.jpg'),
(78, 'Trịnh Đình Quang', 'public/images/anhcasi/1250fc39417b3822a7672ad957562a35_1509607623.jpg'),
(79, 'Thùy Chi', 'public/images/anhcasi/695fce3cefc5fa44d7b1ee489a7eedfd_1509935350.jpg'),
(80, 'AMEE', 'public/images/anhcasi/87a40c0cbc8b577200b822eb4325bfdb.jpg'),
(81, 'Bích Phương', 'public/images/anhcasi/43d8be33dc00a33132c82adb9d0d3a54_1509355224.jpg'),
(82, 'Binz', 'public/images/anhcasi/binz-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `tieuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `tieuDe`, `hinh`, `link`) VALUES
(1, '20 Ca Khúc Gây Bão Quý 2/2020', 'public/images/anhslider/1.jpg', 'playlist/52/20-ca-khuc-gay-bao-nhat-quy-2-2020.htm'),
(2, 'Chill Cùng Rap Việt', 'public/images/anhslider/2.jpg', 'playlist/54/nhac-rap-hay-nhat.htm'),
(3, 'Mãi Bên Nhau Bạn Nhé', 'public/images/anhslider/3.jpg', 'playlist/51/mat-biec.htm'),
(4, 'Guitar Cover', 'public/images/anhslider/4.jpg', 'playlist/55/giai-dieu-buon.htm');

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `id` int(11) NOT NULL,
  `tenTheLoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`id`, `tenTheLoai`) VALUES
(1, 'Nhạc Trẻ'),
(2, 'Nhạc Rap');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `taiKhoan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matKhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phanQuyen` int(11) NOT NULL DEFAULT 0,
  `ngayDangKy` datetime NOT NULL DEFAULT current_timestamp(),
  `anhDaiDien` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'public/images/logo_macdinh.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ten`, `taiKhoan`, `matKhau`, `email`, `phanQuyen`, `ngayDangKy`, `anhDaiDien`) VALUES
(1, 'Nguyễn Văn Hiệp', 'admins', '$2y$10$haimuoihaihaimuoihai2uIOcrzTao/y/qDfsqU7CvRAiSDGrsQ4q', 'hiepnguyen@gmail.com', 1, '2020-07-03 15:02:00', 'public/images/avatar/v2-d9054726a510f26d3ee52ed16483dc6b_xl.jpg'),
(2, 'Nguyễn Văn Hiệp', 'hiepnguyenit', '$2y$10$haimuoihaihaimuoihai2uIOcrzTao/y/qDfsqU7CvRAiSDGrsQ4q', 'admins@fgfg.com', 0, '2020-07-03 08:39:52', 'public/images/logo_macdinh.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `baihat`
--
ALTER TABLE `baihat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casi`
--
ALTER TABLE `casi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `baihat`
--
ALTER TABLE `baihat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `casi`
--
ALTER TABLE `casi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
