-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2020 at 05:03 AM
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
(35, 'Nguyễn Thạc Bảo Ngọc - Cover', 42, 1, 'public/images/albums/3.jpg', 102, 1, '2017-11-05 08:42:52'),
(36, 'Việt Cover', 44, 1, 'public/images/albums/db53f15f684bb8073fd53ecf26ad70a2_1406709708.jpg', 102, 1, '2017-11-05 08:50:54'),
(37, 'Tổng hợp Hương Tràm', 46, 1, 'public/images/albums/953a42c7ee7974a0670462fabb6bdb06_1501843491.jpg', 102, 1, '2017-11-05 08:56:32'),
(38, 'Giọng hát mới', 44, 1, 'public/images/albums/c95ef511ab1c608e129292da2ad8526b_1509359712.jpg', 102, 1, '2017-11-05 09:02:40'),
(46, 'sdaassad', 57, 1, 'public/images/albums/aaaaa.jpg', 102, 0, '2017-11-06 13:08:19'),
(47, 'sdadsaas', 59, 1, 'public/images/albums/pmq.jpg', 102, 0, '2017-11-06 13:13:30'),
(48, 'Album của Phúc Test', 59, 1, 'public/images/albums/pmq.jpg', 114, 0, '2017-11-06 13:26:04'),
(49, 'Bài Hát Mới', 44, 1, 'public/images/albums/b898a5f1c04b48e70df2e729235fec24_1509697972.jpg', 102, 0, '2017-11-08 14:25:00');

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
(149, 'Tâm sự với người lạ - cover', 0, 0, 2, '3:00', 'public/nhac/TAM_SU_VII_NGUOI_LA_-_NGUYEN_THAC_BAO_NGOC[MP3Fiber.com].mp3', 1, 113, 102, '2017-11-05 08:44:49'),
(150, 'Giọt Buồn Để Lại', 43, 36, 1, '3:00', 'public/nhac/Giot_buon_de_lai_-_Bich_Ngoc[MP3Fiber.com].mp3', 1, 76, 102, '2017-11-05 08:51:23'),
(151, 'Rơi', 45, 36, 1, '3:00', 'public/nhac/Kieu_Anh_The_Voice_-_Roi_DuongK_Remix_-_OFFICIAL_AUDIO[MP3Fiber.com].mp3', 1, 62, 102, '2017-11-05 08:53:57'),
(152, 'Vẫn Luôn Mong Chờ', 46, 37, 1, '3:00', 'public/nhac/VanLuonChoMong-HuongTram[MP3320kbps].mp3', 1, 75, 102, '2017-11-05 08:56:57'),
(153, 'Yêu Không Hối Hận', 47, 36, 1, '3:00', 'public/nhac/Yeu_Khong_Hoi_Han_Ngo_Thanh_Tam.mp3', 1, 15, 102, '2017-11-05 08:58:51'),
(154, 'Anh Cứ Đi Đi', 48, 36, 1, '3:00', 'public/nhac/AnhCuDiDi-DanTrang[MP3320kbps].mp3', 1, 19, 102, '2017-11-05 09:00:01'),
(155, 'Để Em Rời Xa', 49, 38, 1, '3:00', 'public/nhac/DeEmRoiXa-HanhSino.mp3', 1, 126, 102, '2017-11-05 09:04:12'),
(156, 'Đi Về Đâu', 50, 39, 1, '3:00', 'public/nhac/Di-ve-dau.mp3', 1, 114, 102, '2017-11-05 09:07:12'),
(160, 'I Dont Want', 51, 38, 1, '3:00', 'public/nhac/IDontWant-KhoiMy.mp3', 1, 154, 102, '2017-11-05 09:10:34'),
(161, 'Em Gái Mưa', 46, 37, 1, '3:00', 'public/nhac/EmGaiMua-HuongTram[320kbps_MP3].mp3', 1, 33, 102, '2017-11-05 09:34:54'),
(162, 'Túy Âm', 52, 39, 1, '3:00', 'public/nhac/TuyAm-Xesi_Masew_NhatNguyen[320kbps_MP3].mp3', 1, 33, 102, '2017-11-05 09:36:48'),
(164, 'Quên', 54, 38, 1, '3:00', 'public/nhac/Quen-TrinhDinhQuangMVLyrics.mp3', 1, 50, 102, '2017-11-05 09:40:04'),
(166, 'Đừng Đi', 42, 35, 1, '3:00', 'public/nhac/[MASHUP]Dungdi-KeepmeinloveNguyenThacBaoNgoc.mp3', 1, 56, 102, '2017-11-05 12:27:02'),
(191, 'das', 43, 35, 1, '3:00', 'public/nhac/ToiMuonQuenEm-PhanManhQuynh-5231684.mp3', 1, 11, 102, '2017-11-06 10:07:55'),
(195, 'Hai thế giới', 46, 37, 1, '3:00', 'public/nhac/HaiTheGioi.mp3', 1, 21, 102, '2017-11-06 12:59:42'),
(197, 'Yêu Nhau Nữa Ngày', 59, 48, 1, '3:00', 'public/nhac/YeuNhauNuaNgay-PhanManhQuynh-5168900.mp3', 1, 27, 114, '2017-11-06 13:26:48'),
(198, 'Nơi Bình Yên', 54, 38, 1, '3:00', 'public/nhac/NoiBinhYen-TrinhDinhQuang-5186306_hq.mp3', 1, 14, 102, '2017-11-06 18:59:01'),
(207, 'testsasasa', 61, 49, 1, '3:00', 'public/nhac/Songxaanhchangdedang.mp3', 1, 26, 102, '2017-11-08 14:38:54'),
(208, 'Test1111', 62, 49, 1, '3:00', 'public/nhac/Songxaanhchangdedang.mp3', 1, 16, 102, '2017-11-08 15:17:00'),
(209, 'muốn chết nhưng không dám', 49, 37, 2, '3:00', 'public/nhac/Muonchetnhungkhongdam.mp3', 1, 6, 102, '2020-07-01 14:36:04');

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
(42, 'Nguyễn Thạc Bảo Ngọc', 'public/images/anhcasi/3.jpg'),
(43, 'Bích Ngọc', 'public/images/anhcasi/artworks-000157138501-1gy812-t500x500.jpg'),
(44, 'Nhiều ca sĩ', 'public/images/anhcasi/73688444a73a76169d03b689a7e785cf_1404904575.jpg'),
(45, 'Kiều Anh', 'public/images/anhcasi/artworks-000120294222-5c3idd-t500x500.jpg'),
(46, 'Hương Tràm', 'public/images/anhcasi/artworks-000215052508-22m8a2-t500x500.jpg'),
(47, 'Ngô Thanh Tâm', 'public/images/anhcasi/avatars-000306582645-h1ezxt-t500x500.jpg'),
(48, 'Đan Trang', 'public/images/anhcasi/artworks-000169485276-azveyj-t500x500.jpg'),
(49, 'Hạnh Sino', 'public/images/anhcasi/4de608209a815d36f7aaee38403da40d_1508294889.jpg'),
(50, 'Tiên Tiên', 'public/images/anhcasi/avatars-000184994366-uk4rrw-t500x500.jpg'),
(51, 'Khởi My', 'public/images/anhcasi/69fd71a1b4cbb01df91cb9839efd9763_1485081286.jpg'),
(52, 'Xesi', 'public/images/anhcasi/f9c0475ec02716554fba3f63e5b4ac37_1504991428.jpg'),
(53, 'Zunny', 'public/images/anhcasi/6f8775cc15a362003d0f72b3c4818ed2_1433384922.jpg'),
(54, 'Trịnh Đình Quang', 'public/images/anhcasi/1250fc39417b3822a7672ad957562a35_1509607623.jpg'),
(62, 'Bảo Anh', 'public/images/anhcasi/68bcf97b41cd37e918cdf2dc0b85e895_1509438182.jpg');

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
(1, 'Nhạc Việt nghe nhiều nhất', 'public/images/anhslider/1.jpg', 'playlist/37/tong-hop-huong-tram.htm'),
(2, 'Playlist dance 2017', 'public/images/anhslider/2.jpg', 'playlist/39/dance-vpop-2017.htm'),
(3, 'Playlist giọng hát mới', 'public/images/anhslider/3.jpg', 'playlist/38/giong-hat-moi.htm'),
(4, 'playlist nhạc nước ngoài', 'public/images/anhslider/4.jpg', 'playlist/36/viet-cover.htm');

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
(1, 'Nhạc trẻ'),
(2, 'Nước ngoài'),
(5, 'Nhạc Sến'),
(6, 'a'),
(7, 'Nhạc Thính Phòng'),
(8, 'sds');

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
(102, 'Nguyễn Văn Hiệp', 'admins', '$2y$10$haimuoihaihaimuoihai2uIOcrzTao/y/qDfsqU7CvRAiSDGrsQ4q', 'hiepnguyen@gmail.com', 1, '2017-11-01 15:02:00', 'public/images/albums/v2-d9054726a510f26d3ee52ed16483dc6b_xl.jpg'),
(115, 'Nguyễn Văn Hiệp', 'hiepnguyenit', '$2y$10$haimuoihaihaimuoihai2uIOcrzTao/y/qDfsqU7CvRAiSDGrsQ4q', 'admins@fgfg.com', 1, '2020-07-01 08:39:52', 'public/images/logo_macdinh.png');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `baihat`
--
ALTER TABLE `baihat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `casi`
--
ALTER TABLE `casi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

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
