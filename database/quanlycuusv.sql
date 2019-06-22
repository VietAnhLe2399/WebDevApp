-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2019 at 06:04 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlycuusv`
--

-- --------------------------------------------------------

--
-- Table structure for table `baidang`
--

CREATE TABLE `baidang` (
  `idbaidang` int(11) NOT NULL,
  `idcuusinhvien` int(11) NOT NULL,
  `tieude` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `hinhanh` text NOT NULL,
  `yeuthich` int(11) NOT NULL,
  `thoigian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `noidung` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baidang`
--

INSERT INTO `baidang` (`idbaidang`, `idcuusinhvien`, `tieude`, `hinhanh`, `yeuthich`, `thoigian`, `noidung`) VALUES
(1, 17021180, 'Thông báo lập trang web', 'thongbao.jpg', 21, '2019-05-23 03:05:30', 'Chào các bạn sinh viên. Sau khi tốt nghiệp, hoặc ngay khi còn đang ngồi trên ghế nhà trường các bạn chắc hẳn cũng đã suy nghĩ rất nhiều về công việc sau này của mình.\r\nVà để giảm bớt những nỗi lo về công việc của các bạn. Mình tạo website này - nơi mà các bạn có thể tìm thấy một công việc phù hợp với bản thân.\r\nHy vọng các bạn sẽ tìm được một công việc tốt!'),
(2, 15021502, 'Viettel tuyển dụng 1000 nhân viên mới', 'viettel.jpg', 15, '2019-05-25 13:00:20', 'Chào các bạn, chị là Phạm Thị C - nhân viên tuyển dụng của Viettel ...'),
(3, 11020001, 'Facebook tuyển Giám đốc nhân sự tại VN', 'fb.jpg', 52, '2019-05-24 14:02:00', 'Fb tuyển Giám đốc nhân sự tại Việt Nam.\r\nChi tiết liên hệ: 08 8888 8888 - a Trần B'),
(4, 17020002, 'đây là 1 bài viết', '30705123_246640752547482_4029507290263453696_n.jpg', 0, '2019-05-28 07:42:30', 'hhhh');

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `idbinhluan` int(11) NOT NULL,
  `idcuusinhvien` int(11) NOT NULL,
  `idbaidang` int(11) NOT NULL,
  `thoigian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `like_cmt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`idbinhluan`, `idcuusinhvien`, `idbaidang`, `thoigian`, `comment`, `like_cmt`) VALUES
(1, 17020002, 2, '2019-05-28 02:34:42', 'em đăng ký chị ơi', 0),
(2, 17020002, 4, '2019-05-28 07:42:46', 'đây là 1 comment', 0);

-- --------------------------------------------------------

--
-- Table structure for table `congtac`
--

CREATE TABLE `congtac` (
  `idcuusinhvien` int(11) NOT NULL,
  `idcoquan` int(11) NOT NULL,
  `iddiachi` int(11) NOT NULL,
  `thoigian` date NOT NULL,
  `vitri` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `mucluong` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `congtac`
--

INSERT INTO `congtac` (`idcuusinhvien`, `idcoquan`, `iddiachi`, `thoigian`, `vitri`, `mucluong`) VALUES
(17021180, 1, 1, '2019-05-25', 'nhân viên phát triển dự án', '50000$');

-- --------------------------------------------------------

--
-- Table structure for table `coquan`
--

CREATE TABLE `coquan` (
  `idcoquan` int(11) NOT NULL,
  `iddiachi` int(11) NOT NULL,
  `tencoquan` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `loaihinh` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `email_cpn` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coquan`
--

