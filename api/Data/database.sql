-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Oct 15, 2022 at 02:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `hoadon_id` int(11) NOT NULL,
  `thanh_vien` int(11) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `note` text NOT NULL,
  `vnp_response_code` int(11) NOT NULL,
  `code_vnpay` int(11) NOT NULL,
  `code_bank` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `ten_admin` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mat_khau` varchar(50) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `chuc_vu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `ten_admin`, `email`, `mat_khau`, `sdt`, `chuc_vu`) VALUES
(1, 'Bùi Thanh Tâm', 'tt@gmail.com', '12345', '0345678901', 'Quản lý'),
(2, 'Vương Thị Hương Ly', 'hl@gmail.com', '12345', '0912345670', 'Nhân viên'),
(3, 'Nguyễn Thu Hường', 'nth@gmail.com', '12345', '0984367521', 'Nhân viên'),
(4, 'Lỗ Quang Dũng', 'qd@gmail.com', '12345', '0372456789', 'Nhân viên'),
(5, 'Ngô Thị Phương Lan', 'nl@gmail.com', '12345', '0346789472', 'Nhân viên');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chitiethoadon`
--

CREATE TABLE `tbl_chitiethoadon` (
  `hoadon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` decimal(10,2) NOT NULL,
  `giamgia` decimal(10,2) NOT NULL,
  `thanhtien` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `giohang_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `hoadon_id` int(11) DEFAULT NULL,
  `so_luong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`giohang_id`, `sanpham_id`, `hoadon_id`, `so_luong`) VALUES
(1, 6, NULL, 1),
(2, 40, NULL, 2),
(3, 48, 1, 1),
(4, 17, 2, 2),
(5, 12, 3, 1),
(6, 9, 4, 1),
(7, 44, 8, 4),
(8, 11, 7, 2),
(9, 58, 9, 1),
(10, 41, 6, 2),
(11, 19, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hoadon`
--

CREATE TABLE `tbl_hoadon` (
  `hoadon_id` int(11) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `ngay_xuat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tinh_trang` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_hoadon`
--

INSERT INTO `tbl_hoadon` (`hoadon_id`, `khachhang_id`, `admin_id`, `ngay_xuat`, `tinh_trang`) VALUES
(1, 1, 1, '2022-10-08 18:21:47', 0),
(2, 2, 1, '2022-10-08 18:21:47', 0),
(3, 3, 4, '2022-10-08 18:22:32', 0),
(4, 6, 5, '2022-10-08 18:22:32', 0),
(5, 3, 5, '2022-10-08 06:27:04', 0),
(6, 2, 3, '2022-10-06 01:27:04', 0),
(7, 7, 5, '2022-10-08 18:22:32', 0),
(8, 7, 2, '2022-10-08 18:22:32', 0),
(9, 8, 5, '2022-10-08 18:22:32', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `mat_khau` varchar(100) NOT NULL,
  `ten_khachhang` varchar(50) NOT NULL,
  `dia_chi` varchar(70) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khachhang_id`, `mat_khau`, `ten_khachhang`, `dia_chi`, `email`) VALUES
