-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 15, 2020 lúc 04:38 PM
-- Phiên bản máy phục vụ: 10.4.10-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_school`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_nm` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `register` varchar(255) DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `updater_date` datetime DEFAULT NULL,
  `del_flg` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `category_nm`, `parent_id`, `slug`, `register`, `register_date`, `updater`, `updater_date`, `del_flg`) VALUES
(1, 'Tổ chức', 0, 'to-chuc', 'admin', '2020-01-04 08:31:06', 'admin', '2020-01-04 08:31:06', 0),
(2, 'Giáo dục', 0, 'giao-duc', 'admin', '2020-01-04 08:31:06', 'admin', '2020-01-04 08:31:06', 0),
(3, 'Other', 0, 'other', 'admin', '2020-01-04 08:31:06', 'admin', '2020-01-04 08:31:06', 0),
(4, 'Tổ chức loại 1', 1, 'to-chuc-loai-1', 'admin', '2020-01-04 08:31:06', 'admin', '2020-01-04 08:31:06', 0),
(5, 'Tổ chức loại 2', 1, 'to-chuc-loai-2', 'admin', '2020-01-04 08:31:06', 'admin', '2020-01-04 08:31:06', 0),
(6, 'Giáo dục loại 1', 2, 'giao-duc-loai-1', 'admin', '2020-01-04 08:31:06', 'admin', '2020-01-04 08:31:06', 0),
(7, 'Giáo dục loại 2', 2, 'giao-duc-loai-2', 'admin', '2020-01-04 08:31:06', 'admin', '2020-01-04 08:31:06', 0),
(8, 'Giáo dục loại 3', 2, 'giao-duc-loai-3', 'admin', '2020-01-04 08:31:06', 'admin', '2020-01-04 08:31:06', 0),
(9, 'Tổ chức loại 1 child 1', 4, 'to-chuc-loai1-chil1', 'admin', '2020-01-04 08:31:06', 'admin', '2020-01-04 08:31:06', 0),
(10, 'Tổ chức loại 1 child 2', 4, 'to-chuc-loai1-chil2', 'admin', '2020-01-04 08:31:06', 'admin', '2020-01-04 08:31:06', 0),
(11, 'tuantv', 0, 'ssv', 'admin', '2020-01-04 08:31:06', 'admin', '2020-01-04 08:31:06', 0),
(14, NULL, NULL, NULL, 'admin', '2020-01-11 07:04:17', 'admin', '2020-01-11 07:04:17', 0),
(15, NULL, NULL, NULL, 'admin', '2020-01-11 07:07:49', 'admin', '2020-01-11 07:07:49', 0),
(16, 'danh muc 1', 0, 'xc', 'admin', '2020-01-11 17:37:08', 'admin', '2020-01-11 17:37:08', 0),
(17, 'danh muc2', 16, 'ds', 'admin', '2020-01-11 17:44:03', 'admin', '2020-01-11 17:44:03', 0),
(18, 'danh muc2', 16, 'ds', 'admin', '2020-01-11 17:44:06', 'admin', '2020-01-11 17:44:06', 0),
(19, 'danh muc2', 16, 'ds', 'admin', '2020-01-11 17:44:07', 'admin', '2020-01-11 17:44:07', 0),
(20, 'danh muc2', 16, 'ds', 'admin', '2020-01-11 17:44:09', 'admin', '2020-01-11 17:44:09', 0),
(21, 'danh muc2', 16, 'ds', 'admin', '2020-01-11 17:44:15', 'admin', '2020-01-11 17:44:15', 0),
(22, 'xx', 17, 'sdfsdf', 'admin', '2020-01-11 17:46:57', 'admin', '2020-01-11 17:46:57', 0),
(23, 'c', 17, 'cvx', 'admin', '2020-01-11 17:48:21', 'admin', '2020-01-11 17:48:21', 0),
(24, 'c', 17, 'cvx', 'admin', '2020-01-11 17:48:29', 'admin', '2020-01-11 17:48:29', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `category_other` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `register` varchar(255) DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `updater_date` datetime DEFAULT NULL,
  `del_flg` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `author`, `mime`, `original_filename`, `filename`, `category_id`, `category_other`, `slug`, `register`, `register_date`, `updater`, `updater_date`, `del_flg`) VALUES
