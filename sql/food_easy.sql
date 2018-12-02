-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 02, 2018 at 12:49 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.0.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_easy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `passwoed` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `user_name`, `passwoed`) VALUES
(1, 'oil', 'abc', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tb_food`
--

CREATE TABLE `tb_food` (
  `id_food` int(11) NOT NULL,
  `name_food` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_shop` int(11) NOT NULL,
  `img_food` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price_food_m` double NOT NULL,
  `price_food_l` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_food`
--

INSERT INTO `tb_food` (`id_food`, `name_food`, `id_shop`, `img_food`, `price_food_m`, `price_food_l`) VALUES
(1, 'ก๋วยเตี๋ยวไก่ตุ๋น', 6, 'kurtelkai-tun.jpg', 35, 40),
(2, 'ก่วยเตี๋ยวไก่ใส่ไข่ต้ม', 6, 'kurtelkai-kaitom.jpg', 40, 50),
(3, 'ก๋วยจั๊บญวณ', 8, 'kuryjab-yrun.JPG', 35, 40),
(4, 'ก๋วยจั๊บน้ำใส', 8, 'kuryjub-namsai.JPG', 35, 40),
(5, 'ก๋วยจั๊บน้ำข้น', 8, 'kuryjub.JPG', 35, 40),
(6, 'เส้นเล็กหมูน้ำตก', 11, 'lakmuu.JPG', 15, 20),
(7, 'เส้นเล็กเนื้อน้ำตก', 13, 'laktumyam.JPG', 35, 40),
(8, 'บะหมี่เกี๊ยวหมูแดง(แห้ง)', 9, 'bahmee-muudan.JPG', 35, 40),
(9, 'มาม่าต้มย้ำทะเลเดือด', 9, 'mama-tumyamkun.JPG', 35, 40),
(10, 'บะหมี่เหลืองต้มยำหมูเด้ง', 9, 'mama-tumyammuu.JPG', 35, 40),
(11, 'ขนมจีนใบชะพลู', 12, 'kanomjeen-baichapoo.jpg', 30, 40),
(12, 'ขนมจีนแกงเขียวหวาน', 12, 'kanomjeen-kangkhaewwaan.jpg', 30, 40),
(13, 'ขนมจีนแกงไตปลา', 12, 'kanomjeen-kangtaipla.jpg', 30, 40),
(14, 'ขนมจีนน้ำกะทิ', 12, 'kanomjeen-namkrati.jpg', 30, 40),
(15, 'ขนมจีนน้ำเงี๊ยว', 12, 'kanomjeen-namngeaw.jpg', 35, 40),
(16, 'ขนมจีนน้ำพริก', 12, 'kanomjeen-nampik.jpg', 30, 40),
(17, 'ขนมจีนน้ำยาป่า', 12, 'kanomjeen-namyapaa.jpg', 30, 40),
(18, 'ขนมจีนน้ำยาปู', 12, 'kanomjeen-namyapoo.jpg', 40, 50),
(19, 'ขนมจีนน้ำยาปักษ์ใต้', 12, 'kanomjeen-paktai.jpg', 35, 40),
(20, 'ขนมจีนน้ำยาซาวน้ำ', 12, 'kanomjeen-sawnam.jpg', 35, 40),
(21, 'ข้าวราดแกงพะโล้', 2, 'khawradkang-kaipaloo.jpg', 30, 35),
(22, 'ข้าวราดแกงเขียวหวาน', 2, 'khawradkang-kangkheawwan.jpg', 35, 40),
(23, 'ข้าวราดแกงแกงส้ม', 2, 'khawradkang-kangsom.jpg', 35, 40),
(24, 'ข้าวราดแกงแกงเทโพ', 10, 'khawradkang-kangtapo.jpg', 35, 40),
(25, 'ข้าวราดแกงคั่วกลิ้ง', 10, 'khawradkang-kurking.jpg', 35, 40),
(26, 'ข้าวราดแกงเนื้อผัดน้ำมันหอย', 10, 'khawradkang-nearpudnammunhoi.jpg', 35, 40),
(27, 'ข้าวราดแกงพะแนงหมู', 15, 'khawradkang-panangmoo.jpg', 35, 40),
(28, 'ข้าวราดแกงผัดฟักทอง', 15, 'khawradkang-pudfuktong.jpg', 35, 40),
(29, 'ข้าวราดแกงผัดกระเพรา', 15, 'khawradkang-pudkrapao.jpg', 35, 40),
(30, 'ข้าวราดแกงผัดหนอไม้', 2, 'khawradkang-pudnormai.jpg', 35, 40),
(31, 'ข้าวราดแกงผัดเปรี๊ยวหวาน', 10, 'khawradkang-pudprewwaan.jpg', 35, 40),
(32, 'ข้าวราดแกงเต้าหู้ทรงเครื่อง', 15, 'khawradkang-taohuthongkreang.jpg', 35, 40),
(33, 'ข้าวราดแกงต้มข่าไก่', 15, 'khawradkang-tomkhakai.jpg', 35, 40),
(34, 'ยำหอยแครง', 18, 'yam-hoikang.jpg', 40, 50),
(35, 'ยำหอยนางรม', 18, 'yam-hoinangrom.jpg', 40, 50),
(36, 'ยำขนมจีน', 18, 'yam-kanomjeen.jpg', 35, 40),
(37, 'ยำลูกชิ้น', 18, 'yam-lookchin.jpg', 35, 40),
(38, 'ยำมาม่า', 18, 'yam-mama.jpg', 35, 40),
(39, 'ยำมะม่วง', 18, 'yam-mangokoong.jpg', 35, 40),
(40, 'ยำหมูยอ', 18, 'yam-mooyor.jpg', 35, 40),
(41, 'ยำปลาหมึก', 18, 'yam-plameong.jpg', 40, 50),
(42, 'ยำปลาทู', 18, 'yam-platwo.jpg', 35, 40),
(43, 'ยำปูม้า', 18, 'yam-pooma.jpg', 40, 50),
(44, 'ยำสามกรอบ', 18, 'yam-samkob.jpg', 30, 35),
(45, 'ยำวุ้นเส้น', 18, 'yam-woonsen.jpg', 35, 40),
(46, 'รวมลูกชิ้น', 14, 'luachan.JPG', 35, 40),
(47, 'ลูกชิ้นหมู', 14, 'moo.jpg', 20, 25),
(48, 'ลูกชิ้นปลา', 14, 'pla.jpg', 30, 40),
(49, 'ปูอัด', 14, 'puared.jpg', 20, 25),
(50, 'ข้าวมันไก่ทอด', 16, 'kraw-munkaitod.JPG', 40, 50),
(51, 'ข้าวมันไก่', 4, 'kraw-munkai.JPG', 40, 50),
(52, 'ข้าวหมูแดง', 4, 'kraw-muudan.JPG', 40, 50),
(53, 'ข้าวหมูกรอบ', 16, 'kraw-muukob.JPG', 40, 50),
(54, 'ข้าวขาหมู', 16, 'kraw-karmuu.JPG', 40, 50),
(55, 'ข้าวไข่เจียวหมูสับ', 1, 'kaijey.jpg', 30, 35),
(56, 'ข้าวคะน้าหมูกรอบ', 5, 'kana.jpg', 40, 50),
(57, 'ข้าวผัดกระเพรา', 17, 'kapow.jpg', 40, 50),
(58, 'ข้าวผัดเปรี้ยวหวาน', 1, 'kraw-padpewwan.JPG', 40, 50),
(59, 'ข้าวผัดกุ้ง', 5, 'kraw-paw.JPG', 50, 55),
(60, 'ผัดมักกะโรนี', 17, 'makalownee.JPG', 40, 50),
(61, 'ข้าวผัดเผ็ดหมูป่า', 1, 'padpetmuupa.JPG', 40, 50),
(62, 'ข้าวปูผัดผงกระหรี่', 5, 'pupungkalee.JPG', 45, 50),
(63, 'สปาเก็ตตี้', 17, 'sapa.JPG', 40, 50),
(64, 'ไก่ย่าง', 7, 'esan-kaiyang.jpg', 30, 35),
(65, 'แกงอ่อม', 7, 'esan-kangaom.jpg', 35, 40),
(66, 'คอหมูย่าง', 7, 'esan-kormooyang.jpg', 40, 50),
(67, 'กุ้งฝอย', 7, 'esan-kungfoy.jpg', 45, 55),
(68, 'ลาบหมู', 7, 'esan-labmoo.jpg', 35, 40),
(69, 'หมูแดดเดียว', 7, 'esan-moodaddrew.jpg', 45, 55),
(70, 'น้ำตก', 7, 'esan-namtok.jpg', 35, 40),
(71, 'ปลาดุกย่าง', 7, 'esan-pladok.jpg', 40, 45),
(72, 'ปลานิล', 7, 'esan-planil.jpg', 40, 50),
(73, 'ซุปหนอไม้', 7, 'esan-sopnormai.jpg', 35, 40),
(74, 'ต้มแซ่บ', 7, 'esan-tomzab.jpg', 45, 50),
(75, 'ตับหวาน', 7, 'esan-tubwan.jpg', 45, 55),
(76, 'ส้มตำกุ้งสด', 7, 'somtum-kungsod.jpg', 35, 40),
(77, 'ส้มตำปลาร้า', 7, 'somtum-plara.jpg', 35, 40),
(78, 'ส้มตำไทย', 7, 'somtum-thai.jpg', 35, 40),
(79, 'ตำถั่ว', 7, 'somtum-tue.jpg', 35, 40),
(80, 'ข้าวต้มทะเล', 3, 'krawtomtalay.jpg', 40, 50),
(81, 'โจ๊กหมู', 3, 'jokmoo.jpg', 30, 40),
(82, 'ข้าวต้มปลา', 3, 'krawtom.jpg', 40, 50),
(83, 'ข้าวผัดต้มยำกุ้ง', 1, 'krawpadtumyam-kug.jpg', 40, 50),
(84, 'ผัดกระเพราเบค่อน', 1, 'padbakon.jpg', 40, 50),
(85, 'ข้าวผัดอเมริกัน', 1, 'amarican.jpg', 40, 50),
(86, 'ข้าวคลุกกะปิ', 15, 'kukape.jpg', 40, 50),
(87, 'ก๋วยเตี๋ยวเนื้อแห้ง', 13, 'kurtelhang.jpg', 40, 45),
(88, 'ก๋วยเตี๋ยวหมูน้ำตก', 13, 'kurtelmuu1.jpg', 35, 40),
(89, 'ลูกชิ้นหมูล้วน', 11, 'krutelluchan.jpg', 30, 35),
(90, 'ก๋วยเตี๋ยวมาม่าน้ำตกหมู', 11, 'bahmeenumtok.jpg', 35, 40),
(91, '123', 2, '22008320_500771726959498_4451356513737702280_n-1543750762892-.jpg', 40000, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_location`
--

CREATE TABLE `tb_location` (
  `id_location` int(11) NOT NULL,
  `name_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_location`
--

INSERT INTO `tb_location` (`id_location`, `name_location`) VALUES
(1, 'โรงอาหาร'),
(2, 'ริมน้ำ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_shop`
--

CREATE TABLE `tb_shop` (
  `id` int(11) NOT NULL,
  `name_shop` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img_shop` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_location` int(11) NOT NULL,
  `shop_like` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_shop`
--

INSERT INTO `tb_shop` (`id`, `name_shop`, `img_shop`, `id_location`, `shop_like`) VALUES
(1, 'ราชาตามสั่ง', 'shop-1.jpg', 1, 1),
(2, 'ร้านข้าวแกงแสงจันทร์', 'shop-2.jpg', 1, 1),
(3, 'ร้านก๋วยเตี๋ยวปลา ข้าวต้มปลา โจ๊ก', 'shop-3.jpg', 1, 1),
(4, 'ร้านข้าวมันไก่ น้ำจิ้ม รสเด็ด', 'shop-4.jpg', 1, 1),
(5, 'ร้านน้องโอ็ตอาหารตามสั่ง', 'shop-5.jpg', 1, 2),
(6, 'ร้านก๋วยเตี๋ยวไก่ธันยาภรณ์', 'shop-6.jpg', 1, 2),
(7, 'โอมเพี้ยงส้มตำ ยำแซ่บ', 'shop-7.jpg', 1, 2),
(8, 'ร้านก๋วยจั๊บจัน', 'shop-8.jpg', 1, 2),
(9, 'มีดีที่เส้น', 'shop-9.jpg', 1, 2),
(10, 'ร้านข้าวแกงป้าติ๋ม', 'shop-10.jpg', 1, 2),
(11, 'ก๋วยเตี๋ยวเรือ', 'shop-11.jpg', 2, 1),
(12, 'เป็นหนึ่งขนมจีน', 'shop-12.jpg', 2, 1),
(13, 'เตี๋ยวรับทรัพย์', 'shop-13.jpg', 2, 1),
(14, 'ลูกชิ้นกลางสวน', 'shop-14.jpg', 2, 19),
(15, 'ร้านข้าวแกง สุกัญญา', 'shop-15.jpg', 2, 20),
(16, 'ข้าวมันไก่เด่นชัย', 'shop-16.jpg', 2, 6),
(17, 'อาหารตามสั่ง', 'shop-17.jpg', 2, 1),
(18, 'ลุงซ่าส์ ยำแซ่บ', 'shop-18.jpg', 2, 5),
(19, 'dog', '22007671_1702137896474736_8859799326279347325_n-1543748764599-.jpg', 1, 32);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_food`
--
ALTER TABLE `tb_food`
  ADD PRIMARY KEY (`id_food`);

--
-- Indexes for table `tb_location`
--
ALTER TABLE `tb_location`
  ADD PRIMARY KEY (`id_location`);

--
-- Indexes for table `tb_shop`
--
ALTER TABLE `tb_shop`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_food`
--
ALTER TABLE `tb_food`
  MODIFY `id_food` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tb_location`
--
ALTER TABLE `tb_location`
  MODIFY `id_location` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_shop`
--
ALTER TABLE `tb_shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