INSERT INTO `coquan` (`idcoquan`, `iddiachi`, `tencoquan`, `loaihinh`, `email_cpn`) VALUES
(1, 1, 'Công ty X', '', 'ctyx@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `cuusinhvien`
--

CREATE TABLE `cuusinhvien` (
  `idcuusinhvien` int(11) NOT NULL,
  `online` int(11) NOT NULL,
  `anh` text NOT NULL,
  `hoten` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `idnamhoc` int(11) NOT NULL,
  `gioithieu` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `sdt` text NOT NULL,
  `email` text NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cuusinhvien`
--

INSERT INTO `cuusinhvien` (`idcuusinhvien`, `online`, `anh`, `hoten`, `idnamhoc`, `gioithieu`, `sdt`, `email`, `ngaysinh`, `gioitinh`) VALUES
(11020001, 1, '11020001.jpg', 'Trần B', 2017, 'Sếp!', '08 8888 8888', 'sepday@gmail.com', '1993-05-02', 'Nam'),
(15021502, 1, '15021502.jpg', 'Phạm Thị C', 2017, 'Chả có gì để giới thiệu', '090 090 0900', 'CPham@gmail.com', '1995-01-06', 'Nữ'),
(16020017, 0, '16020017.jpg', 'Thân T', 2017, 'tt', '08 1000 0005', '16020017@vnu.edu.vn', '1998-02-06', 'Nữ'),
(17020001, 1, '17020001.jpg', 'Phan Đăng D', 2017, 'Tôi là D hê hê', '09 1702 0001', 'phand@gmail.com', '1999-03-03', 'Nam'),
(17020002, 1, '17020002.jpg', 'Nguyễn Văn A', 2017, 'A là tôi', '0123 456 789', 'alatoi@gmail.com', '1999-05-05', 'Nam'),
(17020003, 0, 'VNU-UET.jpg', 'Phùng Thị E', 2017, 'EEEEEEEEEEEEEEEEEEEEEEEEEEE', '08 1702 0003', 'phunge@gmail.com', '1999-01-01', 'Nữ'),
(17020004, 1, '17020004.jpg', 'Lê F', 2017, 'Tôi là F', '09 1702 0004', 'fff@gmail.com', '1999-03-07', 'Nữ'),
(17020005, 0, 'VNU-UET.jpg', 'Đàm G', 2017, 'Yasuo 20p GG', '08 1702 0005', 'damg@gmail.com', '1999-09-09', 'Nữ'),
(17020006, 1, '17020006.jpg', 'Lê H', 2017, 'Ha ha ha', '09 1702 0006', 'hehe@gmail.com', '1999-07-03', 'Nam'),
(17020007, 0, '17020007.jpg', 'Dương K', 2017, 'Kush', '08 1702 0007', 'kush@gmail.com', '1999-10-10', 'Nữ'),
(17020008, 1, '17020008.jpg', 'Tạ M', 2017, 'Hmmm', '09 1702 0008', 'm&m@gmail.com', '1999-07-09', 'Nữ'),
(17020009, 0, '17020009.jpg', 'Khổng N', 2017, 'ngủ ngon', '08 1702 0009', '17020009@vnu.edu.vn', '1998-02-06', 'Nữ'),
(17020010, 1, '17020010.jpg', 'Tần L', 2017, 'Hmmm', '09 1702 0010', 'tl@gmail.com', '1998-01-09', 'Nữ'),
(17020011, 0, '17020011.jpg', 'Uông X', 2017, 'nn', '08 1702 0011', '17020011@vnu.edu.vn', '1998-12-06', 'Nữ'),
(17020012, 1, '17020012.jpg', 'Vương Đ', 2017, 'Hmmm', '09 1702 0012', 'vmd@gmail.com', '2000-03-01', 'Nam'),
(17021180, 1, '17021180.jpg', 'Lê Việt Anh', 2017, 'Seeing feeling understanding', '0987 654 321', 'vietanh@gmail.com', '1999-03-02', 'Nam');

-- --------------------------------------------------------

--
-- Table structure for table `diachi`
--

CREATE TABLE `diachi` (
  `iddiachi` int(11) NOT NULL,
  `tendiachi` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diachi`
--

INSERT INTO `diachi` (`iddiachi`, `tendiachi`) VALUES
(1, 'Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `khaosat`
--

CREATE TABLE `khaosat` (
  `MaKS` int(11) NOT NULL,
  `MaNguoiTao` int(11) NOT NULL,
  `Tieude` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `trangthaiKS` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `like_baidang`
--

CREATE TABLE `like_baidang` (
  `idbaidang` int(11) NOT NULL,
  `idcuusinhvien` int(11) NOT NULL,
  `like_baidang4` tinyint(4) NOT NULL DEFAULT '0',
  `dislike_baidang4` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `namhoc`
--

CREATE TABLE `namhoc` (
  `idnamhoc` int(11) NOT NULL,
  `nienkhoa` text NOT NULL,
  `lopquanly` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `nganhhoc` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `chuongtrinhdaotao` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `namhoc`
--

INSERT INTO `namhoc` (`idnamhoc`, `nienkhoa`, `lopquanly`, `nganhhoc`, `chuongtrinhdaotao`) VALUES
(2017, '2017 - 2021', 'K62 - CAC', 'Khoa học máy tính', 'Chuẩn');

-- --------------------------------------------------------

--
-- Table structure for table `thongbao`
--

CREATE TABLE `thongbao` (
  `idcuusinhvien` int(11) NOT NULL,
  `idbaidang` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `noidung` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `thoigian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thongbao`
--

INSERT INTO `thongbao` (`idcuusinhvien`, `idbaidang`, `trangthai`, `noidung`, `thoigian`) VALUES
(17021180, 1, 1, 'Nguyễn Văn A đã bình luận vào bài viết Thông báo lập trang web của bạn', '2019-05-26 15:18:22'),
(15021502, 2, 1, 'Nguyễn Văn A đã bình luận vào bài viết Viettel tuyển dụng 1000 nhân viên mới của bạn', '2019-05-26 15:17:00'),
(17021180, 8, 1, 'Phạm Thị C đã bình luận vào bài viết kb viết gì của bạn', '2019-05-26 10:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `thuchienkhaosat`
--

CREATE TABLE `thuchienkhaosat` (
  `MaKS` int(11) NOT NULL,
  `MaSV` int(11) NOT NULL,
  `MaTH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tinnhan`
--

CREATE TABLE `tinnhan` (
  `id_tin_nhan` int(11) NOT NULL,
  `id_user1` int(11) NOT NULL,
  `id_user2` int(11) NOT NULL,
  `thoigian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `noidung` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tinnhan`
--

INSERT INTO `tinnhan` (`id_tin_nhan`, `id_user1`, `id_user2`, `thoigian`, `noidung`) VALUES
(8, 17021180, 17020002, '2019-05-26 10:18:33', 'em ơi'),
(9, 17021180, 17020002, '2019-05-26 10:18:39', 'chị bảo này'),
(10, 17020002, 15021502, '2019-05-28 02:35:12', 'c ơi e đăng ký viettel ạ'),
(11, 17020002, 15021502, '2019-05-28 02:35:19', 'có yêu cầu gì k ạ'),
(12, 17020002, 17020012, '2019-05-28 07:43:05', 'đây là 1 tin nhắn'),
(13, 17020002, 15021502, '2019-05-28 07:43:22', 'ddyy');

-- --------------------------------------------------------

--
-- Table structure for table `traloi`
--

CREATE TABLE `traloi` (
  `idbinhluan` int(11) NOT NULL,
  `idcuusinhvien` int(11) NOT NULL,
  `rep_cmt` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `idtraloi` int(11) NOT NULL,
  `like_rep_cmt` int(11) NOT NULL,
  `thoigian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `traloi`
--

INSERT INTO `traloi` (`idbinhluan`, `idcuusinhvien`, `rep_cmt`, `idtraloi`, `like_rep_cmt`, `thoigian`) VALUES
(14, 15021502, 'Phạm Thị C-hihi tu ky', 1, 1, '2019-05-26 10:00:12'),
(14, 15021502, 'Phạm Thị C-tu ky ke tui', 2, 2, '2019-05-26 10:00:36'),
(13, 15021502, 'Lê Việt Anh- sao vậy e', 3, 0, '2019-05-26 10:12:42'),
(16, 17020002, 'Nguyễn Văn A-đúng', 4, 0, '2019-05-26 15:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `idcuusinhvien` int(11) NOT NULL,
  `dangnhapgannhat` date NOT NULL,
  `username` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `password_user` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `role_user` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `idcuusinhvien`, `dangnhapgannhat`, `username`, `password_user`, `role_user`) VALUES
(1, 17021180, '2019-06-22', 'va1', 'va1', 'admin'),
(2, 11020001, '2019-05-26', 'sep', 'sep', 'normal'),
(3, 15021502, '2019-05-26', 'phamc', 'phamc', 'normal'),
(4, 17020002, '2019-05-28', 'va2', 'va2', 'normal'),
(5, 16020017, '2019-05-25', 'thant', 'tpass', 'normal'),
(6, 17020001, '2019-05-25', 'Phan Đăng D', 'dpass', 'normal'),
(7, 17020003, '2019-05-25', 'phunge', 'eeee', 'normal'),
(8, 17020004, '2019-05-25', 'Lê F', 'ffffffff', 'normal'),
(9, 17020005, '2019-05-25', 'damG', 'gg', 'normal'),
(10, 17020006, '2019-05-25', 'hle', 'lllll', 'normal'),
(11, 17020007, '2019-05-23', 'kush', 'kk', 'normal'),
(12, 17020008, '2019-05-25', 'tam', 'matmat', 'normal'),
(13, 17020009, '2019-05-23', 'khong', 'kkkkkk', 'normal'),
(14, 17020010, '2019-05-25', 'tl', 'tanlam', 'normal'),
(15, 17020011, '2019-05-22', 'uongnuoc', 'nuocuong', 'normal'),
(16, 17020012, '2019-05-25', 'vd', 'vdvdvd', 'normal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baidang`
--
ALTER TABLE `baidang`
  ADD PRIMARY KEY (`idbaidang`),
  ADD KEY `idbaidang` (`idbaidang`,`idcuusinhvien`),
  ADD KEY `idcuusinhvien` (`idcuusinhvien`);

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`idbinhluan`),
  ADD KEY `idbinhluan` (`idbinhluan`,`idcuusinhvien`,`idbaidang`),
  ADD KEY `idcuusinhvien` (`idcuusinhvien`),
  ADD KEY `idbaidang` (`idbaidang`);

--
-- Indexes for table `congtac`
--
ALTER TABLE `congtac`
  ADD PRIMARY KEY (`idcuusinhvien`),
  ADD KEY `idcuusinhvien` (`idcuusinhvien`,`idcoquan`,`iddiachi`);

--
-- Indexes for table `coquan`
--
ALTER TABLE `coquan`
  ADD PRIMARY KEY (`idcoquan`),
  ADD KEY `idcoquan` (`idcoquan`,`iddiachi`);

--
-- Indexes for table `cuusinhvien`
--
ALTER TABLE `cuusinhvien`
  ADD PRIMARY KEY (`idcuusinhvien`),
  ADD KEY `idcuusinhvien` (`idcuusinhvien`),
  ADD KEY `idnamhoc` (`idnamhoc`);

--
-- Indexes for table `diachi`
--
ALTER TABLE `diachi`
  ADD PRIMARY KEY (`iddiachi`),
  ADD KEY `iddiachi` (`iddiachi`);

--
-- Indexes for table `khaosat`
--
ALTER TABLE `khaosat`
  ADD PRIMARY KEY (`MaKS`),
  ADD KEY `MaKS` (`MaKS`,`MaNguoiTao`),
  ADD KEY `MaNguoiTao` (`MaNguoiTao`);

--
-- Indexes for table `like_baidang`
--
ALTER TABLE `like_baidang`
  ADD PRIMARY KEY (`idbaidang`),
  ADD KEY `idbaidang` (`idbaidang`,`idcuusinhvien`);

--
-- Indexes for table `namhoc`
--
ALTER TABLE `namhoc`
  ADD PRIMARY KEY (`idnamhoc`),
  ADD KEY `idnamhoc` (`idnamhoc`);

--
-- Indexes for table `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`idbaidang`),
  ADD KEY `idcuusinhvien` (`idcuusinhvien`,`idbaidang`);

--
-- Indexes for table `thuchienkhaosat`
--
ALTER TABLE `thuchienkhaosat`
  ADD PRIMARY KEY (`MaTH`),
  ADD KEY `MaKS` (`MaKS`,`MaSV`,`MaTH`);

--
-- Indexes for table `tinnhan`
--
ALTER TABLE `tinnhan`
  ADD PRIMARY KEY (`id_tin_nhan`),
  ADD KEY `id_tin_nhan` (`id_tin_nhan`,`id_user1`,`id_user2`);

--
-- Indexes for table `traloi`
--
ALTER TABLE `traloi`
  ADD PRIMARY KEY (`idtraloi`),
  ADD KEY `idbinhluan` (`idbinhluan`,`idcuusinhvien`,`idtraloi`),
  ADD KEY `idcuusinhvien` (`idcuusinhvien`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`),
  ADD KEY `iduser` (`iduser`,`idcuusinhvien`),
  ADD KEY `idcuusinhvien` (`idcuusinhvien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baidang`
--
ALTER TABLE `baidang`
  MODIFY `idbaidang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `idbinhluan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coquan`
--
ALTER TABLE `coquan`
  MODIFY `idcoquan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `diachi`
--
ALTER TABLE `diachi`
  MODIFY `iddiachi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `khaosat`
--
ALTER TABLE `khaosat`
  MODIFY `MaKS` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `like_baidang`
--
ALTER TABLE `like_baidang`
  MODIFY `idbaidang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thuchienkhaosat`
--
ALTER TABLE `thuchienkhaosat`
  MODIFY `MaTH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tinnhan`
--
ALTER TABLE `tinnhan`
  MODIFY `id_tin_nhan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `traloi`
--
ALTER TABLE `traloi`
  MODIFY `idtraloi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `baidang`
--
ALTER TABLE `baidang`
  ADD CONSTRAINT `baidang_ibfk_1` FOREIGN KEY (`idcuusinhvien`) REFERENCES `cuusinhvien` (`idcuusinhvien`);

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`idcuusinhvien`) REFERENCES `cuusinhvien` (`idcuusinhvien`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`idbaidang`) REFERENCES `baidang` (`idbaidang`);

--
-- Constraints for table `khaosat`
--
ALTER TABLE `khaosat`
  ADD CONSTRAINT `khaosat_ibfk_1` FOREIGN KEY (`MaNguoiTao`) REFERENCES `cuusinhvien` (`idcuusinhvien`);

--
-- Constraints for table `like_baidang`
--
ALTER TABLE `like_baidang`
  ADD CONSTRAINT `like_baidang_ibfk_1` FOREIGN KEY (`idbaidang`) REFERENCES `baidang` (`idbaidang`);

--
-- Constraints for table `thongbao`
--
ALTER TABLE `thongbao`
  ADD CONSTRAINT `thongbao_ibfk_1` FOREIGN KEY (`idcuusinhvien`) REFERENCES `cuusinhvien` (`idcuusinhvien`);

--
-- Constraints for table `thuchienkhaosat`
--
ALTER TABLE `thuchienkhaosat`
  ADD CONSTRAINT `thuchienkhaosat_ibfk_1` FOREIGN KEY (`MaKS`) REFERENCES `khaosat` (`MaKS`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`idcuusinhvien`) REFERENCES `cuusinhvien` (`idcuusinhvien`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