(1, 'bai viet so 1', 'noi dung bai viet so 1', '', NULL, NULL, NULL, 1, 0, 'bai-viet-so-mot', 'admin', '2020-01-01 00:00:00', 'admin', '2020-01-01 00:00:00', 1),
(2, 'bài viết số 2', 'nội dung bài viết số 2', '', NULL, NULL, NULL, 1, 0, 'noi-dung-bai-viet-so2', 'admin', '2020-01-01 00:00:00', 'admin', '2020-01-01 00:00:00', 0),
(3, 'tuan', 'noi dung', 'au', 'image/jpeg', 'gaugau.jpg', 'phpB34A.tmp.jpg', 0, 0, 'sh', 'admin', '2020-01-01 00:00:00', 'admin', '2020-01-01 00:00:00', 1),
(4, 'tran van tuan', NULL, 'author', 'image/jpeg', 'gaugau.jpg', 'php28E1.tmp.jpg', 0, 0, 'sluh', 'admin', '2020-01-01 00:00:00', 'admin', '2020-01-01 00:00:00', 0),
(5, 'tuan', '<p><img alt=\"\" src=\"/ckfinder/userfiles/images/meomeo.jpg\" style=\"height:500px; width:500px\" /></p>\r\n\r\n<p>xin chao</p>', 'df', 'image/jpeg', 'contom.jpg', 'php4B7F.tmp.jpg', 0, 0, 'fgdf', 'admin', '2020-01-01 00:00:00', 'admin', '2020-01-01 00:00:00', 0),
(6, 'bai viet moi', 'fsdfs dfsdf sdf sdf&nbsp;', 'cvbcvb', 'image/jpeg', 'meomeo.jpg', 'php196A.tmp.jpg', 0, 0, 'cvncvn', 'admin', '2020-01-11 07:27:43', 'admin', '2020-01-11 07:27:43', 0),
(7, 'bai viet moi', 'fsdfs dfsdf sdf sdf&nbsp;', 'cvbcvb', 'image/jpeg', 'meomeo.jpg', 'php3969.tmp.jpg', 0, 0, 'cvncvn', 'admin', '2020-01-11 07:30:02', 'admin', '2020-01-11 07:30:02', 1),
(8, 'bai viet moi', 'fsdfs dfsdf sdf sdf&nbsp;', 'cvbcvb', 'image/jpeg', 'meomeo.jpg', 'php6B91.tmp.jpg', 0, 0, 'cvncvn', 'admin', '2020-01-11 07:30:15', 'admin', '2020-01-11 07:30:15', 1),
(9, 'bai viet moi', 'fsdfs dfsdf sdf sdf&nbsp;', 'cvbcvb', 'image/jpeg', 'meomeo.jpg', 'phpBEA1.tmp.jpg', 0, 0, 'cvncvn', 'admin', '2020-01-11 07:31:42', 'admin', '2020-01-11 07:31:42', 1),
(10, 'bai viet moi', 'fsdfs dfsdf sdf sdf&nbsp;', 'cvbcvb', 'image/jpeg', 'meomeo.jpg', 'phpA71C.tmp.jpg', 0, 0, 'cvncvn', 'admin', '2020-01-11 07:34:53', 'admin', '2020-01-11 07:34:53', 0),
(11, 'tuan bai viet', '<h1>C&ocirc;ng an H&agrave; Nội th&ocirc;ng tin t&igrave;nh h&igrave;nh ở Đồng T&acirc;m sau vụ chống đối nghi&ecirc;m trọng</h1>\r\n<br />\r\nThứ Bảy, ng&agrave;y 11/01/2020 13:24 PM (GMT+7)<br />\r\n<a href=\"http://www.facebook.com/fan24h\" onclick=\"ga(\'send\', \'event\', \'icon_social\', \'click\', \'chuyen_muc:NULL~~id_tin:NULL~~phien_ban:pc\', {nonInteraction: true});\" target=\"_blank\">&nbsp;</a>\r\n\r\n<h2>C&ocirc;ng an TP.H&agrave; Nội th&ocirc;ng tin, đến nay, t&igrave;nh h&igrave;nh an ninh, trật tự ở Đồng T&acirc;m cơ bản ổn định, mọi hoạt động của người d&acirc;n diễn ra b&igrave;nh thường.</h2>\r\nSự kiện:&nbsp;\r\n\r\n<h3>&quot;Điểm n&oacute;ng&quot; Đồng T&acirc;m - Mỹ Đức</h3>\r\n,&nbsp;\r\n\r\n<h3><a href=\"https://www.24h.com.vn/tin-nong-c46e3908.html\">Tin n&oacute;ng</a></h3>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"Công an Hà Nội thông tin tình hình ở Đồng Tâm sau vụ chống đối nghiêm trọng - 1\" src=\"https://cdn.24h.com.vn/upload/1-2020/images/2020-01-11/1578723534-444-cong-an-ha-noi-thong-tin-tinh-hinh-o-dong-tam-sau-vu-chong-doi-nghiem-trong-fb_img_1578719230800-1578723368-width500height314.jpg\" /></p>\r\n\r\n<p>Số vũ kh&iacute; c&aacute;c đối tượng sử dụng để chống lại lực lượng chức năng.</p>\r\n\r\n<p>Li&ecirc;n quan đến vụ chống đối nghi&ecirc;m trọng ở Đồng T&acirc;m, huyện Mỹ Đức, H&agrave; Nội, ng&agrave;y 11/1, C&ocirc;ng an TP.H&agrave; Nội cho biết, Cơ quan CSĐT C&ocirc;ng an TP.H&agrave; Nội đ&atilde; ra Quyết định khởi tố vụ &aacute;n h&igrave;nh sự Giết người; T&agrave;ng trữ, sử dụng, mua b&aacute;n tr&aacute;i ph&eacute;p vũ kh&iacute; qu&acirc;n dụng; Chống người thi h&agrave;nh c&ocirc;ng vụ xảy ra tại x&atilde; Đồng T&acirc;m để điều tra, xử l&yacute; theo quy định của ph&aacute;p luật.</p>\r\n\r\n<p>Theo C&ocirc;ng an TP.H&agrave; Nội, trước đ&oacute;, từ ng&agrave;y 31/12/2019, một số đơn vị của Bộ Quốc ph&ograve;ng phối hợp với lực lượng chức năng x&acirc;y dựng tường r&agrave;o bảo vệ S&acirc;n bay Miếu M&ocirc;n, th&agrave;nh phố H&agrave; Nội theo kế hoạch.&nbsp;</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh x&acirc;y dựng, s&aacute;ng 9/1/2020, một số đối tượng c&oacute; h&agrave;nh vi chống đối, sử dụng lựu đạn, bom xăng, dao ph&oacute;ng... tấn c&ocirc;ng lực lượng chức năng, chống người thi h&agrave;nh c&ocirc;ng vụ, g&acirc;y rối trật tự c&ocirc;ng cộng.&nbsp;</p>\r\n\r\n<p>Qu&aacute; tr&igrave;nh ngăn chặn h&agrave;nh vi manh động, qu&aacute; kh&iacute;ch của c&aacute;c đối tượng, 3 c&aacute;n bộ chiến sĩ C&ocirc;ng an đ&atilde; hy sinh gồm: Thượng t&aacute; Nguyễn Huy Thịnh, Ph&oacute; Trung đo&agrave;n trưởng, Bộ Tư lệnh Cảnh s&aacute;t cơ động, Bộ C&ocirc;ng an; Thiếu &uacute;y Dương Đức Ho&agrave;ng Qu&acirc;n, Bộ Tư lệnh Cảnh s&aacute;t cơ động, Bộ C&ocirc;ng an; Trung &uacute;y Phạm C&ocirc;ng Huy, Ph&ograve;ng Cảnh s&aacute;t PCCC&amp;CNCH C&ocirc;ng an TP H&agrave; Nội); 1 đối tượng chống đối chết, 1 đối tượng bị thương.</p>\r\n\r\n<p>C&aacute;c đơn vị chức năng đ&atilde; khống chế v&agrave; bắt giữ c&aacute;c đối tượng để điều tra xử l&yacute; theo đ&uacute;ng quy định của ph&aacute;p luật.</p>\r\n\r\n<p>C&ocirc;ng an TP.H&agrave; Nội cũng th&ocirc;ng tin, đến nay, t&igrave;nh h&igrave;nh an ninh, trật tự ở Đồng T&acirc;m cơ bản ổn định, mọi hoạt động của người d&acirc;n diễn ra b&igrave;nh thường. Nhiều người d&acirc;n t&iacute;ch cực hỗ trợ lực lượng C&ocirc;ng an, Qu&acirc;n đội thực hiện nhiệm vụ. Việc thi c&ocirc;ng x&acirc;y dựng tường r&agrave;o S&acirc;n bay Miếu M&ocirc;n tiếp tục thực hiện theo kế hoạch. Ngo&agrave;i 3 c&aacute;n bộ, chiến sỹ C&ocirc;ng an hy sinh trong khi l&agrave;m nhiệm vụ, c&aacute;c c&aacute;n bộ, chiến sỹ kh&aacute;c tham gia bảo đảm an ninh trật tự thi c&ocirc;ng tường r&agrave;o S&acirc;n bay Miếu M&ocirc;n đều an to&agrave;n.</p>\r\n\r\n<p>Nguồn: http://danviet.vn/tin-tuc-viet-nam/cong-an-ha-noi-thong-tin-tinh-hinh-o-dong-tam-sau-vu-chong-do...</p>', 'tac gia nguyen van a', 'image/jpeg', 'contom.jpg', 'php90EF.tmp.jpg', 0, 0, 'bfst', 'admin', '2020-01-11 07:38:04', 'admin', '2020-01-11 07:38:04', 0),
(12, 'dfsd', 'xxxxeeyyy&yacute;df', 'gsd', 'image/jpeg', 'meomeo.jpg', 'phpAF96.tmp.jpg', 0, 0, 'sdfsdf', 'admin', '2020-01-11 07:39:17', 'admin', '2020-01-11 07:39:17', 0),
(13, 'xunákj', 'vbcvb', 'dfdf', 'image/jpeg', 'meomeo.jpg', 'php1C30.tmp.jpg', 0, 0, 'gdfg', 'admin', '2020-01-11 08:15:48', 'admin', '2020-01-11 08:15:48', 0),
(14, 'táudf', 'xcvdfs', 'sdfsdf', 'image/jpeg', 'gaugau.jpg', 'php1F6C.tmp.jpg', 0, 0, 'sdf', 'admin', '2020-01-11 08:28:55', 'admin', '2020-01-11 08:28:55', 0),
(15, 'fgh', 'fgh', 'fghfgh', 'image/jpeg', 'meomeo.jpg', 'php4D6F.tmp.jpg', 2, 0, 'fghf', 'admin', '2020-01-11 08:33:29', 'admin', '2020-01-11 08:33:29', 1),
(16, 'fgdfg', 'cvbc', 'dsd', 'image/jpeg', 'meomeo.jpg', 'php74A2.tmp.jpg', 4, 0, 'xcv', 'admin', '2020-01-11 08:41:17', 'admin', '2020-01-11 08:41:17', 0),
(17, 'dfg', 'dfgdfg', 'vcbcv', 'image/jpeg', 'gaugau.jpg', 'php9C01.tmp.jpg', 9, 0, 'dfgdf', 'admin', '2020-01-11 08:53:28', 'admin', '2020-01-11 08:53:28', 0),
(18, 'sfsd', 'xcvxc', 'cvxc', 'image/jpeg', 'meomeo.jpg', 'phpAF53.tmp.jpg', 1, 0, 'cvx', 'admin', '2020-01-11 08:54:39', 'admin', '2020-01-11 08:54:39', 1),
(19, 'dfsd', 'sdfsdfs', 'aaa', 'image/jpeg', 'gaugau.jpg', 'php8A57.tmp.jpg', 9, 0, 'v', 'admin', '2020-01-11 09:04:19', 'admin', '2020-01-11 09:04:19', 0),
(20, 'ta', 'vc', 'c', 'image/jpeg', 'meomeo.jpg', 'php33DF.tmp.jpg', 0, 0, 'dddd', 'admin', '2020-01-11 09:06:08', 'admin', '2020-01-11 09:06:08', 0),
(21, 'fsdf', 'dgf', 'dfgd', 'image/jpeg', 'gaugau.jpg', 'php6D1A.tmp.jpg', 0, 0, 'dfsd', 'admin', '2020-01-11 09:48:59', 'admin', '2020-01-11 09:48:59', 0),
(22, 'ngay xua', '<p>ong qu&aacute; tr&igrave;nh thiết kế web liệu bạn đ&atilde; nghe tới tr&igrave;nh soạn thảo văn bản CKEDITOR hay chưa?? ckeditor từ l&acirc;u đ&atilde; được biết đến l&agrave; một tr&igrave;nh soạn thảo văn bản HTML sẵn s&agrave;ng cho sử dụng được thiết kế để đơn giản h&oacute;a việc tạo ra nội dung web. Đ&oacute;&nbsp;l&agrave;&nbsp;một tr&igrave;nh soạn thảo WYSIWYG mang lại c&aacute;c t&iacute;nh năng xử l&yacute; văn bản phổ biến trực tiếp đến trang web của bạn.</p>\r\n&nbsp;\r\n\r\n<p><img alt=\"Hướng dẫn soạn thảo văn bản dễ dàng trên web với trình chỉnh sửa CKEditor\" src=\"http://cudemvn.wap.sh/images/xtgem/huong-dan-soan-thao-van-ban-de-dang-tren-web-voi-trinh-chinh-sua-ckeditor-1.jpg\" title=\"Hướng dẫn soạn thảo văn bản dễ dàng trên web với trình chỉnh sửa CKEditor\" />&nbsp;<br />\r\n<a href=\"http://cudemvn.wap.sh/images/xtgem/huong-dan-soan-thao-van-ban-de-dang-tren-web-voi-trinh-chinh-sua-ckeditor-1.jpg\">[Tải ảnh]</a></p>\r\n<br />\r\n<strong>Ng&agrave;y h&ocirc;m nay t&ocirc;i chia sẻ với bạn điều g&igrave; về CKEditor:</strong>&nbsp;<br />\r\nM&igrave;nh xin điểm qua ưu điểm:&nbsp;&nbsp;<br />\r\n- Copy d&aacute;n nội dung dễ d&agrave;ng.&nbsp;&nbsp;<br />\r\n- Chỉnh sửa như word.&nbsp;&nbsp;<br />\r\n- Post b&agrave;i nhanh hơn.&nbsp;&nbsp;<br />\r\n- Nhiều bạn &iacute;t kiến thức HTML - CSS thiết kế 1 b&agrave;i viết th&igrave; n&oacute; rất hữu dụng.&nbsp;&nbsp;<br />\r\n<br />\r\n<strong>Hướng dẫn c&agrave;i đặt tr&igrave;nh soạn thảo văn bản CKEditor v&agrave;o Website:</strong>&nbsp;<br />\r\n- Bước 1: D&aacute;n code sau v&agrave;o trong cặp thẻ head. (1 trong 2 code dưới)&nbsp;<br />\r\n+ Bản r&uacute;t gọn:&nbsp;', 'dsdf', 'image/jpeg', 'meomeo.jpg', 'phpA65C.tmp.jpg', 4, 0, 'sdfsdf', 'admin', '2020-01-11 16:14:47', 'admin', '2020-01-11 16:14:47', 0),
(23, 'tet den noi roi', '<p>T&ecirc;n tuổi của Trịnh C&ocirc;ng Sơn được nhiều người biết đến hơn, từ khi &ocirc;ng c&ugrave;ng ca sĩ Kh&aacute;nh Ly h&aacute;t tại&nbsp;<em><a href=\"https://vi.wikipedia.org/w/index.php?title=Qu%C3%A1n_V%C4%83n&amp;action=edit&amp;redlink=1\">Qu&aacute;n Văn</a></em>, một qu&aacute;n c&agrave; ph&ecirc; đơn sơ dựng tr&ecirc;n b&atilde;i đất cỏ sau&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Tr%C6%B0%E1%BB%9Dng_%C4%90%E1%BA%A1i_h%E1%BB%8Dc_V%C4%83n_khoa_S%C3%A0i_G%C3%B2n\">Trường Đại học Văn khoa S&agrave;i G&ograve;n</a>&nbsp;do nh&oacute;m sinh vi&ecirc;n mang t&ecirc;n&nbsp;<em>Khai H&oacute;a</em>&nbsp;trong&nbsp;<em>phong tr&agrave;o phục vụ thanh ni&ecirc;n x&atilde; hội</em>&nbsp;chủ trương, từ cuối năm 1966.<a href=\"https://vi.wikipedia.org/wiki/Tr%E1%BB%8Bnh_C%C3%B4ng_S%C6%A1n#cite_note-7\">[7]</a><a href=\"https://vi.wikipedia.org/wiki/Tr%E1%BB%8Bnh_C%C3%B4ng_S%C6%A1n#cite_note-8\">[8]</a>&nbsp;Trong những năm sau đ&oacute;, nhạc của &ocirc;ng được phổ biến v&agrave; được nhiều&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Ca_s%C4%A9\">ca sĩ</a>&nbsp;tr&igrave;nh diễn, đặc biệt l&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Kh%C3%A1nh_Ly\">Kh&aacute;nh Ly</a>. &Ocirc;ng kể: &quot;<em>Gặp gỡ ca sĩ Kh&aacute;nh Ly l&agrave; một may mắn t&igrave;nh cờ, kh&ocirc;ng phải ri&ecirc;ng cho t&ocirc;i m&agrave; c&ograve;n cho cả Kh&aacute;nh Ly. L&uacute;c gặp Kh&aacute;nh Ly đang h&aacute;t ở Đ&agrave; Lạt, l&uacute;c đ&oacute; Kh&aacute;nh Ly chưa nổi tiếng nhưng t&ocirc;i nghe qua giọng h&aacute;t thấy ph&ugrave; hợp với những b&agrave;i h&aacute;t của m&igrave;nh đang viết v&agrave; l&uacute;c đ&oacute; t&ocirc;i chưa t&igrave;m ra ca sĩ n&agrave;o ngo&agrave;i Kh&aacute;nh Ly. T&ocirc;i đ&atilde; mời Kh&aacute;nh Ly h&aacute;t v&agrave; r&otilde; r&agrave;ng giọng h&aacute;t của Kh&aacute;nh Ly rất hợp với những b&agrave;i h&aacute;t của m&igrave;nh. Từ l&uacute;c đ&oacute; Kh&aacute;nh Ly chỉ h&aacute;t nhạc của t&ocirc;i m&agrave; kh&ocirc;ng h&aacute;t nhạc người kh&aacute;c nữa. Đ&oacute; cũng l&agrave; l&yacute; do cho ph&eacute;p m&igrave;nh tập trung viết cho giọng h&aacute;t đ&oacute; v&agrave; từ đ&oacute; Kh&aacute;nh Ly kh&ocirc;ng thể t&aacute;ch rời những b&agrave;i h&aacute;t của t&ocirc;i cũng như những b&agrave;i h&aacute;t của t&ocirc;i kh&ocirc;ng thể thiếu Kh&aacute;nh Ly</em>&quot;, c&ograve;n Kh&aacute;nh Ly kể lại giai đoạn cơ cực đ&oacute;i khổ nhưng đầy hạnh ph&uacute;c những năm 1960 ấy: &quot;<em>Thực sự t&ocirc;i rất m&ecirc; h&aacute;t. Kh&ocirc;ng m&ecirc; h&aacute;t th&igrave; t&ocirc;i kh&ocirc;ng c&oacute; đủ can đảm để đi h&aacute;t với anh Sơn mười năm m&agrave; kh&ocirc;ng c&oacute; đồng xu, cắc bạc n&agrave;o, phải chịu đ&oacute;i, chịu khổ, chịu ngh&egrave;o, kh&ocirc;ng cần biết đến ng&agrave;y mai, kh&ocirc;ng cần biết tới ai cả, m&agrave; chỉ cảm thấy m&igrave;nh thực l&agrave; hạnh ph&uacute;c, cảm thấy m&igrave;nh sống khi m&igrave;nh được h&aacute;t những t&igrave;nh kh&uacute;c của Trịnh C&ocirc;ng Sơn</em>&quot;.<a href=\"https://vi.wikipedia.org/wiki/Tr%E1%BB%8Bnh_C%C3%B4ng_S%C6%A1n#cite_note-9\">[9]</a></p>\r\n\r\n<p>Một số b&agrave;i h&aacute;t của Trịnh C&ocirc;ng Sơn đ&atilde; đến với c&ocirc;ng ch&uacute;ng&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nh%E1%BA%ADt_B%E1%BA%A3n\">Nhật Bản</a>&nbsp;năm&nbsp;<a href=\"https://vi.wikipedia.org/wiki/1970\">1970</a>&nbsp;như &quot;<a href=\"https://vi.wikipedia.org/wiki/Di%E1%BB%85m_x%C6%B0a\">Diễm xưa</a>&quot; (do Kh&aacute;nh Ly biểu diễn bằng cả&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Ti%E1%BA%BFng_Nh%E1%BA%ADt\">tiếng Nhật</a>&nbsp;v&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Ti%E1%BA%BFng_Vi%E1%BB%87t\">tiếng Việt</a>),&nbsp;<em>&quot;Ca dao Mẹ&quot;</em>,&nbsp;<em>&quot;Ngủ đi con&quot;</em>. Ri&ecirc;ng b&agrave;i&nbsp;<em>Ngủ đi con</em>&nbsp;đ&atilde; ph&aacute;t h&agrave;nh tr&ecirc;n hai triệu&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%C4%90%C4%A9a_than\">đĩa than</a>. V&igrave; lời lẽ trong nhiều b&agrave;i h&aacute;t của &ocirc;ng c&oacute; t&iacute;nh chất phản chiến, nh&agrave; cầm quyền&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam_C%E1%BB%99ng_h%C3%B2a\">Việt Nam Cộng h&ograve;a</a>&nbsp;đ&atilde; cấm lưu h&agrave;nh v&agrave;i t&aacute;c phẩm của &ocirc;ng.<a href=\"https://vi.wikipedia.org/wiki/Tr%E1%BB%8Bnh_C%C3%B4ng_S%C6%A1n#cite_note-10\">[10]</a>&nbsp;Theo t&aacute;c giả Ban Mai, trong cuốn &quot;Trịnh C&ocirc;ng Sơn - vết ch&acirc;n d&atilde; tr&agrave;ng&quot;<a href=\"https://vi.wikipedia.org/wiki/Tr%E1%BB%8Bnh_C%C3%B4ng_S%C6%A1n#cite_note-11\">[11]</a>, nhiều ca kh&uacute;c của &ocirc;ng c&oacute; th&ocirc;ng điệp phản chiến bị cả hai b&ecirc;n&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam_D%C3%A2n_ch%E1%BB%A7_C%E1%BB%99ng_h%C3%B2a\">Việt Nam D&acirc;n chủ Cộng h&ograve;a</a>&nbsp;v&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam_C%E1%BB%99ng_h%C3%B2a\">Việt Nam Cộng h&ograve;a</a>&nbsp;cấm lưu h&agrave;nh<a href=\"https://vi.wikipedia.org/wiki/Tr%E1%BB%8Bnh_C%C3%B4ng_S%C6%A1n#cite_note-bm31-12\">[12]</a>&nbsp;<a href=\"https://vi.wikipedia.org/wiki/M%E1%BA%B7t_tr%E1%BA%ADn_D%C3%A2n_t%E1%BB%99c_Gi%E1%BA%A3i_ph%C3%B3ng_mi%E1%BB%81n_Nam_Vi%E1%BB%87t_Nam\">Mặt trận D&acirc;n tộc Giải ph&oacute;ng miền Nam Việt Nam</a>&nbsp;cũng kh&ocirc;ng t&aacute;n th&agrave;nh th&aacute;i độ phản chiến của &ocirc;ng về chiến tranh, vốn mang t&iacute;nh &quot;chủ h&ograve;a, ủy mị&quot;, l&agrave;m nản l&ograve;ng những người đang đấu tranh chống x&acirc;m lược v&agrave; thống nhất đất nước. Theo t&aacute;c giả Ban Mai, trong cuốn &quot;Trịnh C&ocirc;ng Sơn &ndash; vết ch&acirc;n&nbsp;<a href=\"https://vi.wikipedia.org/wiki/D%C3%A3_tr%C3%A0ng\">d&atilde; tr&agrave;ng</a>&quot;,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam_D%C3%A2n_ch%E1%BB%A7_C%E1%BB%99ng_h%C3%B2a\">Việt Nam D&acirc;n chủ Cộng h&ograve;a</a>&nbsp;th&igrave; c&oacute; những người ph&ecirc; ph&aacute;n &ocirc;ng v&igrave; coi &ocirc;ng l&agrave; &quot;thiếu lập trường ch&iacute;nh trị&quot;,<a href=\"https://vi.wikipedia.org/wiki/Tr%E1%BB%8Bnh_C%C3%B4ng_S%C6%A1n#cite_note-bm29-13\">[13]</a>&nbsp;c&oacute; những người cực đoan đ&ograve;i sau khi tiến về&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Th%C3%A0nh_ph%E1%BB%91_H%E1%BB%93_Ch%C3%AD_Minh\">S&agrave;i G&ograve;n</a>&nbsp;sẽ &quot;xử tử&quot; &ocirc;ng.<a href=\"https://vi.wikipedia.org/wiki/Tr%E1%BB%8Bnh_C%C3%B4ng_S%C6%A1n#cite_note-bm24-14\">[14]</a></p>\r\n\r\n<p>Trưa ng&agrave;y&nbsp;<a href=\"https://vi.wikipedia.org/wiki/30_th%C3%A1ng_4\">30 th&aacute;ng 4</a>&nbsp;năm&nbsp;<a href=\"https://vi.wikipedia.org/wiki/1975\">1975</a>, &ocirc;ng l&ecirc;n&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%C4%90%C3%A0i_V%C3%B4_tuy%E1%BA%BFn_Vi%E1%BB%87t_Nam\">Đ&agrave;i ph&aacute;t thanh S&agrave;i G&ograve;n</a>&nbsp;h&aacute;t b&agrave;i&nbsp;<em>&quot;Nối v&ograve;ng tay lớn&quot;</em>. Cũng ch&iacute;nh &ocirc;ng l&agrave; người&nbsp;<a href=\"https://vi.wikipedia.org/wiki/S%E1%BB%B1_ki%E1%BB%87n_30_th%C3%A1ng_4_n%C4%83m_1975\">trưa ng&agrave;y 30/4</a>&nbsp;đ&atilde; đứng l&ecirc;n ph&aacute;t biểu trực tiếp tr&ecirc;n đ&agrave;i ph&aacute;t thanh S&agrave;i G&ograve;n sau lời tuy&ecirc;n bố đầu h&agrave;ng của Tổng thống&nbsp;<a href=\"https://vi.wikipedia.org/wiki/D%C6%B0%C6%A1ng_V%C4%83n_Minh\">Dương Văn Minh</a>. Trong b&agrave;i ph&aacute;t biểu, &ocirc;ng k&ecirc;u gọi người d&acirc;n miền Nam ủng hộ Ch&iacute;nh phủ C&aacute;ch mạng l&acirc;m thời miền Nam Việt Nam:<a href=\"https://vi.wikipedia.org/wiki/Tr%E1%BB%8Bnh_C%C3%B4ng_S%C6%A1n#cite_note-15\">[15]</a></p>\r\n&quot;<em>H&ocirc;m nay l&agrave; ng&agrave;y mơ ước của tất cả ch&uacute;ng ta... Ng&agrave;y m&agrave; ch&uacute;ng ta giải ph&oacute;ng ho&agrave;n to&agrave;n đất nước Việt Nam n&agrave;y... Những điều mơ ước của c&aacute;c bạn bấy l&acirc;u l&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%C4%90%E1%BB%99c_l%E1%BA%ADp\">độc lập</a>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Quy%E1%BB%81n_t%E1%BB%B1_do\">tự do</a>, v&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/w/index.php?title=Th%E1%BB%91ng_nh%E1%BA%A5t&amp;action=edit&amp;redlink=1\">thống nhất</a>&nbsp;th&igrave; h&ocirc;m nay ch&uacute;ng ta đ&atilde; đạt được tất cả kết quả đ&oacute;... H&ocirc;m nay t&ocirc;i y&ecirc;u cầu c&aacute;c văn nghệ sĩ c&aacute;ch mạng miền Nam Việt Nam, c&aacute;c bạn trẻ v&agrave; Ch&iacute;nh phủ C&aacute;ch mạng l&acirc;m thời xem những kẻ ra đi l&agrave; những kẻ phản bội đất nước... Ch&iacute;nh phủ C&aacute;ch mạng l&acirc;m thời đến đ&acirc;y với th&aacute;i độ h&ograve;a giải, tốt đẹp. Ch&uacute;ng ta kh&ocirc;ng c&oacute; l&yacute; do g&igrave; để sợ h&atilde;i m&agrave; ra đi cả. Đ&acirc;y l&agrave; cơ hội duy nhất v&agrave; đẹp đẽ nhất để đất nước Việt Nam được thống nhất v&agrave; độc lập. Thống nhất v&agrave; độc lập l&agrave; những điều ch&uacute;ng ta mơ ước suốt mấy chục năm nay. T&ocirc;i xin tất cả c&aacute;c bạn, th&acirc;n hữu v&agrave; cũng như những người chưa quen của t&ocirc;i xin ở lại v&agrave; kết hợp chặt chẽ với Ủy ban C&aacute;ch mạng l&acirc;m thời để g&oacute;p tiếng n&oacute;i x&acirc;y dựng miền Nam Việt Nam n&agrave;y...</em>&quot;<a href=\"https://vi.wikipedia.org/wiki/Tr%E1%BB%8Bnh_C%C3%B4ng_S%C6%A1n#cite_note-16\">[16]</a>\r\n\r\n<p>Theo&nbsp;<a href=\"https://vi.wikipedia.org/wiki/BBC\">BBC</a>, sau khi chiến tranh kết th&uacute;c, gia đ&igrave;nh &ocirc;ng di cư sang&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Hoa_K%E1%BB%B3\">Mỹ</a>&nbsp;v&agrave; &ocirc;ng phải đi học tập cải tạo trong 4 năm.<a href=\"https://vi.wikipedia.org/wiki/Tr%E1%BB%8Bnh_C%C3%B4ng_S%C6%A1n#cite_note-17\">[17]</a>&nbsp;Tuy nhi&ecirc;n, theo t&aacute;c giả B&ugrave;i Đức Lạc (một người bạn th&acirc;n của Trịnh C&ocirc;ng Sơn) th&igrave; &ocirc;ng chỉ đi l&agrave;m kinh tế mới v&agrave;i năm chứ kh&ocirc;ng hề c&oacute; cải tạo<a href=\"https://vi.wikipedia.org/wiki/Tr%E1%BB%8Bnh_C%C3%B4ng_S%C6%A1n#cite_note-18\">[18]</a>, nguồn kh&aacute;c th&igrave; n&oacute;i &ocirc;ng đi học tập ch&iacute;nh trị 2 năm ở Cồn Ti&ecirc;n. Theo Nguyễn Đắc Xu&acirc;n, thời gian đầu sau khi kết th&uacute;c chiến tranh năm 1975, &ldquo;<em>Đối với l&atilde;nh đạo th&igrave; kh&ocirc;ng c&oacute; vấn đề g&igrave;, nhưng c&oacute; nhiều &quot;anh em phong tr&agrave;o&quot; ở S&agrave;i G&ograve;n kh&ocirc;ng th&iacute;ch quan điểm lập trường chung chung của Trịnh C&ocirc;ng Sơn trước đ&acirc;y</em>&quot;, &ocirc;ng trở về Huế v&agrave; &quot;<em>thời gian đ&oacute; một số phần tử qu&aacute; kh&iacute;ch theo phong tr&agrave;o &quot;Hồng vệ binh&quot; của Cộng H&ograve;a Nh&acirc;n d&acirc;n Trung Hoa đ&atilde; k&iacute;ch động sinh vi&ecirc;n treo một tấm banderole to tướng mang d&ograve;ng chữ xanh rờn: &quot;Hạ bệ&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Ph%E1%BA%A1m_Duy\">Phạm Duy</a>&nbsp;-&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Ho%C3%A0ng_Thi_Th%C6%A1\">Ho&agrave;ng Thi Thơ</a>&nbsp;v&agrave; Trịnh C&ocirc;ng Sơn&quot; trước&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Tr%C6%B0%E1%BB%9Dng_%C4%90%E1%BA%A1i_h%E1%BB%8Dc_S%C6%B0_ph%E1%BA%A1m_Hu%E1%BA%BF\">trường Đại học Sư phạm Huế</a></em>&quot; v&agrave; &quot;<em>tiếp theo l&agrave; cuộc tọa đ&agrave;m luận tội &quot;Trịnh C&ocirc;ng Sơn c&oacute; c&ocirc;ng hay c&oacute; tội&quot; tại Hội Văn nghệ Thừa Thi&ecirc;n - Huế. H&ocirc;m ấy c&oacute; cả&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Tr%E1%BA%A7n_Ho%C3%A0n_(nh%E1%BA%A1c_s%C4%A9)\">Trần Ho&agrave;n</a>, T&ocirc; Nhuận Vỹ,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nguy%E1%BB%85n_Khoa_%C4%90i%E1%BB%81m\">Nguyễn Khoa Điềm</a>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Ho%C3%A0ng_Ph%E1%BB%A7_Ng%E1%BB%8Dc_T%C6%B0%E1%BB%9Dng\">Ho&agrave;ng Phủ Ngọc Tường</a>, Nguyễn Đắc Xu&acirc;n, Trần Viết Ngạc v&agrave; v&agrave;i người nữa. C&oacute; người l&ecirc;n &aacute;n, nhưng cũng c&oacute; người bảo vệ. &ldquo;Tội&rdquo; của nhạc sĩ Trịnh C&ocirc;ng Sơn l&agrave; &ocirc;ng đ&atilde; l&agrave;m nhạc phản chiến một c&aacute;ch chung chung, kh&ocirc;ng ph&acirc;n biệt được chiến tranh x&acirc;m lược v&agrave; chiến tranh giải ph&oacute;ng d&acirc;n tộc trong b&agrave;i &ldquo;Gia t&agrave;i của mẹ&rdquo; với c&acirc;u Hai mươi năm nội chiến từng ng&agrave;y. Thậm ch&iacute; &ocirc;ng c&ograve;n l&agrave;m nhạc ca ngợi địch trong b&agrave;i &ldquo;Cho một người nằm xuống&quot; thương tiếc đại t&aacute; kh&ocirc;ng qu&acirc;n S&agrave;i G&ograve;n Lưu Kim Cương tử trận &ndash; người đ&atilde; từng cưu mang &ocirc;ng. Nhiều người ph&aacute;t biểu biện hộ cho Trịnh C&ocirc;ng Sơn: &ldquo;Đ&uacute;ng l&agrave; Trịnh C&ocirc;ng Sơn đ&atilde; l&agrave;m nhiều bản nhạc phản chiến, anh được mệnh danh l&agrave; người l&agrave;m nhạc phản chiến số 1 thời ấy giống như Bob Dylan, Joan Baez ở b&ecirc;n Mỹ. Trịnh C&ocirc;ng Sơn l&agrave; một nhạc sĩ tự do, anh theo đuổi chủ nghĩa nh&acirc;n bản chung chung kh&aacute;c ch&uacute;ng ta. Nhưng anh l&agrave;m nhạc trong v&ugrave;ng tạm chiếm, người nghe nhạc phản chiến của anh l&agrave; l&iacute;nh Cộng h&ograve;a. Rất nhiều l&iacute;nh của Thiệu đ&atilde; bỏ ngũ v&igrave; nghe bản nhạc Người con g&aacute;i da v&agrave;ng của anh. Chẳng c&oacute; người l&iacute;nh c&aacute;ch mạng n&agrave;o bỏ ngũ v&igrave; nghe nhạc của Trịnh C&ocirc;ng Sơn cả. Cũng như ng&agrave;y xưa b&ecirc;n Trung Quốc, Trương Lương thổi s&aacute;o đ&acirc;u phải để cho qu&acirc;n m&igrave;nh bu&ocirc;ng kiếm! Đ&acirc;u phải tự dưng ch&iacute;nh quyền Thiệu ra lệnh tịch thu những b&agrave;i h&aacute;t của Sơn&rdquo;. V&agrave; ch&iacute;nh xấp t&agrave;i liệu đăng lệnh của cựu Tổng thống&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Nguy%E1%BB%85n_V%C4%83n_Thi%E1%BB%87u\">Nguyễn Văn Thiệu</a>&nbsp;cấm phổ biến nhạc Trịnh C&ocirc;ng Sơn, lệnh cấm mang số 33 ng&agrave;y 8.2.1969, đ&atilde; c&oacute; sức thuyết phục lớn đối với những người tham dự tọa đ&agrave;m. Sau cuộc tọa đ&agrave;m, Trịnh C&ocirc;ng Sơn phải viết kiểm điểm. Hồi ấy, những bản kiểm điểm n&oacute;i kh&ocirc;ng đ&uacute;ng vấn đề thường phải viết lại. Trịnh C&ocirc;ng Sơn chưa quen lối sinh hoạt n&agrave;y n&ecirc;n rất ch&aacute;n chường...</em>&quot; Trong thời hậu chiến n&agrave;y, cả nước rất kh&oacute; khăn v&agrave; như bao người Việt kh&aacute;c, Trịnh C&ocirc;ng Sơn cũng được điều đi lao động sản xuất, khi th&igrave; trồng khoai lang, l&uacute;c cấy l&uacute;a tr&ecirc;n những c&aacute;nh đồng đầy bom đạn chưa th&aacute;o gỡ.</p>', 'zxc', 'image/jpeg', 'gaugau.jpg', 'php2711.tmp.jpg', 0, 0, 'xvzx', 'admin', '2020-01-11 16:20:47', 'admin', '2020-01-11 16:20:47', 0),
(24, 'xin viec', '<p>ong qu&aacute; tr&igrave;nh thiết kế web liệu bạn đ&atilde; nghe tới tr&igrave;nh soạn thảo văn bản CKEDITOR hay chưa?? ckeditor từ l&acirc;u đ&atilde; được biết đến l&agrave; một tr&igrave;nh soạn thảo văn bản HTML sẵn s&agrave;ng cho sử dụng được thiết kế để đơn giản h&oacute;a việc tạo ra nội dung web. Đ&oacute;&nbsp;l&agrave;&nbsp;một tr&igrave;nh soạn thảo WYSIWYG mang lại c&aacute;c t&iacute;nh năng xử l&yacute; văn bản phổ biến trực tiếp đến trang web của bạn.</p>\r\n&nbsp;\r\n\r\n<p><img alt=\"Hướng dẫn soạn thảo văn bản dễ dàng trên web với trình chỉnh sửa CKEditor\" src=\"http://cudemvn.wap.sh/images/xtgem/huong-dan-soan-thao-van-ban-de-dang-tren-web-voi-trinh-chinh-sua-ckeditor-1.jpg\" title=\"Hướng dẫn soạn thảo văn bản dễ dàng trên web với trình chỉnh sửa CKEditor\" />&nbsp;<br />\r\n<a href=\"http://cudemvn.wap.sh/images/xtgem/huong-dan-soan-thao-van-ban-de-dang-tren-web-voi-trinh-chinh-sua-ckeditor-1.jpg\">[Tải ảnh]</a></p>\r\n<br />\r\n<strong>Ng&agrave;y h&ocirc;m nay t&ocirc;i chia sẻ với bạn điều g&igrave; về CKEditor:</strong>&nbsp;<br />\r\nM&igrave;nh xin điểm qua ưu điểm:&nbsp;&nbsp;<br />\r\n- Copy d&aacute;n nội dung dễ d&agrave;ng.&nbsp;&nbsp;<br />\r\n- Chỉnh sửa như word.&nbsp;&nbsp;<br />\r\n- Post b&agrave;i nhanh hơn.&nbsp;&nbsp;<br />\r\n- Nhiều bạn &iacute;t kiến thức HTML - CSS thiết kế 1 b&agrave;i viết th&igrave; n&oacute; rất hữu dụng.&nbsp;&nbsp;<br />\r\n<br />\r\n<strong>Hướng dẫn c&agrave;i đặt tr&igrave;nh soạn thảo văn bản CKEditor v&agrave;o Website:</strong>&nbsp;<br />\r\n- Bước 1: D&aacute;n code sau v&agrave;o trong cặp thẻ head. (1 trong 2 code dưới)&nbsp;<br />\r\n+ Bản r&uacute;t gọn:&nbsp;', 'asd', 'image/jpeg', 'meomeo.jpg', 'php8EF8.tmp.jpg', 9, 0, 'asd', 'admin', '2020-01-11 16:45:16', 'admin', '2020-01-11 16:45:16', 0),
(25, 'xin viec 2', 'kasdas asd', 'xcvxc', 'image/jpeg', 'meomeo.jpg', 'phpB2A.tmp.jpg', 9, 0, 'Slug', 'admin', '2020-01-11 16:45:47', 'admin', '2020-01-11 16:45:47', 0),
(26, 'xin viec 3', 'Kỷ niệm ng&agrave;y xưa vẫn c&ograve;n đ&acirc;u đ&oacute;, những bạn b&egrave; chung những con đường nhỏ<br />\r\nK&yacute; ức ng&agrave;y n&agrave;o c&ograve;n đ&oacute; những buổi ấu thơ<br />\r\n<img alt=\"\" src=\"/ckfinder/userfiles/images/meomeo(1).jpg\" style=\"height:500px; width:500px\" />Khi n&agrave;o em c&oacute; thể đi chơi với anh hả em<br />\r\nM&egrave;o con đ&aacute;ng y&ecirc;u v&agrave; tuổi thơ của t&ocirc;i', 'gfg', 'image/jpeg', 'quelua.jpg', 'php324B.tmp.jpg', 9, 0, 'dfgdf', 'admin', '2020-01-11 16:47:03', 'admin', '2020-01-11 16:47:03', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