(1, 'linh123', 'Nguyễn Khánh Linh', '80 Đường Quang Trung, Quang Trung, Hà Đông, Hà Nội', 'khanhlinh@gmail.com'),
(2, 'anhtuannn', 'Trần Anh Tuấn', '317 Trường Chinh, Khương Trung, Thanh Xuân, Hà Nội', 'at@gmail.com'),
(3, 'hanhbui4', 'Bùi Thị Hạnh', '4 Lương Thế Vinh, Thanh Xuân Bắc, Thanh Xuân, Hà Nội', 'bth@gmail.com'),
(6, 'tamtamtam145', 'Tâm', 'Thái Phương, Hưng Hà, Thái Bình', 'Buithanhtam17042001@gmail.com'),
(7, 'hhuongthaco00', 'Nguyễn Hiền Hương', 'Thái Nguyên', 'tambuibdsthaco@gmail.com'),
(8, 'lieuxinhxan', 'Nguyễn Liễu', 'Hà Nội', 'nguyenlieu@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loaisanpham`
--

CREATE TABLE `tbl_loaisanpham` (
  `loaisanpham_id` int(11) NOT NULL,
  `ten_loaisanpham` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_loaisanpham`
--

INSERT INTO `tbl_loaisanpham` (`loaisanpham_id`, `ten_loaisanpham`) VALUES
(1, 'Chó cảnh'),
(2, 'Mèo cảnh'),
(3, 'Cá cảnh'),
(4, 'Chuột cảnh'),
(5, 'Chim cảnh'),
(9, 'Thỏ cảnh'),
(10, 'Bò sát');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) NOT NULL,
  `ten_sanpham` varchar(50) NOT NULL,
  `loaisanpham_id` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `anh` varchar(100) NOT NULL,
  `mo_ta` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `ten_sanpham`, `loaisanpham_id`, `gia`, `so_luong`, `anh`, `mo_ta`) VALUES
(1, 'Chó Phốc', 1, 1200000, 10, 'cho_phoc.jpg', 'Chó Phốc màu vàng, 1-6 tháng tuổi'),
(2, 'Chó Alaska', 1, 5000000, 5, 'cho_alaska.jpg', 'Chó Alaska 1 tháng tuổi đến 1 năm tuổi'),
(3, 'Chó Bắc Kinh', 1, 3000000, 3, 'cho_Bac_Kinh.jpg', 'Chó Bắc Kinh lông dày màu vàng cam, 3 tháng tuổi'),
(4, 'Chó Beagle', 1, 2000000, 3, 'cho_beagle.jpg', 'Chó đực màu lông có 3 màu trắng đen vàng'),
(5, 'Chó Becgie', 1, 1200000, 2, 'cho_becgie.jpg', 'Giống chó thông minh, giữ nhà'),
(6, 'Chó Corgi', 1, 3500000, 8, 'cho_corgi.jpg', 'Giống chó chăn cừu, lông dày, nghịch ngợm'),
(7, 'Chó Gorden Retriever', 1, 5500000, 9, 'cho_Golden_Retriever.jpg', 'Chó thông minh, lông dày. Có màu vàng nhạt và vàng đậm'),
(8, 'Chó bướm', 1, 3000000, 4, 'cho_buom.jpg', 'Nhiều lông, nghịch ngợm'),
(9, 'Chó Husky', 1, 4500000, 10, 'cho_husky.jpg', 'Giống chó nghịch ngợm năng động'),
(10, 'Chó Phú Quốc', 1, 9900000, 3, 'cho_phu_quoc.jpg', 'Giống chố khôn nhất Việt Nam'),
(11, 'Chó Poodle', 1, 3500000, 12, 'cho_poodle.jpg', 'Chó poodle màu vằng, trắng, đen. Giống chó tinh nghịch, dễ nuôi, gần gũi với con người'),
(12, 'Chó Pug', 1, 4000000, 8, 'cho_pug.jpg', 'Giống chó hiền, ngoan'),
(13, 'Chó Samoyed', 1, 10000000, 7, 'cho_samoyed.jpg', 'Màu trắng tinh, gần gũi với con người và thông minh'),
(14, 'Chó Shiba', 1, 5000000, 8, 'cho_shiba.jpg', 'Chó shiba màu vàng trắng từ 3 tháng tuổi trở lên'),
(15, 'Chó Xúc Xích', 1, 3400000, 3, 'cho_xuc_xich.jpg', 'Chó chân ngắn mình dài. Tinh nghịch'),
(16, 'Mèo Aegean', 2, 5000000, 3, 'meo_Aegean.jpg', 'Mèo Aegean có một cơ thể gầy, cơ bắp được bao phủ bởi một lớp lông hai màu hoặc ba màu trắng với đen, đỏ, xanh lam hoặc kem. Một số có dấu tabby.'),
(17, 'Mèo Anh lông ngắn', 2, 4500000, 13, 'meo_anh_long_ngan.jpg', 'Mèo anh lông ngắn tiếng anh British Shorthair có thân hình vuông vức, chắc chắn, với bộ ngực rộng, đầy đặn, đôi chân ngắn, khỏe và chiếc đuôi ngắn, dày thuôn nhọn về đầu tròn. '),
(18, 'Mèo Bali', 2, 8000000, 4, 'meo_bali.jpg', 'Giống mèo Bali có tên tiếng anh Balinese. Mèo Bali trông giống như một con Xiêm dài và có các màu sắc tương tự như màu Xiêm: hải cẩu, sô cô la, xanh lam và hoa cà.'),
(19, 'Mèo Birman', 2, 7000000, 6, 'meo_birman.jpg', 'Giống mèo này lần đầu tiên được nhập khẩu vào Hoa Kỳ vào những năm 1960.\r\nMèo Birman phải có bốn bàn chân trắng, với kiểu được mô tả là “găng tay và dây buộc”.'),
(20, 'Mèo Bombay', 2, 4500000, 3, 'meo_bombay.jpg', 'mèo cơ bắp, kích thước trung bình.'),
(21, 'Mèo Burmilla', 2, 5000000, 2, 'meo_Burmilla.jpg', 'Lông của mèo Burmilla có nền bạc lấp lánh nghiêng hoặc bóng mờ với các màu đen, nâu, xanh lam, sô cô la'),
(22, 'Mèo Cornish Rex', 2, 9000000, 2, 'meo_Cornish_Rex.jpg', 'Mèo Cornish Rex trông bóng bẩy, nhưng khi bạn cầm nó lên, nó nặng một cách đáng ngạc nhiên.'),
(23, 'Mèo Miến Điện', 2, 6000000, 5, 'meo_mien_dien.jpg', 'Tất cả mèo Miến Điện đều có nguồn gốc từ một con mèo màu sô cô la duy nhất, Wong Mau.\r\nMèo Miến Điện là một người thích âu yếm và thích ngồi trong lòng.'),
(24, 'Mèo Mỹ đuôi cọc', 2, 9500000, 3, 'meo_my_duoi_coc.jpg', 'Mèo Mỹ đuôi cộc tiếng anh American Bobtail có đuôi rất ngắn, là kết quả của một đột biến tự nhiên.'),
(25, 'Cá Rồng', 3, 1200000, 3, 'ca_rong.jpg', 'Nặng trên 3 cân'),
(26, 'Cá Ali', 3, 100000, 30, 'ca_ali.jpg', 'Đây là một giống cá cảnh vô cùng phổ biến trên thị trường hiện nay, chúng thuộc họ cá Rô phi, có tên khoa học là Altolamprologus caivus. Giống cá này có đặc điểm là màu sắc vô cùng đa dạng'),
(28, 'Cá Anh Đào', 3, 60000, 40, 'ca_anh_dao.jpg', 'Màu đỏ'),
(29, 'Cá 3 đuôi', 3, 40000, 45, 'ca_ba_duoi.jpg', NULL),
(30, 'Cá Betta', 3, 150000, 21, 'ca_betta.jpg', NULL),
(31, 'Cá Đĩa', 3, 70000, 45, 'ca_dia.jpg', NULL),
(32, 'Cá Đuôi Cờ', 3, 45000, 50, 'ca_duoi_co.jpg', NULL),
(33, 'Cá Đuôi Kiếm', 3, 30000, 60, 'ca_duoi_kiem.jpg', NULL),
(34, 'Cá Hải Hồ', 3, 34000, 56, 'ca_hai_ho.jpg', NULL),
(35, 'Cá Hồng Két', 3, 45000, 61, 'ca_hong_ket.jpg', NULL),
(36, 'Cá Koi', 3, 400000, 5, 'ca_koi.jpg', 'Cá giống Nhật'),
(37, 'Cá Phượng Hoàng', 3, 50000, 30, 'ca_phuong_hoang.jpg', NULL),
(38, 'Cá Tỳ Bà', 3, 30000, 65, 'ca_ty_ba.jpg', NULL),
(39, 'Cá Tai Tượng Châu Phi', 3, 40000, 34, 'ca_tai_tuong_chau_phi.jpg', 'Cá có nguồn gốc từ Châu Phi'),
(40, 'Chuột Hamster Syria', 4, 155000, 6, 'Hamster_Syria.jpg', NULL),
(41, 'Chuột Hamster Bear', 4, 120000, 10, 'Hamster_Bear.jpg', 'Chuột Hamster Bear có thể phát triển chiều dài khoảng 8-15cm, chúng có nhiều màu sắc, hoa văn và các loại lông khác nhau. Hamster Bear có một cơ thể chắc nịch, hình thùng với những chiếc đuôi nhỏ mập mạp gần như ẩn hoàn toàn bên dưới bộ lông dài của chúng.'),
(42, 'Chuột Hamster Campbell', 4, 1200000, 9, 'Hamster_Campbell.jpg', 'Đặc điểm nổi bật của loài hamster campell là phần lông trên lưng của chúng sẫm màu hơn, chuyển sang màu kem ở hai bên và trở nên rất trắng ở bụng. Campbell là loài Hamster rất hiếu chiến, thường chủ động tấn công hoặc đe dọa khi một hamster khác lại gần.'),
(43, 'Chuột Hamster Robo', 4, 150000, 6, 'Hamster_Robo.jpg', 'Chuột hamster lùn robo có thể chỉ dài 4 – 5cm nhưng có thể đạt đến 6 - 8 cm.Chúng rất dễ thương, một phần vì chúng rất nhỏ nhắn. Trên thực tế, Robos trưởng thành chỉ nặng từ 20 – 25 gram.'),
(44, 'Chuột Hamster Winter White', 4, 125000, 15, 'hamster_winter_white.jpg', 'Hamster Winter White có kích thước khoảng 8-10 cm. Chân và bàn chân có lông bao phủ. Bộ lông cực mềm, mịn. Hình dạng cơ thể tròn hơn, giống hình bầu dục.'),
(45, 'Chuột Lang', 4, 1200000, 4, 'chuot_lang.jpg', NULL),
(46, 'Chim Chào Mào', 5, 600000, 1, 'chim_chao_mao.jpg', 'Chim Chào Mào là loại chim cảnh phổ biến nhất trong làng chim cảnh hiện nay tại Việt Nam. Đặc điểm nhận dạng dễ nhất của loài chim cảnh Việt Nam này là phần mào hình tam giác nhô hẳn lên trên đầu.'),
(47, 'Chim Chích Chòe', 5, 500000, 2, 'chim_chich_choe.jpg', 'Chúng có một dáng vẻ nhỏ nhắn siêu dễ thương, và cách nuôi chim này cũng khá là dễ dàng. Trước khi muốn nuôi loài chim này, có một vấn đề mà bạn cần lưu ý là chúng sở hữu một chất giọng khá đặc biệt.'),
(48, 'Chim Cu Gáy', 5, 550000, 2, 'chim_cu_gay.jpg', 'chim Cu Gáy có tiếng hót được ví với tiếng sáo trúc, nghe rất thánh thót. Đặc điểm nhận dạng của loài này là các đốm trắng điểm xuyết trên lông cổ và cánh.'),
(49, 'Chim Họa My', 5, 450000, 3, 'chim_hoa_my.jpg', 'Loài chim cảnh Việt Nam này khá nhỏ bé, chỉ ngang hoặc bé hơn chim Sơn Ca nhưng bù lại chúng có giọng hót rất hay, trong trẻo.'),
(50, 'Chim Khuyên', 5, 600000, 2, 'chim_vang_anh.jpg', 'Vàng Anh hay còn được gọi là Hoàng Anh là một loài chim rất được giới chơi chim cảnh thích thú. Chim Vàng Anh có giọng hót khá giống với tiếng chim giẻ cùi nhưng vô cùng thánh thót.'),
(51, 'Chim Vẹt', 5, 700000, 3, 'chim_vet.jpg', 'Chim Vẹt có thể cho là loài chim gây được sự chú ý nhất tới mọi người, với màu sắc bắt mắt, đáng yêu và đặc biệt là khả năng bắt chước tiếng người.'),
(52, 'Chim Yến Phụng', 5, 750000, 1, 'chim_yen_phung.jpg', 'Chim yến phụng có dáng khoằm, sắc nhọn, mắt tròn, to có một bộ lông hội tụ rất nhiều màu sắc. Loài chim này thường được nuôi theo cặp, thế nên người nuôi nên cần đảm bảo việc làm chuồng cần đủ lớn để cả hai có thể ở.'),
(53, 'Chim Khướu', 5, 800000, 1, 'chim_khuou.jpg', 'Chim Khướu là loài chim sống chủ yếu tại vùng rừng núi, nên việc sở hữu 1 con chim khướu là vô cùng may mắn. Đặc trưng của chú chim này là bộ lông mềm và xốp như bông, phần mào nhô lên khá rõ, trong khi đó phần mắt và mào lại có màu đen nối liền với nhau nhìn khá huyền bí.'),
(54, 'Thỏ Sư Tử', 9, 1200000, 1, 'Tho_su_tu.jpg', NULL),
(55, 'Thỏ Lùn Hà Lan', 9, 1300000, 2, 'tho_lun_ha_lan.jpg', NULL),
(56, 'Thỏ mini trà sữa', 9, 1300000, 1, 'tho_mini_tra_sua.jpg', NULL),
(57, 'Thỏ Mini Woody Toy', 9, 1200000, 1, 'tho_mini_woody_toy.jpg', NULL),
(58, 'Thỏ Panda', 9, 1000000, 2, 'tho_panda.jpg', NULL),
(59, 'Tắc kè hoa', 10, 155000, 1, 'tac_ke_hoa.jpg', NULL),
(60, 'Rùa cá sấu', 10, 1300000, 1, 'rua_ca_sau.jpg', NULL),
(61, 'Rùa bụng hồng', 10, 600000, 2, 'rua_bung_hong.jpg', NULL),
(62, 'Rùa Common', 10, 180000, 1, 'rua_common.jpg', NULL),
(63, 'Rồng Úc', 10, 1000000, 2, 'rong_uc.jpg', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_chitiethoadon`
--
ALTER TABLE `tbl_chitiethoadon`
  ADD UNIQUE KEY `product_id` (`product_id`),
  ADD KEY `chitiet_hoadon` (`hoadon_id`);

--
-- Indexes for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`giohang_id`),
  ADD KEY `khoangoai1` (`hoadon_id`),
  ADD KEY `khoangoai2` (`sanpham_id`);

--
-- Indexes for table `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  ADD PRIMARY KEY (`hoadon_id`),
  ADD KEY `khachhang_id` (`khachhang_id`),
  ADD KEY `tbl_hoadon_ibfk_2` (`admin_id`);

--
-- Indexes for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Indexes for table `tbl_loaisanpham`
--
ALTER TABLE `tbl_loaisanpham`
  ADD PRIMARY KEY (`loaisanpham_id`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`),
  ADD KEY `loaisanpham_id` (`loaisanpham_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `giohang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  MODIFY `hoadon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_loaisanpham`
--
ALTER TABLE `tbl_loaisanpham`
  MODIFY `loaisanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_chitiethoadon`
--
ALTER TABLE `tbl_chitiethoadon`
  ADD CONSTRAINT `chitiet_hoadon` FOREIGN KEY (`hoadon_id`) REFERENCES `tbl_hoadon` (`hoadon_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiet_sanpham` FOREIGN KEY (`product_id`) REFERENCES `tbl_sanpham` (`sanpham_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD CONSTRAINT `khoangoai1` FOREIGN KEY (`hoadon_id`) REFERENCES `tbl_hoadon` (`hoadon_id`),
  ADD CONSTRAINT `khoangoai2` FOREIGN KEY (`sanpham_id`) REFERENCES `tbl_sanpham` (`sanpham_id`);

--
-- Constraints for table `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  ADD CONSTRAINT `tbl_hoadon_ibfk_1` FOREIGN KEY (`khachhang_id`) REFERENCES `tbl_khachhang` (`khachhang_id`),
  ADD CONSTRAINT `tbl_hoadon_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `tbl_admin` (`admin_id`);

--
-- Constraints for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD CONSTRAINT `tbl_sanpham_ibfk_1` FOREIGN KEY (`loaisanpham_id`) REFERENCES `tbl_loaisanpham` (`loaisanpham_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
