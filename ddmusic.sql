-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2021 at 09:35 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `albumTitle` varchar(255) NOT NULL,
  `path_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `albumTitle`, `path_img`) VALUES
(1, 'Fearless', 'https://avatar-nct.nixcdn.com/song/2017/10/20/a/9/1/8/1508472625226.jpg'),
(2, 'Mãi Yêu', 'https://avatar-nct.nixcdn.com/singer/avatar/2019/10/02/2/c/8/c/1569987761461.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `album_artist`
--

CREATE TABLE `album_artist` (
  `album_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album_artist`
--

INSERT INTO `album_artist` (`album_id`, `artist_id`) VALUES
(1, 3),
(2, 60);

-- --------------------------------------------------------

--
-- Table structure for table `album_genre`
--

CREATE TABLE `album_genre` (
  `album_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album_genre`
--

INSERT INTO `album_genre` (`album_id`, `genre_id`) VALUES
(1, 1),
(1, 3),
(2, 11),
(2, 12);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `artistName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `artistName`) VALUES
(1, 'Frank Sinatra'),
(2, 'Diana Krall'),
(3, 'TaylorSwift'),
(4, 'Monstercat'),
(5, 'Imagine Dragons'),
(6, 'Ariana Grande'),
(7, 'Luis Fonsi'),
(8, 'Daddy Yankee'),
(9, 'Camila Cabello '),
(10, 'Young Thug'),
(11, 'Shawn Mendes'),
(12, 'EdSheeran'),
(13, 'Justin Bieber'),
(14, 'Selena Gomez'),
(15, 'Charlie Puth'),
(16, 'The Weeknd'),
(17, 'Billie Eilish'),
(18, 'UI'),
(19, 'Itzy'),
(20, 'iKON'),
(21, 'Sakura Miko'),
(22, 'YOASOBI'),
(23, 'Phan Mạnh Quỳnh'),
(24, 'Bùi Lan Hương'),
(25, 'Trương Triết Hạn'),
(26, 'Cung Tuấn'),
(27, 'Lưu Vũ Ninh'),
(28, 'Hồ Hạ'),
(29, 'Hứa Lam Tâm'),
(30, 'Doãn Tích Miên'),
(31, 'Lệ Cách'),
(32, 'Ngải Thần'),
(33, 'Cẩm Ly'),
(34, 'Tạ Minh Tâm'),
(35, 'Trần Nhung'),
(36, 'Lương Gia Huy'),
(37, 'Bích Phương'),
(38, 'Noo Phước Thịnh'),
(39, 'Hoàng Dũng'),
(40, 'Hứa Kim Tuyền'),
(41, 'Hoàng Duyên'),
(42, 'AMee'),
(43, 'Ricky Star'),
(44, 'Lăng LD'),
(45, 'V.A'),
(46, 'MIN'),
(47, 'Phương Mỹ Chi'),
(48, 'Thùy Trang'),
(49, 'Khánh Minh'),
(50, 'Quang Lê'),
(51, 'Khánh Bình'),
(52, 'Ngọc Hân'),
(53, 'Hiền Thục'),
(54, 'Yến Tatoo'),
(55, 'Đoàn Thùy Trang'),
(56, 'Chillies'),
(57, 'Bức Tường'),
(58, 'Xuân Mai'),
(59, 'Tonny Việt'),
(60, 'Mỹ Tâm');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `content`, `user_id`, `song_id`, `created_at`) VALUES
(1, 'bài hát rất hay', 4, 7, '2021-04-20 03:28:35'),
(2, 'comment dạo', 2, 8, '2021-04-20 03:28:35'),
(3, 'rất thích bài này ', 4, 29, '2021-04-20 03:30:13'),
(4, 'bài hát abc123', 3, 10, '2021-04-20 03:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_list`
--

CREATE TABLE `favorite_list` (
  `user_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favorite_list`
--

INSERT INTO `favorite_list` (`user_id`, `song_id`) VALUES
(1, 45),
(1, 27),
(1, 49),
(1, 8),
(1, 18),
(2, 56),
(2, 32),
(2, 45),
(2, 6),
(2, 30),
(2, 58),
(2, 3),
(3, 41),
(3, 11),
(4, 7),
(4, 66);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `genreTitle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `genreTitle`) VALUES
(1, 'Nhạc Âu Mỹ'),
(2, 'Blues / Jazz'),
(3, 'Country'),
(4, 'Electronic / Dance'),
(5, 'Pop'),
(6, 'R&B / HipHop / Rap'),
(7, 'Rock'),
(8, 'Nhạc Hàn'),
(9, 'Nhạc Không Lời'),
(10, 'Nhạc Trung'),
(11, 'Nhạc Việt'),
(12, 'Nhạc Trẻ'),
(13, 'Cách Mạng'),
(14, 'Remix Việt'),
(15, 'Rock Việt'),
(16, 'Trữ Tình'),
(17, 'Nhạc Phim'),
(18, 'Nhạc Nhật'),
(19, 'Nhạc Thiếu Nhi');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `playlistName` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `playlistName`, `created_at`) VALUES
(1, 'nghe vào thứ 2', '2021-04-20 02:52:26'),
(2, 'nhạc trung', '2021-04-20 02:55:37'),
(3, 'Tập Trung', '2021-04-20 03:10:12'),
(4, 'Buồn', '2021-04-20 03:10:12'),
(5, 'Vui', '2021-04-20 03:10:27'),
(6, 'bla bla', '2021-04-20 03:15:48'),
(7, 'cutee', '2021-04-20 03:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_song`
--

CREATE TABLE `playlist_song` (
  `playlist_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlist_song`
--

INSERT INTO `playlist_song` (`playlist_id`, `song_id`) VALUES
(1, 8),
(1, 18),
(1, 9),
(1, 10),
(1, 11),
(1, 6),
(2, 33),
(2, 31),
(2, 34),
(2, 29),
(2, 35),
(1, 14),
(4, 32),
(4, 42),
(4, 35),
(4, 25),
(4, 27),
(3, 18),
(3, 56),
(3, 10),
(3, 6),
(3, 58),
(3, 12),
(3, 11),
(3, 13),
(5, 58),
(5, 7),
(5, 36),
(5, 61),
(5, 65),
(5, 55),
(6, 19),
(6, 56),
(6, 66),
(6, 15),
(7, 61),
(7, 62),
(7, 48),
(7, 47);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `songTitle` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  `path_img` varchar(255) DEFAULT NULL,
  `total_view` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `songTitle`, `path`, `album_id`, `path_img`, `total_view`) VALUES
(1, 'My Way', 'https://nnchillmp3.000webhostapp.com/1.MyWay-FrankSinatra.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2017/02/24/5/1/6/4/1487920839119.jpg', 12),
(2, 'The Look Of Love', 'https://nnchillmp3.000webhostapp.com/2.TheLookOfLove-DianaKrall.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2016/01/25/4/1/1/7/1453716232358.jpg', 178),
(3, 'Fifteen', 'https://nnchillmp3.000webhostapp.com/3.Fifteen-TaylorSwift.mp3', 1, 'https://avatar-ex-swe.nixcdn.com/playlist/2018/12/13/0/0/0/e/1544680877237.jpg', 178),
(4, 'Love Story', 'https://nnchillmp3.000webhostapp.com/4.LoveStory-TaylorSwift-5046622.mp3', 1, 'https://avatar-ex-swe.nixcdn.com/playlist/2020/04/01/8/7/9/f/1585714566469.jpg', 15000),
(5, 'Free My World', 'https://nnchillmp3.000webhostapp.com/5.FreeMyWorld-Monstercat-6984131.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2021/03/24/0/5/7/d/1616578247404.jpg', 15000),
(6, 'Monster', 'https://nnchillmp3.000webhostapp.com/6.Monster-ImagineDragons-4224533.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2016/12/22/5/a/d/7/1482395067453.jpg', 15000),
(7, '7 Rings', 'https://nnchillmp3.000webhostapp.com/7.7Rings-ArianaGrande-5880797.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2019/02/01/8/c/2/0/1549006306904.jpg', 15000),
(8, 'Blank Space', 'https://nnchillmp3.000webhostapp.com/8.BlankSpace-TaylorSwift-6077900.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2017/09/12/b/f/0/6/1505189922247.jpg', 15000),
(9, 'Despacito', 'https://nnchillmp3.000webhostapp.com/9.Despacito-LuisFonsiDaddyYankee-4751977.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2017/08/30/1/3/d/b/1504057573252.jpg', 15000),
(10, 'Havana', 'https://nnchillmp3.000webhostapp.com/10.Havana-CamilaCabelloYoungThug-5817730.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2017/08/07/c/b/1/e/1502075660969.jpg', 15000),
(11, 'Look What You Made Me Do', 'https://nnchillmp3.000webhostapp.com/11.LookWhatYouMadeMeDo-TaylorSwift-5809928.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2017/08/29/d/f/c/c/1503988925454.jpg', 15000),
(12, 'Senorita', 'https://nnchillmp3.000webhostapp.com/12.Seorita-ShawnMendesCamilaCabello-6007813.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2019/06/21/6/1/8/3/1561114102335.jpg', 15000),
(13, 'Shape Of You', 'https://nnchillmp3.000webhostapp.com/13.ShapeOfYou-EdSheeran-6443488.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2018/01/25/5/2/d/e/1516891769034.jpg', 15000),
(14, 'Sorry', 'https://nnchillmp3.000webhostapp.com/14.Sorry-JustinBieber-4155986.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2018/04/23/7/f/b/e/1524478215399.jpg', 15000),
(15, 'We Dont Talk Anymore', 'https://nnchillmp3.000webhostapp.com/15.WeDonTTalkAnymoreFeatSelenaGomez-CharliePuth-6426101.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2017/09/27/a/9/e/f/1506480482657.jpg', 15000),
(16, 'In Your Eyes', 'https://nnchillmp3.000webhostapp.com/16.InYourEyes-TheWeeknd-6238884.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2020/03/20/b/2/5/6/1584688218673.jpg', 15000),
(17, 'Save Your Tears', 'https://nnchillmp3.000webhostapp.com/17.SaveYourTears-TheWeeknd-6238885.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2021/01/05/0/6/1/b/1609842083948.jpg', 15000),
(18, 'Bad Guy', 'https://nnchillmp3.000webhostapp.com/18.BadGuy-BillieEilish-5936021.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2019/03/28/1/6/e/9/1553790554221.jpg', 15000),
(19, 'Therefore I Am', 'https://nnchillmp3.000webhostapp.com/19.ThereforeIAm-BillieEilish-6813344.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2020/11/14/f/0/b/1/1605359923096.jpg', 15000),
(20, 'Flu', 'https://nnchillmp3.000webhostapp.com/20.Flu-IU-6984997.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2021/03/25/0/c/b/4/1616664273324.jpg', 15000),
(21, 'Trust Me', 'https://nnchillmp3.000webhostapp.com/21.TrustMe-Itzy-6976953.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2021/03/19/e/1/4/b/1616145107612.jpg', 15000),
(22, 'Why Why Why', 'https://nnchillmp3.000webhostapp.com/22.WhyWhyWhy-iKON-6953352.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2021/02/27/c/7/7/d/1614414200153.jpg', 178),
(23, 'Sakura Kaze', 'https://nnchillmp3.000webhostapp.com/23.SakuraKaze-SakuraMiko.mp3', NULL, 'https://stc-id.nixcdn.com/v11/images/avatar_default.jpg', 178),
(24, 'Sangenshoku', 'https://nnchillmp3.000webhostapp.com/24.Sangenshoku-YOASOBI.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2019/12/23/1/5/0/5/1577070200907.jpg', 178),
(25, 'Có Chàng Trai Viết Lên Cây', 'https://nnchillmp3.000webhostapp.com/25.CoChangTraiVietLenCayMatBiecOst-PhanManhQuynh.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2019/12/23/1/5/0/5/1577070200907.jpg', 178),
(26, 'Đóa Bạch Trà', 'https://nnchillmp3.000webhostapp.com/26.DoaBachTra-BuiLanHuong.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2021/03/17/a/3/7/d/1615966536532.jpg', 178),
(27, 'Ngày Chưa Giông Bão', 'https://nnchillmp3.000webhostapp.com/27.NgayChuaGiongBaoNguoiBatTuOst-BuiLanHuong.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2018/10/17/d/0/b/7/1539761564806.jpg', 178),
(28, 'Thiên Nhai Khách', 'https://nnchillmp3.000webhostapp.com/28.ThienNhaiKhachSonHaLenhOst-TruongTrietHan-CungTuan.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2021/02/26/5/7/0/1/1614326356952.jpg', 178),
(29, 'Thiên Vấn', 'https://nnchillmp3.000webhostapp.com/29.ThienVanSonHaLenhOst-LuuVuNinh.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2021/02/26/5/7/0/1/1614326356952.jpg', 178),
(30, 'Từ Đó', 'https://nnchillmp3.000webhostapp.com/30.TuDoMatBiecOst-PhanManhQuynh.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2019/12/27/a/b/e/6/1577418314295.jpg', 178),
(31, 'Vô Đề', 'https://nnchillmp3.000webhostapp.com/31.VoDeSonHaLenhThienNhaiKhachOST-HoHa.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2021/02/26/5/7/0/1/1614326356952.jpg', 178),
(32, 'Hồng Mã', 'https://nnchillmp3.000webhostapp.com/32.HongMa-HuaLamTamXuLanXin.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2021/04/04/2/7/7/c/1617552929530.jpg', 178),
(33, 'Ta Tên Trường An, Chàng Tên Cố Lý', 'https://nnchillmp3.000webhostapp.com/33.TaTenTruongAnChangTenCoLy-DoanTichMienTieuDienAmNhacXa.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2021/04/14/c/3/3/b/1618373189898.jpg', 178),
(34, 'Thẩm Viên Ngoại', 'https://nnchillmp3.000webhostapp.com/34.ThamVienNgoai-AYueYueLeCach.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2021/04/14/c/3/3/b/1618371787716.jpg', 178),
(35, 'Thời Không Sai Lệch', 'https://nnchillmp3.000webhostapp.com/35.ThoiKhongSaiLech-NgaiThan.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2021/01/17/4/1/0/a/1610872364691.jpg', 178),
(36, 'Cô Gái Mở Đường', 'https://nnchillmp3.000webhostapp.com/36.CoGaiMoDuong-CamLy.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2020/08/18/e/4/e/c/1597723219000.jpg', 178),
(37, 'Đất Nước Chọn Niềm Vui', 'https://nnchillmp3.000webhostapp.com/37.DatNuocTronNiemVui-TaMinhTam.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2016/01/25/4/1/1/7/1453717053143.jpg', 178),
(38, 'Tiếng Đàn Ta Lư', 'https://nnchillmp3.000webhostapp.com/38.TiengDanTaLu-TrangNhung.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2014/06/12/6/b/5/0/1402539121074.jpg', 178),
(39, 'Tình Ca Tây Bắc', 'https://nnchillmp3.000webhostapp.com/39.TinhCaTayBac-TaMinhTam.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2014/06/30/8/4/5/7/1404116510830.jpg', 178),
(40, 'Trường Sơn Đông Trường Sơn Tây', 'https://nnchillmp3.000webhostapp.com/40.TruongSonDongTruongSonTay-LuongGiaHuy.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2017/06/27/b/6/1/5/1498547522075.jpg', 178),
(41, 'Bùa Yêu', 'https://nnchillmp3.000webhostapp.com/41.BuaYeu-BichPhuong.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2018/05/12/e/8/6/f/1526060337257.jpg', 178),
(42, 'Chờ Ngày Mưa Tan', 'https://nnchillmp3.000webhostapp.com/42.ChoNgayMuaTan-NooPhuocThinhfeatTonnyViet.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2020/07/28/2/7/d/2/1595919414743.jpg', 178),
(43, 'Đi Đu Đưa Đi', 'https://nnchillmp3.000webhostapp.com/43.DiDuDuaDi-BichPhuong.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2019/08/28/7/4/3/a/1566982655403.jpg', 178),
(44, 'Mãi Mãi Bên Nhau', 'https://nnchillmp3.000webhostapp.com/44.MaiMaiBenNhau-NooPhuocThinh.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2019/09/11/6/d/c/4/1568184053333.jpg', 178),
(45, 'Nàng Thơ', 'https://nnchillmp3.000webhostapp.com/45.NangTho-HoangDung.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2020/07/31/c/5/8/9/1596188259603.jpg', 178),
(46, 'Sài Gòn Đau Lòng Quá', 'https://nnchillmp3.000webhostapp.com/46.SaiGonDauLongQua-HuaKimTuyenHoangDuyen.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2021/03/27/d/2/9/1/1616859493571.jpg', 178),
(47, 'Tình Bạn Diệu Kỳ', 'https://nnchillmp3.000webhostapp.com/47.TinhBanDieuKy-AMeeRickyStarLangLD.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2021/03/01/7/7/d/0/1614586501997.jpg', 178),
(48, 'Tình Yêu Khủng Long', 'https://nnchillmp3.000webhostapp.com/48.TinhYeuKhungLong.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2020/04/10/8/0/f/9/1586508110661.jpg', 178),
(49, 'Trên Tình Bạn Dưới Tình Yêu', 'https://nnchillmp3.000webhostapp.com/49.TrenTinhBanDuoiTinhYeu-MIN.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2021/02/05/0/8/e/4/1612507060090.jpg', 178),
(50, 'Bông Bưởi Hoa Cau', 'https://nnchillmp3.000webhostapp.com/50.BongBuoiHoaCau-PhuongMyChiThuyTrang.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2019/09/13/d/3/1/3/1568368816060.jpg', 178),
(51, 'Đời Tôi Cô Đơn', 'https://nnchillmp3.000webhostapp.com/51.DoiToiCoDon-KhanhMinh.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2018/02/26/e/3/4/f/1519631515206.jpg', 178),
(52, 'Giọt Lệ Đài Trang', 'https://nnchillmp3.000webhostapp.com/52.GiotLeDaiTrang-QuangLe.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2017/02/06/3/4/7/f/1486358917132.jpg', 178),
(53, 'Phận Bạc', 'https://nnchillmp3.000webhostapp.com/53.PhanBac-KhanhBinhNgocHan.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2019/03/06/1/9/e/2/1551842355087.jpg', 178),
(54, 'Sắc Màu Quê Hương', 'https://nnchillmp3.000webhostapp.com/54.SacMauQueHuong-HienThucPhuongMyChi.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2021/01/25/b/2/c/6/1611547513754.jpg', 178),
(55, 'Tết Sum Vầy', 'https://nnchillmp3.000webhostapp.com/55.TetSumVay-PhuongMyChiTamKe.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2021/02/09/9/4/3/b/1612852165473.jpg', 178),
(56, 'Cứ Thế Rời Xa (Remix)', 'https://nnchillmp3.000webhostapp.com/56.CuTheRoiXaKayhinRemix-YenTatoo.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2016/07/21/b/0/c/c/1469090372674.jpg', 178),
(57, 'Tình Yêu Màu Nắng (Remix)', 'https://nnchillmp3.000webhostapp.com/57.TinhYeuMauNangLongNhatRemix-DoanThuyTrangBigDaddy.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2018/10/16/e/7/6/4/1539697021389.jpg', 178),
(58, 'Có Em Đời Bỗng Vui', 'https://nnchillmp3.000webhostapp.com/58.CoEmDoiBongVui-Chillies.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2020/02/07/2/0/7/2/1581043804283.jpg', 178),
(59, 'Con Đường Không Tên', 'https://nnchillmp3.000webhostapp.com/59.ConDuongKhongTen-BucTuong.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/song/2020/11/24/6/8/8/a/1606187842165.jpg', 178),
(60, 'Đám Cưới Chuột', 'https://nnchillmp3.000webhostapp.com/60.Damcuoichuot-GatTanDay.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2013/221_Gat_Tan_Day_A.jpg', 178),
(61, 'Cháu Yêu Bà', 'https://nnchillmp3.000webhostapp.com/61.BaOiBa-V.A.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2016/01/25/4/1/1/7/1453717713927.jpg', 178),
(62, 'Chị Ong Nâu Nâu', 'https://nnchillmp3.000webhostapp.com/62.Chiongnaunau-XuanMai_5tvg.mp3', NULL, 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2016/01/25/4/1/1/7/1453717713927.jpg', 178),
(63, 'Breathe', 'https://nnchillmp3.000webhostapp.com/63.Breathe-TaylorSwiftColbieCaillat.mp3', 1, 'https://avatar-nct.nixcdn.com/song/2017/10/20/a/9/1/8/1508472625226.jpg', 178),
(64, 'Fearless', 'https://nnchillmp3.000webhostapp.com/64.Fearless-TaylorSwift.mp3', 1, 'https://avatar-nct.nixcdn.com/song/2017/10/20/a/9/1/8/1508472625226.jpg', 178),
(65, 'The Best Day', 'https://nnchillmp3.000webhostapp.com/65.TheBestDay-TaylorSwift.mp3', 1, 'https://avatar-nct.nixcdn.com/song/2017/10/20/a/9/1/8/1508472625226.jpg', 178),
(66, 'White Horse', 'https://nnchillmp3.000webhostapp.com/66.WhiteHorse-TaylorSwift.mp3', 1, 'https://avatar-nct.nixcdn.com/song/2017/10/20/a/9/1/8/1508472625226.jpg', 178),
(67, 'Em Của Tôi', 'https://nnchillmp3.000webhostapp.com/67.EmCuaToi-MyTam.mp3', 2, 'https://avatar-nct.nixcdn.com/singer/avatar/2019/10/02/2/c/8/c/1569987761461.jpg', 178),
(68, 'Hai Mươi', 'https://nnchillmp3.000webhostapp.com/68.HaiMuoi-MyTam_p3.mp3', 2, 'https://avatar-nct.nixcdn.com/singer/avatar/2019/10/02/2/c/8/c/1569987761461.jpg', 178),
(69, 'Mãi Yêu', 'https://nnchillmp3.000webhostapp.com/69.MaiYeu-MyTam_ahc.mp3', 2, 'https://avatar-nct.nixcdn.com/singer/avatar/2019/10/02/2/c/8/c/1569987761461.jpg', 178),
(70, 'Nhé Anh', 'https://nnchillmp3.000webhostapp.com/70.NheAnh-MyTam_aj9.mp3', 2, 'https://avatar-nct.nixcdn.com/singer/avatar/2019/10/02/2/c/8/c/1569987761461.jpg', 178),
(71, 'Sóng', 'https://nnchillmp3.000webhostapp.com/71.Song-MyTam_nx.mp3', 2, 'https://avatar-nct.nixcdn.com/singer/avatar/2019/10/02/2/c/8/c/1569987761461.jpg', 178),
(72, 'Tình Mơ', 'https://nnchillmp3.000webhostapp.com/72.TinhMo-MyTam_ny.mp3', 2, 'https://avatar-nct.nixcdn.com/singer/avatar/2019/10/02/2/c/8/c/1569987761461.jpg', 178),
(73, 'Yêu Dại Khờ', 'https://nnchillmp3.000webhostapp.com/73.YeuDaiKho-MyTam_p2.mp3', 2, 'https://avatar-nct.nixcdn.com/singer/avatar/2019/10/02/2/c/8/c/1569987761461.jpg', 178);

-- --------------------------------------------------------

--
-- Table structure for table `song_artist`
--

CREATE TABLE `song_artist` (
  `song_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `song_artist`
--

INSERT INTO `song_artist` (`song_id`, `artist_id`) VALUES
(7, 6),
(18, 17),
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 4),
(6, 5),
(8, 3),
(9, 7),
(9, 8),
(10, 9),
(10, 10),
(11, 3),
(12, 9),
(12, 11),
(13, 12),
(14, 13),
(15, 15),
(16, 16),
(17, 16),
(19, 17),
(20, 18),
(21, 19),
(22, 20),
(23, 21),
(24, 22),
(25, 23),
(26, 24),
(27, 24),
(28, 25),
(28, 26),
(30, 23),
(31, 28),
(29, 27),
(32, 29),
(33, 30),
(34, 31),
(36, 33),
(37, 34),
(38, 35),
(39, 34),
(40, 36),
(41, 37),
(42, 38),
(42, 59),
(43, 37),
(44, 38),
(45, 39),
(46, 40),
(46, 41),
(47, 42),
(47, 43),
(47, 44),
(48, 45),
(49, 46),
(50, 47),
(50, 48),
(51, 49),
(52, 50),
(53, 51),
(53, 52),
(54, 53),
(54, 47),
(55, 47),
(56, 54),
(57, 55),
(58, 56),
(59, 57),
(60, 45),
(61, 58),
(62, 58);

-- --------------------------------------------------------

--
-- Table structure for table `song_genre`
--

CREATE TABLE `song_genre` (
  `song_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `song_genre`
--

INSERT INTO `song_genre` (`song_id`, `genre_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 3),
(4, 1),
(4, 3),
(5, 1),
(5, 4),
(6, 1),
(6, 4),
(7, 1),
(7, 5),
(8, 1),
(8, 5),
(9, 1),
(9, 5),
(10, 1),
(10, 5),
(11, 1),
(11, 5),
(12, 1),
(12, 5),
(13, 1),
(13, 5),
(14, 1),
(14, 5),
(15, 1),
(15, 5),
(16, 1),
(16, 6),
(17, 1),
(17, 6),
(18, 1),
(18, 7),
(19, 1),
(19, 7),
(20, 8),
(21, 8),
(22, 8),
(23, 18),
(24, 18),
(25, 11),
(25, 17),
(26, 11),
(26, 17),
(27, 11),
(27, 17),
(28, 10),
(28, 17),
(29, 10),
(29, 17),
(30, 11),
(30, 17),
(31, 10),
(31, 17),
(32, 10),
(33, 10),
(34, 10),
(35, 10),
(36, 11),
(36, 13),
(37, 11),
(37, 13),
(38, 11),
(38, 13),
(39, 11),
(39, 13),
(40, 11),
(40, 13),
(41, 11),
(41, 12),
(42, 11),
(42, 12),
(43, 11),
(43, 12),
(44, 11),
(44, 12),
(45, 11),
(45, 12),
(46, 11),
(46, 12),
(47, 11),
(47, 12),
(48, 11),
(48, 12),
(49, 11),
(49, 12),
(50, 11),
(50, 16),
(51, 11),
(51, 16),
(52, 11),
(52, 16),
(53, 11),
(53, 16),
(54, 11),
(54, 16),
(55, 11),
(55, 16),
(56, 11),
(56, 14),
(56, 12),
(57, 11),
(57, 12),
(57, 14),
(58, 11),
(58, 15),
(59, 11),
(59, 7),
(60, 11),
(61, 19),
(62, 19),
(60, 15);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `displayName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `displayName`, `email`, `phone`) VALUES
(1, 'daotac@123', '123456', 'Đạo Tặc', 'abc123@gmail.com', '0123456789'),
(2, 'nhung@hobao', '123', 'Hổ Báo', 'nhungbeo@gmail.com', '0333398989'),
(3, 'thaolan123', '123', 'Thảo Lan', 'lan111@gmail.com', '0999283661'),
(4, 'thuycute', '123', 'Thủy Thi', 'thuy@gmail.com', '012456789');

-- --------------------------------------------------------

--
-- Table structure for table `user_playlist`
--

CREATE TABLE `user_playlist` (
  `user_id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_playlist`
--

INSERT INTO `user_playlist` (`user_id`, `playlist_id`) VALUES
(1, 1),
(2, 3),
(3, 5),
(3, 4),
(3, 2),
(4, 6),
(4, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album_artist`
--
ALTER TABLE `album_artist`
  ADD KEY `album_id` (`album_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `album_genre`
--
ALTER TABLE `album_genre`
  ADD KEY `album_id` (`album_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `song_id` (`song_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `favorite_list`
--
ALTER TABLE `favorite_list`
  ADD KEY `song_id` (`song_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist_song`
--
ALTER TABLE `playlist_song`
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `song_id` (`song_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_id` (`album_id`);

--
-- Indexes for table `song_artist`
--
ALTER TABLE `song_artist`
  ADD KEY `artist_id` (`artist_id`),
  ADD KEY `song_id` (`song_id`);

--
-- Indexes for table `song_genre`
--
ALTER TABLE `song_genre`
  ADD KEY `genre_id` (`genre_id`),
  ADD KEY `song_id` (`song_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_playlist`
--
ALTER TABLE `user_playlist`
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album_artist`
--
ALTER TABLE `album_artist`
  ADD CONSTRAINT `album_artist_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`),
  ADD CONSTRAINT `album_artist_ibfk_2` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`);

--
-- Constraints for table `album_genre`
--
ALTER TABLE `album_genre`
  ADD CONSTRAINT `album_genre_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`),
  ADD CONSTRAINT `album_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `favorite_list`
--
ALTER TABLE `favorite_list`
  ADD CONSTRAINT `favorite_list_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`),
  ADD CONSTRAINT `favorite_list_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `playlist_song`
--
ALTER TABLE `playlist_song`
  ADD CONSTRAINT `playlist_song_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`id`),
  ADD CONSTRAINT `playlist_song_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`);

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`);

--
-- Constraints for table `song_artist`
--
ALTER TABLE `song_artist`
  ADD CONSTRAINT `song_artist_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`),
  ADD CONSTRAINT `song_artist_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`);

--
-- Constraints for table `song_genre`
--
ALTER TABLE `song_genre`
  ADD CONSTRAINT `song_genre_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`),
  ADD CONSTRAINT `song_genre_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`);

--
-- Constraints for table `user_playlist`
--
ALTER TABLE `user_playlist`
  ADD CONSTRAINT `user_playlist_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`id`),
  ADD CONSTRAINT `user_playlist_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
