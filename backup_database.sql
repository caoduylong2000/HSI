-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2021 at 07:22 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hactech`
--

-- --------------------------------------------------------

--
-- Table structure for table `bang_diem`
--

CREATE TABLE `bang_diem` (
  `bang_diem_id` int(11) NOT NULL,
  `ma_mon` varchar(20) NOT NULL,
  `ma_lop` varchar(10) NOT NULL,
  `gvpt` varchar(30) NOT NULL,
  `hoc_ki_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bang_diem`
--

INSERT INTO `bang_diem` (`bang_diem_id`, `ma_mon`, `ma_lop`, `gvpt`, `hoc_ki_id`) VALUES
(6, 'AV1-LTMT ', 'LTMT4-K10 ', 'Trần Xuân Thanh', 'HK1-K10'),
(8, 'AV1-KTDN ', 'KTDN1-K9 ', 'Trần Xuân Hà', 'HK1-K9 ');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_bang_diem`
--

CREATE TABLE `chi_tiet_bang_diem` (
  `ct_diem_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `ma_sinh_vien` varchar(20) NOT NULL,
  `ten_sinh_vien` varchar(30) NOT NULL,
  `diem` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chuyen_nganh`
--

CREATE TABLE `chuyen_nganh` (
  `ma_nganh` varchar(15) NOT NULL,
  `ten_nganh` varchar(30) NOT NULL,
  `ma_khoa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chuyen_nganh`
--

INSERT INTO `chuyen_nganh` (`ma_nganh`, `ten_nganh`, `ma_khoa`) VALUES
('CĐT', 'Cơ điện tử', 'CK'),
('KTDN', 'Kế toán Doanh nghiệp', 'KTQL'),
('KTML', 'Kĩ thuật máy lạnh', 'ĐCN'),
('LTMT', 'Lập trình máy tính', 'CNTT'),
('OT', 'Ô tô', 'CK'),
('QTDN', 'Quản trị doanh nghiệp', 'KTQL'),
('QTM', 'Quản trị mạng', 'CNTT'),
('TKĐH', 'Thiết kế đồ họa', 'CNTT'),
('UDPM', 'Ứng dụng phần mềm', 'CNTT'),
('ĐDD', 'Điện dân dụng', 'ĐTVT'),
('ĐTCN', 'Điện tử công nghiệp', 'ĐCN');

-- --------------------------------------------------------

--
-- Table structure for table `hoc_ki`
--

CREATE TABLE `hoc_ki` (
  `hoc_ki` varchar(10) NOT NULL,
  `khoa_hoc` int(2) NOT NULL,
  `bat_dau` date NOT NULL,
  `ket_thuc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoc_ki`
--

INSERT INTO `hoc_ki` (`hoc_ki`, `khoa_hoc`, `bat_dau`, `ket_thuc`) VALUES
('HK1-K10', 10, '2018-08-07', '2018-12-07'),
('HK1-K11', 11, '2020-08-07', '2020-12-07'),
('HK1-K9', 9, '2017-08-07', '2017-12-07'),
('HK2-K10', 10, '2019-02-11', '2019-05-11'),
('HK2-K11', 11, '2020-02-11', '2020-05-11'),
('HK2-K9', 9, '2018-02-11', '2018-05-11'),
('HK3-K9', 9, '2018-08-07', '2018-12-07'),
('HK4-K9', 9, '2019-02-11', '2019-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `hoc_phi`
--

CREATE TABLE `hoc_phi` (
  `ma_sinh_vien` varchar(20) NOT NULL,
  `hoc_ki` varchar(10) NOT NULL,
  `so_tien` int(10) NOT NULL,
  `ngay_dong` datetime NOT NULL DEFAULT current_timestamp(),
  `hoc_phi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `khoa`
--

CREATE TABLE `khoa` (
  `ma_khoa` varchar(10) NOT NULL,
  `ten_khoa` varchar(40) NOT NULL,
  `chu_nhiem_khoa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khoa`
--

INSERT INTO `khoa` (`ma_khoa`, `ten_khoa`, `chu_nhiem_khoa`) VALUES
('CK', 'Khoa cơ khí', 'PGS. Tăng Huy'),
('CNTT', 'Khoa Công nghệ thông tin ', 'ThS. Đỗ Văn Uy'),
('KTQL', 'Khoa Kinh tế và Quản lý', 'ThS. Hoàng Văn Long'),
('ĐCN', 'Khoa Điện và Bảo dưỡng công nghiệp', 'TS. Nguyễn Mạnh Tiến'),
('ĐTVT', 'Khoa Điện tử viễn thông', 'Ths. Nguyễn Minh Đức');

-- --------------------------------------------------------

--
-- Table structure for table `khoa_hoc`
--

CREATE TABLE `khoa_hoc` (
  `ma_khoa_hoc` int(2) NOT NULL,
  `bat_dau` date NOT NULL,
  `ket_thuc` date NOT NULL,
  `khoa_hoc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khoa_hoc`
--

INSERT INTO `khoa_hoc` (`ma_khoa_hoc`, `bat_dau`, `ket_thuc`, `khoa_hoc_id`) VALUES
(9, '2017-08-17', '2020-07-30', 1),
(10, '2018-08-17', '2021-07-30', 2),
(11, '2019-08-17', '2022-07-30', 3);

-- --------------------------------------------------------

--
-- Table structure for table `lich_hoc`
--

CREATE TABLE `lich_hoc` (
  `ma_mon` varchar(20) NOT NULL,
  `ma_lop` varchar(10) NOT NULL,
  `phong_hoc` varchar(8) NOT NULL,
  `gvpt` varchar(30) NOT NULL,
  `bat_dau` time NOT NULL,
  `ket_thuc` time NOT NULL,
  `ngay` date NOT NULL,
  `lich_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lich_hoc`
--

INSERT INTO `lich_hoc` (`ma_mon`, `ma_lop`, `phong_hoc`, `gvpt`, `bat_dau`, `ket_thuc`, `ngay`, `lich_id`) VALUES
('AV1-LTMT', 'LTMT5-K10', 'T-411', 'Trần Xuân Hà', '06:45:00', '09:00:00', '2018-07-17', 6),
('PL-LTMT', 'LTMT5-K10', 'T-407', 'Trần Xuân Minh', '09:15:00', '11:45:00', '2018-07-17', 7);

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE `lop` (
  `ma_lop` varchar(10) NOT NULL,
  `ten_lop` varchar(40) NOT NULL,
  `ma_nganh` varchar(15) NOT NULL,
  `gvcn` varchar(30) NOT NULL,
  `khoa_hoc` int(2) NOT NULL,
  `lop_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lop`
--

INSERT INTO `lop` (`ma_lop`, `ten_lop`, `ma_nganh`, `gvcn`, `khoa_hoc`, `lop_id`) VALUES
('LTMT1-K9', 'Lập trình máy tính 1', 'LTMT', 'Trần Xuân Tiến', 9, 73),
('LTMT2-K9', 'Lập trình máy tính 2', 'LTMT', 'Nguyễn Diệu Linh', 9, 74),
('LTMT3-K9', 'Lập trình máy tính 3', 'LTMT', 'Đăng Văn Ninh', 9, 75),
('LTMT4-K9', 'Lập trình máy tính 4', 'LTMT', 'Vũ Văn Giang', 9, 76),
('TKĐH1-K9', 'Thiết kế đồ họa 1', 'TKĐH', 'Trần Xuân Tiến', 9, 77),
('TKĐH2-K9', 'Thiết kế đồ họa 2', 'TKĐH', 'Nguyễn Diệu Linh', 9, 78),
('TKĐH3-K9', 'Thiết kế đồ họa 3', 'TKĐH', 'Đăng Văn Ninh', 9, 79),
('TKĐH4-K9', 'Thiết kế đồ họa 4', 'TKĐH', 'Vũ Văn Giang', 9, 80),
('KTDN1-K9', 'Kế toán doanh nghiệp 1', 'KTDN', 'Trần Xuân Tiến', 9, 81),
('KTDN2-K9', 'Kế toán doanh nghiệp 2', 'KTDN', 'Nguyễn Diệu Linh', 9, 82),
('KTDN3-K9', 'Kế toán doanh nghiệp 3', 'KTDN', 'Đăng Văn Ninh', 9, 83),
('KTDN4-K9', 'Kế toán doanh nghiệp 4', 'KTDN', 'Vũ Văn Giang', 9, 84),
('QTDN1-K9', 'Quản trị doanh nghiệp 1', 'QTDN', 'Trần Xuân Tiến', 9, 85),
('QTDN2-K9', 'Quản trị doanh nghiệp 2', 'QTDN', 'Nguyễn Diệu Linh', 9, 86),
('QTDN3-K9', 'Quản trị doanh nghiệp 3', 'QTDN', 'Đăng Văn Ninh', 9, 87),
('QTDN4-K9', 'Quản trị doanh nghiệp 4', 'QTDN', 'Vũ Văn Giang', 9, 88),
('UDPM1-K9', 'Ứng dụng phầm mềm 1', 'UDPM', 'Trần Xuân Tiến', 9, 89),
('UDPM2-K9', 'Ứng dụng phầm mềm 2', 'UDPM', 'Nguyễn Diệu Linh', 9, 90),
('UDPM3-K9', 'Ứng dụng phầm mềm 3', 'UDPM', 'Đăng Văn Ninh', 9, 91),
('UDPM4-K9', 'Ứng dụng phầm mềm 4', 'UDPM', 'Vũ Văn Giang', 9, 92),
('QTM1-K9', 'Quản trị mạng 1', 'QTM', 'Trần Xuân Tiến', 9, 93),
('QTM2-K9', 'Quản trị mạng 2', 'QTM', 'Nguyễn Diệu Linh', 9, 94),
('QTM3-K9', 'Quản trị mạng 3', 'QTM', 'Đăng Văn Ninh', 9, 95),
('QTM4-K9', 'Quản trị mạng 4', 'QTM', 'Vũ Văn Giang', 9, 96),
('CĐT1-K9', 'Cơ điện tử 1', 'CĐT', 'Trần Xuân Tiến', 9, 97),
('CĐT2-K9', 'Cơ điện tử 2', 'CĐT', 'Nguyễn Diệu Linh', 9, 98),
('CĐT3-K9', 'Cơ điện tử 3', 'CĐT', 'Đăng Văn Ninh', 9, 99),
('CĐT4-K9', 'Cơ điện tử 4', 'CĐT', 'Vũ Văn Giang', 9, 100),
('OT1-K9', 'Ô tô 1', 'OT', 'Trần Xuân Tiến', 9, 101),
('OT2-K9', 'Ô tô 2', 'OT', 'Nguyễn Diệu Linh', 9, 102),
('OT3-K9', 'Ô tô 3', 'OT', 'Đăng Văn Ninh', 9, 103),
('OT4-K9', 'Ô tô 4', 'OT', 'Vũ Văn Giang', 9, 104),
('KTML1-K9', 'Kĩ thuật máy lạnh 1', 'KTML', 'Trần Xuân Tiến', 9, 105),
('KTML2-K9', 'Kĩ thuật máy lạnh 2', 'KTML', 'Nguyễn Diệu Linh', 9, 106),
('KTML3-K9', 'Kĩ thuật máy lạnh 3', 'KTML', 'Đăng Văn Ninh', 9, 107),
('KTML4-K9', 'Kĩ thuật máy lạnh 4', 'KTML', 'Vũ Văn Giang', 9, 108),
('ĐDD1-K9', 'Điện dân dụng 1', 'ĐDD', 'Trần Xuân Tiến', 9, 109),
('ĐDD2-K9', 'Điện dân dụng 2', 'ĐDD', 'Nguyễn Diệu Linh', 9, 110),
('ĐDD3-K9', 'Điện dân dụng 3', 'ĐDD', 'Đăng Văn Ninh', 9, 111),
('ĐDD4-K9', 'Điện dân dụng 4', 'ĐDD', 'Vũ Văn Giang', 9, 112),
('LTMT1-K10', 'Lập trình máy tính 1', 'LTMT', 'Trần Xuân Tiến', 10, 113),
('LTMT2-K10', 'Lập trình máy tính 2', 'LTMT', 'Nguyễn Diệu Linh', 10, 114),
('LTMT3-K10', 'Lập trình máy tính 3', 'LTMT', 'Đăng Văn Ninh', 10, 115),
('LTMT4-K10', 'Lập trình máy tính 4', 'LTMT', 'Vũ Văn Giang', 10, 116),
('TKĐH1-K10', 'Thiết kế đồ họa 1', 'TKĐH', 'Trần Xuân Tiến', 10, 117),
('TKĐH2-K10', 'Thiết kế đồ họa 2', 'TKĐH', 'Nguyễn Diệu Linh', 10, 118),
('TKĐH3-K10', 'Thiết kế đồ họa 3', 'TKĐH', 'Đăng Văn Ninh', 10, 119),
('TKĐH4-K10', 'Thiết kế đồ họa 4', 'TKĐH', 'Vũ Văn Giang', 10, 120),
('KTDN1-K10', 'Kế toán doanh nghiệp 1', 'KTDN', 'Trần Xuân Tiến', 10, 121),
('KTDN2-K10', 'Kế toán doanh nghiệp 2', 'KTDN', 'Nguyễn Diệu Linh', 10, 122),
('KTDN3-K10', 'Kế toán doanh nghiệp 3', 'KTDN', 'Đăng Văn Ninh', 10, 123),
('KTDN4-K10', 'Kế toán doanh nghiệp 4', 'KTDN', 'Vũ Văn Giang', 10, 124),
('QTDN1-K10', 'Quản trị doanh nghiệp 1', 'QTDN', 'Trần Xuân Tiến', 10, 125),
('QTDN2-K10', 'Quản trị doanh nghiệp 2', 'QTDN', 'Nguyễn Diệu Linh', 10, 126),
('QTDN3-K10', 'Quản trị doanh nghiệp 3', 'QTDN', 'Đăng Văn Ninh', 10, 127),
('QTDN4-K10', 'Quản trị doanh nghiệp 4', 'QTDN', 'Vũ Văn Giang', 10, 128),
('UDPM1-K10', 'Ứng dụng phầm mềm 1', 'UDPM', 'Trần Xuân Tiến', 10, 129),
('UDPM2-K10', 'Ứng dụng phầm mềm 2', 'UDPM', 'Nguyễn Diệu Linh', 10, 130),
('UDPM3-K10', 'Ứng dụng phầm mềm 3', 'UDPM', 'Đăng Văn Ninh', 10, 131),
('UDPM4-K10', 'Ứng dụng phầm mềm 4', 'UDPM', 'Vũ Văn Giang', 10, 132),
('QTM1-K10', 'Quản trị mạng 1', 'QTM', 'Trần Xuân Tiến', 10, 133),
('QTM2-K10', 'Quản trị mạng 2', 'QTM', 'Nguyễn Diệu Linh', 10, 134),
('QTM3-K10', 'Quản trị mạng 3', 'QTM', 'Đăng Văn Ninh', 10, 135),
('QTM4-K10', 'Quản trị mạng 4', 'QTM', 'Vũ Văn Giang', 10, 136),
('CĐT1-K10', 'Cơ điện tử 1', 'CĐT', 'Trần Xuân Tiến', 10, 137),
('CĐT2-K10', 'Cơ điện tử 2', 'CĐT', 'Nguyễn Diệu Linh', 10, 138),
('CĐT3-K10', 'Cơ điện tử 3', 'CĐT', 'Đăng Văn Ninh', 10, 139),
('CĐT4-K10', 'Cơ điện tử 4', 'CĐT', 'Vũ Văn Giang', 10, 140),
('OT1-K10', 'Ô tô 1', 'OT', 'Trần Xuân Tiến', 10, 141),
('OT2-K10', 'Ô tô 2', 'OT', 'Nguyễn Diệu Linh', 10, 142),
('OT3-K10', 'Ô tô 3', 'OT', 'Đăng Văn Ninh', 10, 143),
('OT4-K10', 'Ô tô 4', 'OT', 'Vũ Văn Giang', 10, 144),
('KTML1-K10', 'Kĩ thuật máy lạnh 1', 'KTML', 'Trần Xuân Tiến', 10, 145),
('KTML2-K10', 'Kĩ thuật máy lạnh 2', 'KTML', 'Nguyễn Diệu Linh', 10, 146),
('KTML3-K10', 'Kĩ thuật máy lạnh 3', 'KTML', 'Đăng Văn Ninh', 10, 147),
('KTML4-K10', 'Kĩ thuật máy lạnh 4', 'KTML', 'Vũ Văn Giang', 10, 148),
('ĐDD1-K10', 'Điện dân dụng 1', 'ĐDD', 'Trần Xuân Tiến', 10, 149),
('ĐDD2-K10', 'Điện dân dụng 2', 'ĐDD', 'Nguyễn Diệu Linh', 10, 150),
('ĐDD3-K10', 'Điện dân dụng 3', 'ĐDD', 'Đăng Văn Ninh', 10, 151),
('ĐDD4-K10', 'Điện dân dụng 4', 'ĐDD', 'Vũ Văn Giang', 10, 152),
('LTMT1-K11', 'Lập trình máy tính 1', 'LTMT', 'Trần Xuân Tiến', 11, 153),
('LTMT2-K11', 'Lập trình máy tính 2', 'LTMT', 'Nguyễn Diệu Linh', 11, 154),
('LTMT3-K11', 'Lập trình máy tính 3', 'LTMT', 'Đăng Văn Ninh', 11, 155),
('LTMT4-K11', 'Lập trình máy tính 4', 'LTMT', 'Vũ Văn Giang', 11, 156),
('TKĐH1-K11', 'Thiết kế đồ họa 1', 'TKĐH', 'Trần Xuân Tiến', 11, 157),
('TKĐH2-K11', 'Thiết kế đồ họa 2', 'TKĐH', 'Nguyễn Diệu Linh', 11, 158),
('TKĐH3-K11', 'Thiết kế đồ họa 3', 'TKĐH', 'Đăng Văn Ninh', 11, 159),
('TKĐH4-K11', 'Thiết kế đồ họa 4', 'TKĐH', 'Vũ Văn Giang', 11, 160),
('KTDN1-K11', 'Kế toán doanh nghiệp 1', 'KTDN', 'Trần Xuân Tiến', 11, 161),
('KTDN2-K11', 'Kế toán doanh nghiệp 2', 'KTDN', 'Nguyễn Diệu Linh', 11, 162),
('KTDN3-K11', 'Kế toán doanh nghiệp 3', 'KTDN', 'Đăng Văn Ninh', 11, 163),
('KTDN4-K11', 'Kế toán doanh nghiệp 4', 'KTDN', 'Vũ Văn Giang', 11, 164),
('QTDN1-K11', 'Quản trị doanh nghiệp 1', 'QTDN', 'Trần Xuân Tiến', 11, 165),
('QTDN2-K11', 'Quản trị doanh nghiệp 2', 'QTDN', 'Nguyễn Diệu Linh', 11, 166),
('QTDN3-K11', 'Quản trị doanh nghiệp 3', 'QTDN', 'Đăng Văn Ninh', 11, 167),
('QTDN4-K11', 'Quản trị doanh nghiệp 4', 'QTDN', 'Vũ Văn Giang', 11, 168),
('UDPM1-K11', 'Ứng dụng phầm mềm 1', 'UDPM', 'Trần Xuân Tiến', 11, 169),
('UDPM2-K11', 'Ứng dụng phầm mềm 2', 'UDPM', 'Nguyễn Diệu Linh', 11, 170),
('UDPM3-K11', 'Ứng dụng phầm mềm 3', 'UDPM', 'Đăng Văn Ninh', 11, 171),
('UDPM4-K11', 'Ứng dụng phầm mềm 4', 'UDPM', 'Vũ Văn Giang', 11, 172),
('QTM1-K11', 'Quản trị mạng 1', 'QTM', 'Trần Xuân Tiến', 11, 173),
('QTM2-K11', 'Quản trị mạng 2', 'QTM', 'Nguyễn Diệu Linh', 11, 174),
('QTM3-K11', 'Quản trị mạng 3', 'QTM', 'Đăng Văn Ninh', 11, 175),
('QTM4-K11', 'Quản trị mạng 4', 'QTM', 'Vũ Văn Giang', 11, 176),
('CĐT1-K11', 'Cơ điện tử 1', 'CĐT', 'Trần Xuân Tiến', 11, 177),
('CĐT2-K11', 'Cơ điện tử 2', 'CĐT', 'Nguyễn Diệu Linh', 11, 178),
('CĐT3-K11', 'Cơ điện tử 3', 'CĐT', 'Đăng Văn Ninh', 11, 179),
('CĐT4-K11', 'Cơ điện tử 4', 'CĐT', 'Vũ Văn Giang', 11, 180),
('OT1-K11', 'Ô tô 1', 'OT', 'Trần Xuân Tiến', 11, 181),
('OT2-K11', 'Ô tô 2', 'OT', 'Nguyễn Diệu Linh', 11, 182),
('OT3-K11', 'Ô tô 3', 'OT', 'Đăng Văn Ninh', 11, 183),
('OT4-K11', 'Ô tô 4', 'OT', 'Vũ Văn Giang', 11, 184),
('KTML1-K11', 'Kĩ thuật máy lạnh 1', 'KTML', 'Trần Xuân Tiến', 11, 185),
('KTML2-K11', 'Kĩ thuật máy lạnh 2', 'KTML', 'Nguyễn Diệu Linh', 11, 186),
('KTML3-K11', 'Kĩ thuật máy lạnh 3', 'KTML', 'Đăng Văn Ninh', 11, 187),
('KTML4-K11', 'Kĩ thuật máy lạnh 4', 'KTML', 'Vũ Văn Giang', 11, 188),
('ĐDD1-K11', 'Điện dân dụng 1', 'ĐDD', 'Trần Xuân Tiến', 11, 189),
('ĐDD2-K11', 'Điện dân dụng 2', 'ĐDD', 'Nguyễn Diệu Linh', 11, 190),
('ĐDD3-K11', 'Điện dân dụng 3', 'ĐDD', 'Đăng Văn Ninh', 11, 191),
('ĐDD4-K11', 'Điện dân dụng 4', 'ĐDD', 'Vũ Văn Giang', 11, 192),
('LTMT5-K10', 'Lập trình máy tính 5', 'LTMT', 'Trần Minh Quang', 10, 193),
('LTMT5-K11', 'Lập trình máy tính 5', 'LTMT', 'Đặng Văn Anh', 11, 196),
('LTMT5-K9', 'Lập trình máy tính 5', 'LTMT', 'Nguyễn Thành Toàn', 9, 197);

-- --------------------------------------------------------

--
-- Table structure for table `mon_hoc`
--

CREATE TABLE `mon_hoc` (
  `ma_mon` varchar(20) NOT NULL,
  `ten_mon` varchar(100) NOT NULL,
  `ma_nganh` varchar(15) NOT NULL,
  `hoc_ki` varchar(10) DEFAULT NULL,
  `mon_hoc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mon_hoc`
--

INSERT INTO `mon_hoc` (`ma_mon`, `ten_mon`, `ma_nganh`, `hoc_ki`, `mon_hoc_id`) VALUES
('AV1-KTDN', 'Anh văn 1', 'KTDN', 'HK1', 4),
('CT-KTDN', 'Chính trị', 'KTDN', 'HK1', 5),
('TCC-KTDN', 'Toán cao cấp', 'KTDN', 'HK1', 6),
('PL-KTDN', 'Pháp luật', 'KTDN', 'HK1', 7),
('TCB-KTDN', 'Tin căn bản', 'KTDN', 'HK1', 8),
('AV1-QTDN', 'Anh văn 1', 'QTDN', 'HK1', 9),
('CT-QTDN', 'Chính trị', 'QTDN', 'HK1', 10),
('TCC-QTDN', 'Toán cao cấp', 'QTDN', 'HK1', 11),
('PL-QTDN', 'Pháp luật', 'QTDN', 'HK1', 12),
('TCB-QTDN', 'Tin căn bản', 'QTDN', 'HK1', 13),
('AV1-OT', 'Anh văn 1', 'OT', 'HK1', 14),
('CT-OT', 'Chính trị', 'OT', 'HK1', 15),
('TCC-OT', 'Toán cao cấp', 'OT', 'HK1', 16),
('PL-OT', 'Pháp luật', 'OT', 'HK1', 17),
('TCB-OT', 'Tin căn bản', 'OT', 'HK1', 18),
('AV1-CĐT', 'Anh văn 1', 'CĐT', 'HK1', 19),
('CT-CĐT', 'Chính trị', 'CĐT', 'HK1', 20),
('TCC-CĐT', 'Toán cao cấp', 'CĐT', 'HK1', 21),
('PL-CĐT', 'Pháp luật', 'CĐT', 'HK1', 22),
('TCB-CĐT', 'Tin căn bản', 'CĐT', 'HK1', 23),
('AV1-KTML', 'Anh văn 1', 'KTML', 'HK1', 24),
('CT-KTML', 'Chính trị', 'KTML', 'HK1', 25),
('TCC-KTML', 'Toán cao cấp', 'KTML', 'HK1', 26),
('PL-KTML', 'Pháp luật', 'KTML', 'HK1', 27),
('TCB-KTML', 'Tin căn bản', 'KTML', 'HK1', 28),
('AV1-ĐDD', 'Anh văn 1', 'ĐDD', 'HK1', 29),
('CT-ĐDD', 'Chính trị', 'ĐDD', 'HK1', 30),
('TCC-ĐDD', 'Toán cao cấp', 'ĐDD', 'HK1', 31),
('PL-ĐDD', 'Pháp luật', 'ĐDD', 'HK1', 32),
('TCB-ĐDD', 'Tin căn bản', 'ĐDD', 'HK1', 33),
('AV1-LTMT', 'Anh văn 1', 'LTMT', 'HK1', 34),
('CT-LTMT', 'Chính trị', 'LTMT', 'HK1', 35),
('TCC-LTMT', 'Toán cao cấp', 'LTMT', 'HK1', 36),
('PL-LTMT', 'Pháp luật', 'LTMT', 'HK1', 37),
('TCB-LTMT', 'Tin căn bản', 'LTMT', 'HK1', 38),
('AV1-UDPM', 'Anh văn 1', 'UDPM', 'HK1', 39),
('CT-UDPM', 'Chính trị', 'UDPM', 'HK1', 40),
('TCC-UDPM', 'Toán cao cấp', 'UDPM', 'HK1', 41),
('PL-UDPM', 'Pháp luật', 'UDPM', 'HK1', 42),
('TCB-UDPM', 'Tin căn bản', 'UDPM', 'HK1', 43),
('AV1-QTM', 'Anh văn 1', 'QTM', 'HK1', 44),
('CT-QTM', 'Chính trị', 'QTM', 'HK1', 45),
('TCC-QTM', 'Toán cao cấp', 'QTM', 'HK1', 46),
('PL-QTM', 'Pháp luật', 'QTM', 'HK1', 47),
('TCB-QTM', 'Tin căn bản', 'QTM', 'HK1', 48),
('AV1-TKĐH', 'Anh văn 1', 'TKĐH', 'HK1', 49),
('CT-TKĐH', 'Chính trị', 'TKĐH', 'HK1', 50),
('TCC-TKĐH', 'Toán cao cấp', 'TKĐH', 'HK1', 51),
('PL-TKĐH', 'Pháp luật', 'TKĐH', 'HK1', 52),
('TCB-TKĐH', 'Tin căn bản', 'TKĐH', 'HK1', 53),
('AV1-ĐTCN', 'Anh văn 1', 'ĐTCN', 'HK1', 54),
('CT-ĐTCN', 'Chính trị', 'ĐTCN', 'HK1', 55),
('TCC-ĐTCN', 'Toán cao cấp', 'ĐTCN', 'HK1', 56),
('PL-ĐTCN', 'Pháp luật', 'ĐTCN', 'HK1', 57),
('TCB', 'Tin căn bản', 'ĐTCN', 'HK1', 58),
('AV2-KTDN', 'Anh văn 2', 'KTDN', 'HK2', 59),
('LTTCTT-KTDN', 'Lý thuyết tài chính tiền tệ', 'KTDN', 'HK2', 60),
('TH-LTKT-KTDN', 'Thực hành- Lý thuyết kế toán', 'KTDN', 'HK2', 61),
('QTH-KTDN', 'Quản trị học', 'KTDN', 'HK2', 62),
('NLKT-KTDN', 'Nguyên lý kế toán', 'KTDN', 'HK2', 63),
('KTVM1-KTDN', 'Kinh tế vĩ mô', 'KTDN', 'HK2', 64),
('LTTC-TT-QTDN', 'Lý thuyết tài chính tiền tệ', 'QTDN', 'HK2', 65),
('TH-LTKT-QTDN', 'Thực hành- Lý thuyết kế toán', 'QTDN', 'HK2', 66),
('QTH-QTDN', 'Quản trị học', 'QTDN', 'HK2', 67),
('NLKT-QTDN', 'Nguyên lý kế toán', 'QTDN', 'HK2', 68),
('KTVM1-QTDN', 'Kinh tế vi mô', 'QTDN', 'HK2', 69),
('KTĐ-OT', 'Kĩ thuật điện', 'OT', 'HK2', 70),
('DS-OT', 'Dung sai kĩ thuật đo', 'OT', 'HK2', 71),
('CLT-OT', 'Cơ lý thuyết', 'OT', 'HK2', 72),
('CKDC-OT', 'Cơ khí đại cương', 'OT', 'HK2', 73),
('KTDT-OT', 'Kĩ thuật điện tử', 'OT', 'HK2', 74),
('VKT-OT', 'Vẽ kĩ thuật - AutoCAD', 'OT', 'HK2', 75),
('KTN-OT', 'Kĩ thuật Nhiệt', 'OT', 'HK2', 76),
('KCOT-OT', 'Kết cấu ô tô', 'OT', 'HK2', 77),
('MNCĐT-CĐT', 'Nhập môn Cơ điện tử', 'CĐT', 'HK2', 78),
('DS-CĐT', 'Dung sai kĩ thuật đo', 'CĐT', 'HK2', 79),
('KTN-CĐT', 'Kĩ thuật Nhiệt', 'CĐT', 'HK2', 80),
('KTĐ-CĐT', 'Kĩ thuật Điện', 'CĐT', 'HK2', 81),
('CLT-CĐT', 'Cơ lý thuyết', 'CĐT', 'HK2', 82),
('KTDT-CĐT', 'Kĩ thuật điện tử', 'CĐT', 'HK2', 83),
('VKT-CĐT', 'Vẽ kĩ thuật - AutoCAD', 'CĐT', 'HK2', 84),
('CSKTL-KTML', 'Cơ sở kĩ thuật lạnh & ĐHKK', 'KTML', 'HK2', 85),
('VLĐL-KTML', 'Vật liệu điện lạnh', 'KTML', 'HK2', 86),
('LTMĐ-KTML', 'Lập trình mạch điện', 'KTML', 'HK2', 87),
('ĐLĐL-KTML', 'Đo lượng điện lạnh', 'KTML', 'HK2', 88),
('KTTK-KTML', 'Kĩ thuật thủy khí', 'KTML', 'HK2', 89),
('CKT-KTML', 'Cơ kỹ thuật', 'KTML', 'HK2', 90),
('VKT-KTML', 'Vẽ kĩ thuật - AutoCAD', 'KTML', 'HK2', 91),
('VĐ-ĐDD', 'Vẽ điện', 'ĐDD', 'HK2', 92),
('LTMĐ-ĐDD', 'Lập trình mạch điện', 'ĐDD', 'HK2', 93),
('VKT-ĐDD', 'Vẽ kĩ thuật - AutoCAD', 'ĐDD', 'HK2', 94),
('KTTK-ĐDD', 'Kĩ thuật thủy khí', 'ĐDD', 'HK2', 95),
('KTCK-ĐDD', 'Kĩ thuật cơ khí', 'ĐDD', 'HK2', 96),
('ĐLĐ-ĐDD', 'Đo lường điện', 'ĐDD', 'HK2', 97),
('KTĐT-ĐDD', 'Kĩ thuật điện tử', 'ĐDD', 'HK2', 98),
('AV2-ĐDD', 'Anh văn 2', 'ĐDD', 'HK2', 99),
('AV2-KTML', 'Anh văn 2', 'KTML', 'HK2', 100),
('AV2-CĐT', 'Anh văn 2', 'CĐT', 'HK2', 101),
('AV2-OT', 'Anh văn 2', 'OT', 'HK2', 102),
('AV2-QTDN', 'Anh văn 2', 'QTDN', 'HK2', 103),
('AV2-LTMT', 'Anh văn 2', 'LTMT', 'HK2', 104),
('LTCB-LTMT', 'Lập trình căn bản', 'LTMT', 'HK2', 105),
('THVP-LTMT', 'Tin học văn phòng', 'LTMT', 'HK2', 106),
('NMMMT-LTMT', 'Nhập môn mạng máy tính', 'LTMT', 'HK2', 107),
('CTMT-LTMT', 'Cấu trúc máy tính', 'LTMT', 'HK2', 108),
('XLA-LTMT', 'Xử lý ảnh', 'LTMT', 'HK2', 109),
('CSDL-LTMT', 'Cơ sở dữ liệu', 'LTMT', 'HK2', 110),
('CD&BTMT-LTMT', 'Cài đặt và bảo trì máy trính', 'LTMT', 'HK2', 111),
('AV2-UDPM', 'Anh văn 2', 'UDPM', 'HK2', 112),
('LTCB-UDPM', 'Lập trình căn bản', 'UDPM', 'HK2', 113),
('CD&BTMT-UDPM', 'Cài đặt và bảo trì máy trính', 'UDPM', 'HK2', 114),
('NMMMT-UDPM', 'Nhập môn mạng máy tính', 'UDPM', 'HK2', 115),
('CTMT-UDPM', 'Cấu trúc máy tính', 'UDPM', 'HK2', 116),
('STVB-UDPM', 'Soạn thảo văn bản', 'UDPM', 'HK2', 117),
('EXCEL-UDPM', 'Bảng tính Excel', 'UDPM', 'HK2', 118);

-- --------------------------------------------------------

--
-- Table structure for table `phong_hoc`
--

CREATE TABLE `phong_hoc` (
  `ma_phong` varchar(10) NOT NULL,
  `mo_ta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phong_hoc`
--

INSERT INTO `phong_hoc` (`ma_phong`, `mo_ta`) VALUES
('A1/17-101', 'Phòng thực hành tại tầng 1 Khu thực hành Ngõ A1/17 Tạ Quang Bửu'),
('A1/17-201', 'Phòng thực hành tại tầng 2 Khu thực hành Ngõ A1/17 Tạ Quang Bửu'),
('A1/17-202', 'Phòng thực hành tại tầng 2 Khu thực hành Ngõ A1/17 Tạ Quang Bửu'),
('A1/17-203', 'Phòng thực hành tại tầng 2 Khu thực hành Ngõ A1/17 Tạ Quang Bửu'),
('A1/17-301', 'Phòng thực hành tại tầng 3 Khu thực hành Ngõ A1/17 Tạ Quang Bửu'),
('A1/17-302', 'Phòng thực hành tại tầng 3 Khu thực hành Ngõ A1/17 Tạ Quang Bửu'),
('A1/17-303', 'Phòng thực hành tại tầng 3 Khu thực hành Ngõ A1/17 Tạ Quang Bửu'),
('A1/17-304', 'Phòng thực hành tại tầng 3 Khu thực hành Ngõ A1/17 Tạ Quang Bửu'),
('A1/17-401', 'Phòng thực hành tại tầng 4 Khu thực hành Ngõ A1/17 Tạ Quang Bửu'),
('A1/17-402', 'Phòng thực hành tại tầng 4 Khu thực hành Ngõ A1/17 Tạ Quang Bửu'),
('A1/17-501', 'Phòng thực hành tại tầng 5 Khu thực hành Ngõ A1/17 Tạ Quang Bửu'),
('A1/17-502', 'Phòng thực hành tại tầng 5 Khu thực hành Ngõ A1/17 Tạ Quang Bửu'),
('A17-401', 'Phòng học tại tầng 4 tòa nhà A17 Tạ Quang Bửu'),
('A17-402', 'Phòng học tại tầng 4 tòa nhà A17 Tạ Quang Bửu'),
('A17-403', 'Phòng học tại tầng 4 tòa nhà A17 Tạ Quang Bửu'),
('A17-404', 'Phòng học tại tầng 4 tòa nhà A17 Tạ Quang Bửu'),
('A17-406', 'Phòng học tại tầng 4 tòa nhà A17 Tạ Quang Bửu'),
('A17-407', 'Phòng học tại tầng 4 tòa nhà A17 Tạ Quang Bửu'),
('A17-408', 'Phòng học tại tầng 4 tòa nhà A17 Tạ Quang Bửu'),
('A17-501', 'Phòng học tại tầng 5 tòa nhà A17 Tạ Quang Bửu'),
('A17-502', 'Phòng học tại tầng 5 tòa nhà A17 Tạ Quang Bửu'),
('A17-503', 'Phòng học tại tầng 5 tòa nhà A17 Tạ Quang Bửu'),
('A17-504', 'Phòng học tại tầng 5 tòa nhà A17 Tạ Quang Bửu'),
('T-401', 'Phòng học tại tầng 4 tòa nhà T số 62 Lê Thanh Nghị'),
('T-402', 'Phòng học tại tầng 4 tòa nhà T số 62 Lê Thanh Nghị'),
('T-403', 'Phòng học tại tầng 4 tòa nhà T số 62 Lê Thanh Nghị'),
('T-404', 'Phòng học tại tầng 4 tòa nhà T số 62 Lê Thanh Nghị'),
('T-405', 'Phòng học tại tầng 4 tòa nhà T số 62 Lê Thanh Nghị'),
('T-406', 'Phòng học tại tầng 4 tòa nhà T số 62 Lê Thanh Nghị'),
('T-407', 'Phòng học tại tầng 4 tòa nhà T số 62 Lê Thanh Nghị'),
('T-408', 'Phòng học tại tầng 4 tòa nhà T số 62 Lê Thanh Nghị'),
('T-409', 'Phòng học tại tầng 4 tòa nhà T số 62 Lê Thanh Nghị'),
('T-410', 'Phòng học tại tầng 4 tòa nhà T số 62 Lê Thanh Nghị'),
('T-411', 'Phòng học tại tầng 4 tòa nhà T số 62 Lê Thanh Nghị'),
('T-412', 'Phòng học tại tầng 4 tòa nhà T số 62 Lê Thanh Nghị'),
('T-501', 'Phòng học tại tầng 5 tòa nhà T số 62 Lê Thanh Nghị'),
('T-502', 'Phòng học tại tầng 5 tòa nhà T số 62 Lê Thanh Nghị'),
('T-503', 'Phòng học tại tầng 5 tòa nhà T số 62 Lê Thanh Nghị'),
('T-504', 'Phòng học tại tầng 5 tòa nhà T số 62 Lê Thanh Nghị'),
('T-505', 'Phòng học tại tầng 5 tòa nhà T số 62 Lê Thanh Nghị'),
('T-506', 'Phòng học tại tầng 5 tòa nhà T số 62 Lê Thanh Nghị'),
('T-507', 'Phòng học tại tầng 5 tòa nhà T số 62 Lê Thanh Nghị'),
('T-508', 'Phòng học tại tầng 5 tòa nhà T số 62 Lê Thanh Nghị'),
('T-509', 'Phòng học tại tầng 5 tòa nhà T số 62 Lê Thanh Nghị'),
('T-510', 'Phòng học tại tầng 5 tòa nhà T số 62 Lê Thanh Nghị'),
('T-511', 'Phòng học tại tầng 5 tòa nhà T số 62 Lê Thanh Nghị'),
('T-512', 'Phòng học tại tầng 5 tòa nhà T số 62 Lê Thanh Nghị');

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `ma_sinh_vien` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tai_khoan`
--

INSERT INTO `tai_khoan` (`username`, `password`, `ma_sinh_vien`) VALUES
('CD170212 ', '6fc44c392e95443e047c673f2d116e18', 'CD170212 '),
('CD170774 ', 'b980045d83620881ca3ace4b94d0778f', 'CD170774 '),
('CD170988 ', '9ec691900ff7175f083c9d1c9f43ba2a', 'CD170988 '),
('CD172608 ', '43e8e686bc50c31029da6241090b6db3', 'CD172608 '),
('CD180362', '1b43e6a4fbdc16bc7c20a55cdac1ed9b', 'CD180362'),
('CD180476 ', '59630dd888caa0c62338c80aaf8cfb48', 'CD180476 '),
('CD181252  ', '131ab97173924abf665cdda1ef29c7ef', 'CD181252  '),
('CD181743 ', '7487be07b0049d11c79e2d69d5ffe1ba', 'CD181743 '),
('CD181750 ', '322acc3602275594323b26d70eaff336', 'CD181750 '),
('CD181755 ', '0bc3675693be6c350975c57b3bc8f7c9', 'CD181755 '),
('CD181772 ', '42ac6bcf47c4d1b928ab77c9d0f7915e', 'CD181772 '),
('CD181773 ', '3ae02196644e0a6dac2cfcda2b14e143', 'CD181773 '),
('CD181812 ', '65788775e69cbf93cefc6e6cf3c23a27', 'CD181812 '),
('CD181832 ', 'bf15fab7ff85017db0bdbaae3d793538', 'CD181832 '),
('CD181834 ', '1145f108a8d907ae11887a73ed3dcde4', 'CD181834 '),
('CD181882 ', '0409e4876786e45cb567bfb2f7223b68', 'CD181882 '),
('CD181883 ', '125e7fa46a634aedb7ba6e9201fd1390', 'CD181883 '),
('CD182132', '6ae2f89071b9b557eb48a95e20de99bd', 'CD182132'),
('CD182156 ', '4ebdb25cd7f46eb64968554ccd8982f0', 'CD182156 '),
('CD182178 ', 'f319f35f64a291394918528aedf05f16', 'CD182178 '),
('CD182266 ', 'f515166585ecc4a1c38eec67a95ace6b', 'CD182266 '),
('CD182357 ', '5643b7f0e102265aa4b45772b9896ba8', 'CD182357 '),
('CD182407', '0c014791f8b1fd2cc2b146507c81835d', 'CD182407'),
('CD182461', '541973959541ae8b07959d62fe19029a', 'CD182461'),
('CD182506', 'a9ef7438131adda8a4cf1b2df4db751d', 'CD182506'),
('CD182545', 'de59a394e70545cec1b88ff3653832bf', 'CD182545'),
('CD182546', '8ffe1e3c19031d4afe963d796b984b59', 'CD182546'),
('CD182582', '47a4c2c4f2eb9c926a9e7b25e50a8c97', 'CD182582'),
('CD182584', '97dc0ede30c122f6c39cd14809db9468', 'CD182584'),
('CD182590', '99b3b0d911f31f30f81d42ad630543e2', 'CD182590'),
('CD182595', '86dd9a7e005475935773120f5a15f6d4', 'CD182595'),
('CD182635', 'bd035cb5910f2786841ecfa0eacc385b', 'CD182635'),
('CD182642', '853b8a09bb731d45997dc90cb5492eb9', 'CD182642'),
('CD182749', 'e8e6e840a7314bdf605dfa2f699ff548', 'CD182749'),
('CD182753', '8fd562a1dc401c774586f739017f3514', 'CD182753'),
('CD182754', '18560e7b1071e97f688b23002f0be4b4', 'CD182754'),
('CD182755', '5073f2a6c16fac1dfe869007c5773420', 'CD182755'),
('CD182759', '7128ebaf3c4843b78edc225167455c18', 'CD182759'),
('CD182771', '711f9131dcc3536a5554d884fff0b816', 'CD182771'),
('CD182775', 'a3ffc825cb0afa8d3db7ae414a233294', 'CD182775'),
('CD182781', '67ddea32aa6fb2a78993c378fa59de28', 'CD182781'),
('CD182791 ', 'f7c7392e85e299cc23d7c7221212daae', 'CD182791 '),
('CD182803 ', 'ea71252350287581769811f1ec854b72', 'CD182803 '),
('CD182818 ', '056cc3c7302d37e012a682e7e65d0147', 'CD182818 '),
('CD182837', 'c4e911a49f03b5e634147a9f74c82902', 'CD182837'),
('CD182838 ', '7af64fe59698ff60c0cf24157ba78a7a', 'CD182838 '),
('CD182844 ', '67b6cd999039e634a20e7ad7cc9bc77b', 'CD182844 '),
('CD182B06  ', 'd3f2985e648861225cfe688a37f75d84', 'CD182B06  '),
('CD183052', 'e7450f2c03ae8494198aa1117de94908', 'CD183052'),
('CD183086', '375383db365c6beaa8f102fa1f0f96f8', 'CD183086'),
('CD183087', '961fafc22a0f9760441b7aa2cdee6504', 'CD183087'),
('CD183089', '4b321262eb46c4cbe8f9cf6936f0d5f4', 'CD183089'),
('CD183096', '4253603f0201137b4e235f6c89931c8e', 'CD183096'),
('CD183102', '496b51c0cf44bd270f1a77d2ffee81bf', 'CD183102'),
('CD183106', 'a508a4acd8e95634adacfa07a9853226', 'CD183106'),
('CD183118', '0314409b27d80c613a03a60641f6465d', 'CD183118'),
('CD183119', '663b920fb60f27a90c1fde892ffb8fcc', 'CD183119'),
('CD183136', 'f59fc2fda5df64a172cb0ec300eaf6f0', 'CD183136'),
('CD183139', '9196f781ae165d68dcf948ed6c00a7f1', 'CD183139'),
('CD183194', 'b34a12a75d8f410f1b185cd9436ed81e', 'CD183194'),
('CD188736', 'c8ce58d1e338cb963682c6f31b4de653', 'CD188736');

-- --------------------------------------------------------

--
-- Table structure for table `thong_tin_sinh_vien`
--

CREATE TABLE `thong_tin_sinh_vien` (
  `ma_sinh_vien` varchar(20) NOT NULL,
  `ten_sinh_vien` varchar(30) NOT NULL,
  `ma_lop` varchar(10) NOT NULL,
  `dia_chi` varchar(100) NOT NULL,
  `so_dien_thoai` varchar(11) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thong_tin_sinh_vien`
--

INSERT INTO `thong_tin_sinh_vien` (`ma_sinh_vien`, `ten_sinh_vien`, `ma_lop`, `dia_chi`, `so_dien_thoai`, `email`) VALUES
('CD170212 ', 'Bùi Văn Chương ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'buivanchuong@gmail.com'),
('CD170774 ', 'Phạm Quang Anh ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'phamquanganh@gmail.com'),
('CD170988 ', 'Lê Thánh Tôn', 'LTMT3-K10', 'Hà Nội', '0399828374', 'lethanhton@gmail.com'),
('CD172608 ', 'Dương Minh Hiếu ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'duongminhhieu@gmail.com'),
('CD180362', 'Mai Đức Quang', 'LTMT4-K10', 'Hà Nội', '0498727639', 'maiducquang@gmail.com'),
('CD180476 ', 'Nguyễn Đình Tuấn Anh ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'nguyendinhtuananh@gmail.com'),
('CD181252  ', 'Nguyễn Công Hạnh', 'LTMT3-K10', 'Hà Nội', '0399828374', 'nguyenconghanh@gmail.com'),
('CD181743 ', 'Nguyễn Đăng Lăng ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'nguyendanglang@gmail.com'),
('CD181750 ', 'Đỗ Thanh Tùng ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'dothanhtung@gmail.com'),
('CD181755 ', 'Đỗ Duy Thìn ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'doduythin@gmail.com'),
('CD181772 ', 'Vũ Tiến Đạt', 'LTMT3-K10', 'Hà Nội', '0399828374', 'vutiendat@gmail.com'),
('CD181773 ', 'Trần Minh Quân ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'tranminhquan@gmail.com'),
('CD181812 ', 'Đỗ Minh Tuyên ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'dominhtuyen@gmail.com'),
('CD181832 ', 'Vương Quốc Tuấn ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'vuongquoctuan@gmail.com'),
('CD181834 ', 'Nguyễn Quang Sang ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'nguyenquangsang@gmail.com'),
('CD181882 ', 'Lê Duy Linh ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'leduylinh@gmail.com'),
('CD181883 ', 'Trần Văn Hiểu ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'tranquanghieu@gmail.com'),
('CD182132', ' Đoàn Quang Huy ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'doanquanghuy@gmail.com'),
('CD182156 ', 'Nguyễn Trọng Long ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'nguyentronglong@gmail.com'),
('CD182178 ', 'Nguyễn Trọng Tuấn ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'nguyentrongtuan@gmail.com'),
('CD182266 ', 'Nguyễn Anh Văn', 'LTMT3-K10', 'Hà Nội', '0399828374', 'nguyenanhvan'),
('CD182357 ', 'Bùi Tiến Anh ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'buitienanh@gmail.com'),
('CD182407', 'Hoàng Ngọc Hưng', 'LTMT4-K10', 'Hà Nội', '0498727637', 'hoangngochung@gmail.com'),
('CD182461', 'Phan Trung Kiên', 'LTMT4-K10', 'Hà Nội', '0498727637', 'phantrungkien@gmail.com'),
('CD182506', 'Trần Ngọc Dũng', 'LTMT4-K10', 'Hà Nội', '0498727637', 'tranngocdung@gmail.com'),
('CD182545', 'Hoàng Văn Mạnh', 'LTMT4-K10', 'Hà Nội', '0498727638', 'hoangvanmanh@gmail.com'),
('CD182546', 'Phan Duy Hưng', 'LTMT4-K10', 'Hà Nội', '0498727637', 'phanduyhung@gmail.com'),
('CD182582', 'Vũ Hoàng Hiệp', 'LTMT4-K10', 'Hà Nội', '0498727637', 'vuhoanghiep@gmail.com'),
('CD182584', 'Nguyễn Thanh Phong', 'LTMT4-K10', 'Hà Nội', '0498727639', 'nguyenthanhphong@gmail.com'),
('CD182590', 'Đoàn Quang Linh', 'LTMT4-K10', 'Hà Nội', '0498727637', 'doanquanglinh@gmail.com'),
('CD182595', 'Nguyễn Đức Hoàng Huy', 'LTMT4-K10', 'Hà Nội', '0498727637', 'nguyenduchoanghuy@gmail.com'),
('CD182635', 'Nguyễn Nhất Anh', 'LTMT4-K10', 'Hà Nội', '0498727637', 'nguyennhatanh@gmail.com'),
('CD182642', 'Nguyễn Anh Tuấn', 'LTMT4-K10', 'Hà Nội', '0498727639', 'nguyenanhtuan@gmail.com'),
('CD182749', 'Nguyễn Tiến Khánh', 'LTMT4-K10', 'Hà Nội', '0498727637', 'nguyentienkhanh@gmail.com'),
('CD182753', 'Thân Văn Lợi', 'LTMT4-K10', 'Hà Nội', '0498727637', 'thanvanloi@gmail.com'),
('CD182754', 'Nguyễn Đình Dũng', 'LTMT4-K10', 'Hà Nội', '0498727637', 'nguyendinhdung@gmail.com'),
('CD182755', 'Tạ Quang Huy', 'LTMT4-K10', 'Hà Nội', '0498727637', 'taquanghuy@gmail.com'),
('CD182759', 'Nguyễn Thiện Quang', 'LTMT4-K10', 'Hà Nội', '0498727639', 'nguyenthienquang@gmail.com'),
('CD182771', 'Cao Duy Long', 'LTMT4-K10', 'Hà Nội', '0498727637', 'longcaoduy2000@gmail.com'),
('CD182775', 'Nguyễn Thị Minh Châu', 'LTMT4-K10', 'Hà Nội', '0498727637', 'nguyenthiminhchau@gmail.com'),
('CD182781', 'Ngô Quốc An', 'LTMT4-K10', 'Hà Nội', '0498727637', 'ngoquocan@gmail.com'),
('CD182791 ', 'Nguyễn Đức Thắng', 'LTMT3-K10', 'Hà Nội', '0399828374', 'nguyenducthang@gmail.com'),
('CD182803 ', 'Đoàn Đinh Hùng ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'doandinhhung@gmail.com'),
('CD182818 ', 'Vũ Văn Trường ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'vuvantruong@gmail.com'),
('CD182837', 'Nguyễn Công Duy', 'LTMT3-K10 ', 'Mỹ Đức', '0499838471', 'congduy@gmail.com'),
('CD182838 ', 'Phạm Hồng Quyền ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'phamhongquyen@gmail.com'),
('CD182844 ', 'Nguyễn Quang Huy ', 'LTMT3-K10', 'Hà Nội', '0399828374', 'nguyenquanghuy@gmail.com'),
('CD182B06  ', 'Nguyễn Phạm Thoại Doanh', 'LTMT3-K10', 'Hà Nội', '0399828374', 'thoaidoanh@gmail.com'),
('CD183052', 'Đào Thế Anh', 'LTMT4-K10', 'Hà Nội', '0498727637', 'daotheanh@gmail.com'),
('CD183086', 'Vũ Minh Mạnh', 'LTMT4-K10', 'Hà Nội', '0498727639', 'vuminhmanh@gmail.com'),
('CD183087', 'Nguyễn Xuân Minh', 'LTMT4-K10', 'Hà Nội', '0498727639', 'nguyenxuanminh@gmail.com'),
('CD183089', 'Nguyễn Tất Thắng', 'LTMT4-K10', 'Hà Nội', '0498727639', 'nguyentatthang@gmail.com'),
('CD183096', 'Lâm Trung Hiếu', 'LTMT4-K10', 'Hà Nội', '0498727637', 'lamtrunghieu@gmail.com'),
('CD183102', 'Nguyễn Đức Tuyên', 'LTMT4-K10', 'Hà Nội', '0498727639', 'nguyenductuyen@gmail.com'),
('CD183106', 'Nguyễn Huy Hoàng', 'LTMT4-K10', 'Hà Nội', '0498727637', 'nguyenhuyhoang@gmail.com'),
('CD183118', 'Vũ Minh Hiếu', 'LTMT4-K10', 'Hà Nội', '0498727637', 'vuminhhieu@gmail.com'),
('CD183119', 'Phạm Minh Quý', 'LTMT4-K10', 'Hà Nội', '0498727639', 'phamminhquy@gmail.com'),
('CD183136', 'Vi Thành Huy', 'LTMT4-K10', 'Hà Nội', '0498727637', 'vithanhhuy@gmail.com'),
('CD183139', 'Đinh Trường Giang', 'LTMT4-K10', 'Hà Nội', '0498727637', 'dinhtruonggian@gmail.com'),
('CD183194', 'Phạm Trần Quang Hà', 'LTMT4-K10', 'Hà Nội', '0498727637', 'phamtranquangha@gmail.com'),
('CD188736', 'Trịnh Quang Sang', 'LTMT3-K10', 'Quảng Trị', '0399372635', 'quangsang@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bang_diem`
--
ALTER TABLE `bang_diem`
  ADD PRIMARY KEY (`bang_diem_id`),
  ADD KEY `ma_mon` (`ma_mon`),
  ADD KEY `ma_lop` (`ma_lop`),
  ADD KEY `hoc_ki_id` (`hoc_ki_id`);

--
-- Indexes for table `chi_tiet_bang_diem`
--
ALTER TABLE `chi_tiet_bang_diem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ct_diem_id` (`ct_diem_id`),
  ADD KEY `ma_sinh_vien` (`ma_sinh_vien`);

--
-- Indexes for table `chuyen_nganh`
--
ALTER TABLE `chuyen_nganh`
  ADD PRIMARY KEY (`ma_nganh`),
  ADD KEY `ma_khoa` (`ma_khoa`);

--
-- Indexes for table `hoc_ki`
--
ALTER TABLE `hoc_ki`
  ADD PRIMARY KEY (`hoc_ki`),
  ADD KEY `khoa_hoc` (`khoa_hoc`);

--
-- Indexes for table `hoc_phi`
--
ALTER TABLE `hoc_phi`
  ADD PRIMARY KEY (`hoc_phi_id`),
  ADD KEY `ma_sinh_vien` (`ma_sinh_vien`),
  ADD KEY `hoc_ki` (`hoc_ki`);

--
-- Indexes for table `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`ma_khoa`);

--
-- Indexes for table `khoa_hoc`
--
ALTER TABLE `khoa_hoc`
  ADD PRIMARY KEY (`khoa_hoc_id`),
  ADD UNIQUE KEY `ma_khoa_hoc` (`ma_khoa_hoc`);

--
-- Indexes for table `lich_hoc`
--
ALTER TABLE `lich_hoc`
  ADD PRIMARY KEY (`lich_id`),
  ADD KEY `ma_mon` (`ma_mon`),
  ADD KEY `ma_lop` (`ma_lop`),
  ADD KEY `phong_hoc` (`phong_hoc`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`lop_id`),
  ADD UNIQUE KEY `ma_lop` (`ma_lop`),
  ADD KEY `ma_nganh` (`ma_nganh`),
  ADD KEY `khoa_hoc` (`khoa_hoc`);

--
-- Indexes for table `mon_hoc`
--
ALTER TABLE `mon_hoc`
  ADD PRIMARY KEY (`mon_hoc_id`),
  ADD UNIQUE KEY `ma_mon` (`ma_mon`),
  ADD KEY `ma_nganh` (`ma_nganh`),
  ADD KEY `hoc_ki` (`hoc_ki`);

--
-- Indexes for table `phong_hoc`
--
ALTER TABLE `phong_hoc`
  ADD PRIMARY KEY (`ma_phong`);

--
-- Indexes for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`username`),
  ADD KEY `ma_sinh_vien` (`ma_sinh_vien`);

--
-- Indexes for table `thong_tin_sinh_vien`
--
ALTER TABLE `thong_tin_sinh_vien`
  ADD PRIMARY KEY (`ma_sinh_vien`),
  ADD KEY `ma_lop` (`ma_lop`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bang_diem`
--
ALTER TABLE `bang_diem`
  MODIFY `bang_diem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chi_tiet_bang_diem`
--
ALTER TABLE `chi_tiet_bang_diem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hoc_phi`
--
ALTER TABLE `hoc_phi`
  MODIFY `hoc_phi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khoa_hoc`
--
ALTER TABLE `khoa_hoc`
  MODIFY `khoa_hoc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lich_hoc`
--
ALTER TABLE `lich_hoc`
  MODIFY `lich_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lop`
--
ALTER TABLE `lop`
  MODIFY `lop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `mon_hoc`
--
ALTER TABLE `mon_hoc`
  MODIFY `mon_hoc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bang_diem`
--
ALTER TABLE `bang_diem`
  ADD CONSTRAINT `bang_diem_ibfk_1` FOREIGN KEY (`ma_mon`) REFERENCES `mon_hoc` (`ma_mon`);

--
-- Constraints for table `chi_tiet_bang_diem`
--
ALTER TABLE `chi_tiet_bang_diem`
  ADD CONSTRAINT `chi_tiet_bang_diem_ibfk_1` FOREIGN KEY (`ct_diem_id`) REFERENCES `bang_diem` (`bang_diem_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `chi_tiet_bang_diem_ibfk_2` FOREIGN KEY (`ma_sinh_vien`) REFERENCES `thong_tin_sinh_vien` (`ma_sinh_vien`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `chuyen_nganh`
--
ALTER TABLE `chuyen_nganh`
  ADD CONSTRAINT `chuyen_nganh_ibfk_1` FOREIGN KEY (`ma_khoa`) REFERENCES `khoa` (`ma_khoa`) ON DELETE NO ACTION;

--
-- Constraints for table `hoc_ki`
--
ALTER TABLE `hoc_ki`
  ADD CONSTRAINT `hoc_ki_ibfk_1` FOREIGN KEY (`khoa_hoc`) REFERENCES `khoa_hoc` (`ma_khoa_hoc`) ON DELETE NO ACTION;

--
-- Constraints for table `hoc_phi`
--
ALTER TABLE `hoc_phi`
  ADD CONSTRAINT `hoc_phi_ibfk_1` FOREIGN KEY (`ma_sinh_vien`) REFERENCES `thong_tin_sinh_vien` (`ma_sinh_vien`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `hoc_phi_ibfk_2` FOREIGN KEY (`hoc_ki`) REFERENCES `hoc_ki` (`hoc_ki`) ON DELETE NO ACTION;

--
-- Constraints for table `lich_hoc`
--
ALTER TABLE `lich_hoc`
  ADD CONSTRAINT `lich_hoc_ibfk_1` FOREIGN KEY (`ma_mon`) REFERENCES `mon_hoc` (`ma_mon`) ON DELETE NO ACTION,
  ADD CONSTRAINT `lich_hoc_ibfk_2` FOREIGN KEY (`ma_lop`) REFERENCES `lop` (`ma_lop`) ON DELETE NO ACTION,
  ADD CONSTRAINT `lich_hoc_ibfk_3` FOREIGN KEY (`phong_hoc`) REFERENCES `phong_hoc` (`ma_phong`) ON DELETE NO ACTION;

--
-- Constraints for table `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `lop_ibfk_5` FOREIGN KEY (`ma_nganh`) REFERENCES `chuyen_nganh` (`ma_nganh`) ON DELETE NO ACTION;

--
-- Constraints for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD CONSTRAINT `tai_khoan_ibfk_1` FOREIGN KEY (`ma_sinh_vien`) REFERENCES `thong_tin_sinh_vien` (`ma_sinh_vien`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `thong_tin_sinh_vien`
--
ALTER TABLE `thong_tin_sinh_vien`
  ADD CONSTRAINT `thong_tin_sinh_vien_ibfk_1` FOREIGN KEY (`ma_lop`) REFERENCES `lop` (`ma_lop`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
