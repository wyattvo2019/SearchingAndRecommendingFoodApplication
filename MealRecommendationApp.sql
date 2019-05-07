-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th5 07, 2019 lúc 08:00 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `MealRecommendationApp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `FOOD`
--

CREATE TABLE `FOOD` (
  `id` int(10) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `food_name` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `category` varchar(100) NOT NULL,
  `id_food_category` int(10) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `worktime` varchar(20) DEFAULT NULL,
  `rate` float NOT NULL,
  `menu` varchar(500) NOT NULL DEFAULT '  Menu trống',
  `image_path` varchar(500) DEFAULT NULL,
  `totalReview` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `FOOD`
--

INSERT INTO `FOOD` (`id`, `restaurant_id`, `food_name`, `address`, `category`, `id_food_category`, `district`, `latitude`, `longitude`, `worktime`, `rate`, `menu`, `image_path`, `totalReview`) VALUES
(1, 648869, 'Bubble Tea - Trà Sữa Đài Loan', '136 Xuân Thủy, Quận Cầu Giấy, Hà Nội', 'Café/Dessert, ', NULL, NULL, 21.0366, 105.786, NULL, 3.7, 'Đùi Gà Rán, Lạp Sườn, Má Đùi Rán, Cánh Gà Rán, Gà Xiên Que, Hướng Dương, Bò Khô, Gà Xé Cay, Lợn Cháy Tỏi, Xúc Xích, Nem Chua Rán, Chả Cá, Mực Khoanh, Tôm Hinh, Khoai Lang Kén, Khoa Tây Lắc Phomai, Kem Tuyết Sữa Chua  Việt Quất, Kem Tuyết Sữa Chua  Dâu, Kem Tuyết Sữa Chua  Xoài, Kem Tuyết Sữa Chua Chanh Leo, Kem tuyết Sữa Chua Cafe, Sữa Tươi Trân Châu Đường Nâu, Trà Olong Đào Hoa Quả Nhiệt Đới, Trà Dâu Nam Mỹ Chanh Vàng, Trà Hoa Quả Đặc Biệt, Trà Táo Xanh Hương Đào, Trà Bá Tước Hương Đào, Trà Đào', 'https://images.foody.vn/res/g65/648869/prof/s120x120/foody-mobile-16427517_56824099003-420-636268128576426646.jpg', 15),
(2, 648867, 'Bình Phú Quán - Đặc Sản Phan Rang', '27L Bình Phú, P. 10, Quận 6, TP. HCM', 'Quán ăn, ', NULL, NULL, 10.7394, 106.629, NULL, 4.15, 'Chả cuốn chả cá, Bánh căn hải sản, Bánh xèo hải sản, Bánh bèo, Bún canh chả cá, Bánh căn trứng, Bánh căn trứng cút, Bún mắm nêm chả cá, Bánh bắp sữa, Trà đá, ', 'https://images.foody.vn/res/g65/648867/prof/s120x120/foody-mobile-5-jpg-784-636301826162068912.jpg', 9),
(3, 648871, 'Bún, Miến & Phở Các Loại - Nguyễn Hoàng', '36 Nguyễn Hoàng, Quận Nam Từ Liêm, Hà Nội', 'Quán ăn, ', NULL, NULL, 21.0308, 105.775, NULL, 2.5, 'Phở Gà, Bún Ngan, Miến Ngan, ', 'https://images.foody.vn/res/g65/648871/prof/s120x120/foody-mobile-foody-mobile-foody-m-297-636268339247147973.jpg', 1),
(4, 648874, 'Long Quán - Bia Hơi & Hải Sản Tươi Sống', '5 Ngõ 18 Nguyễn Cơ Thạch, Quận Nam Từ Liêm, Hà Nội', 'Quán ăn, ', NULL, NULL, 21.0368, 105.766, NULL, 0, 'Nộm Hoa Chuối Tôm Thịt, Tai Heo Phi Tiêu, Khoai Tây Chiên, Khoai Lang Kén, Ngô Chiên, Salad Rau Trộn, Nộm Hoa Chuối Tai Lợn, Nộm Bò Bóp Thấu, Salad Cà Chua Dưa Chuột, Trâu Xé Tay, Rau Xanh Xào Theo Mùa, Cải Mèo Luộc Chấm Trứng, Đậu Lướt Ván, Đậu Luộc, Đậu Rán, Sụn Chiên Muối Ớt, Dưa Chuột Chẻ, Lạc Rang, Cơm Tám Thơm, Cá Kho Tộ, Sườn Xào Chua Ngọt, Ba Chỉ Luộc Chấm Mắm Tép, Ba Chỉ Rang, Thịt Trưng Mắm Tép, Trứng Đúc Thịt, Canh Cải Thịt, Canh Mùng Tơi, Canh Ngao Chua, Tôm Đồng Rang, Cơm Sườn Xào C', 'https://images.foody.vn/res/g65/648874/prof/s120x120/foody-mobile-556-jpg-605-636268124164791875.jpg', 0),
(5, 648878, 'Bún Chả, Bánh Mì & Cháo Các Loại - KĐT Mỹ Đình', 'Tầng 1 C7 KĐT Mỹ Đình 1, Quận Nam Từ Liêm, Hà Nội', 'Quán ăn, ', NULL, NULL, 21.0309, 105.762, NULL, 2.5, 'Bún Chả, Bánh Mỳ Sốt Vang, Cháo Tim Gan, Mỳ Tôm Tim Cật, Mỳ Tôm Sốt Vang, ', 'https://images.foody.vn/res/g65/648878/prof/s120x120/foody-mobile-foody-khuong-huy-bun-288-636268156004654591.jpg', 1),
(6, 648899, 'Ăn Vặt Bạch Mai - Shop Online', 'Ngõ Chùa Liên Phái, Bạch Mai, Quận Hai Bà Trưng, Hà Nội', 'Shop Online, ', NULL, NULL, 21.0049, 105.849, NULL, 0, 'Nem Chua Rán, Bánh Mì Cay Hải Phòng Có Ruốc, Phô Mai Que, Khoai Tây Chiên, Bánh Mì Cay Hải Phòng, ', 'https://images.foody.vn/res/g65/648899/prof/s120x120/foody-mobile-foody-ship-do-an-bac-127-636268370622478904.jpg', 0),
(7, 648909, 'Bánh Mì Doner Kebab - Đội Cấn', '218 Đội Cấn, Quận Ba Đình, Hà Nội', 'Quán ăn, ', NULL, NULL, 21.0354, 105.819, NULL, 4.65, 'Bánh Mì Kebab, ', 'https://images.foody.vn/res/g65/648909/prof/s120x120/foody-mobile-foody-banh-mi-donner-339-636269011458672453.jpg', 2),
(8, 648914, 'Mia Cafe', '4 Hoàng Sâm, Quận Cầu Giấy, Hà Nội', 'Café/Dessert, ', NULL, NULL, 21.0455, 105.799, NULL, 4.8, 'Sữa Chua Cacao, Sữa Chua Cafe, Sữa Chua Hoa Quả, Sinh Tố Chuối, Sinh Tố Cam Xoài, Sinh Tố Xoài, Sinh Tố Chuối Dâu, Nước Chanh, Nước Chanh Bạc Hà, Nước Chanh Leo, Ép Dưa Hấu, Ép Ổi, Ép Cam, Ép Bưởi, Ép Táo, Ép Cóc, Ép Dứa, Nước Ép Cà Rốt, Cafe Đá, Cafe Nóng, Bạc Xỉu, Cafe Sữa, Cacao Đá, Cacao Nóng, ', 'https://images.foody.vn/res/g65/648914/prof/s120x120/foody-mobile-cf-mia-jpg-749-636268229413602703.jpg', 5),
(9, 648923, 'Quán Ngon - Bánh Đa Cá & Bún Đậu Mẹt', '1 Ngô Thì Nhậm, Quận Hà Đông, Hà Nội', 'Quán ăn, ', NULL, NULL, 20.9681, 105.769, NULL, 3.25, 'Bún Đậu Đầy Đủ, ', 'https://images.foody.vn/res/g65/648923/prof/s120x120/foody-mobile-12742181_58835429465-217-636268170003670658.jpg', 1),
(10, 648922, 'Mì Vằn Thắn - Hàng Vôi', '19 Hàng Vôi, Quận Hoàn Kiếm, Hà Nội', 'Quán ăn, ', NULL, NULL, 21.0302, 105.857, NULL, 2.9, 'Mì Vằn Thắn, Phở Gà, Phở Cánh Gà, Phở Đùi Gà, Xôi Trứng, Xôi Thịt, Xôi Gà, Sủi Cảo Tôm Tươi, Mì Khô, ', 'https://images.foody.vn/res/g65/648922/prof/s120x120/foody-mobile-1660352_332705670213-256-636268988016109968.jpg', 2),
(11, 648926, 'Lotteria - Artemis Tower', 'Tầng 5, Tòa Nhà Artemis, 3 Lê Trọng Tấn, Quận Thanh Xuân, Hà Nội', 'Nhà hàng, ', NULL, NULL, 21.0006, 105.828, NULL, 3.35, 'Burger bò teriyaki, Burger tôm, Burger phô mai, Bulgogi burger, Big star, Burger gà cay, Burger cá, Burger gà thượng hạng, Burger bò Teriyaki Value, Burger tôm Value, Big Star Value, Burger phô mai Value, Burger gà cay Value, Burger gà thượng hạng Value, Bulgogi Value, Burger cá value, Family set 1, Burger bò Teriyaki combo, Family set 2, Big Star combo, Burger Gà thượng hạng combo, Burger phô mai combo, Bulgogi combo, Burger cá combo, Burger tôm combo, Gà H&S (1 miếng), Gà rán (1 miếng), Gà sốt', 'https://images.foody.vn/res/g65/648926/prof/s120x120/foody-mobile-2-jpg-629-636269995556781425.jpg', 5),
(12, 648924, 'Gà Rán KFC - Artemis Tower', 'Tòa Nhà Artemis, 3 Lê Trọng Tấn, Quận Thanh Xuân, Hà Nội', 'Nhà hàng, ', NULL, NULL, 21.0006, 105.828, NULL, 3.85, 'Mochi Thơm, Mochi Socola, Bánh Xếp Thơm, Gà Quay Tiêu 1 Miếng, 3 Miếng Gà Giòn Cay, 5 Miếng KFC Hot Wings, 1 Miếng Gà Giòn Cay, 3 Miếng Gà Giòn Không Cay, 3 Miếng KFC Hot Wings, 2 Miếng Gà Giòn Cay, 6 Miếng Gà Giòn Cay, 1 Miếng Gà Quay Tiêu, 6 Miếng Gà Giòn Không Cay, 1 Miếng Gà Giòn Không Cay, 1 Miếng Gà Quay Giấy Bạc, 2 Miếng Gà Giòn Không Cay, Gà Quay Giấy Bạc, 3 Miếng Gà Truyền Thống, 9 Miếng Gà Giòn Cay, 1 Miếng Gà Truyền Thống, 6 Miếng Gà Truyền Thống, 12 Miếng Gà Giòn Cay, 12 Miếng Gà Tru', 'https://images.foody.vn/res/g65/648924/prof/s120x120/foody-upload-api-foody-mobile-hang-jpg-180601164829.jpg', 11),
(13, 648936, 'Trà Sữa Rột Rột', '280 Hoàng Hoa Thám, P. Hiệp Thành, Thị xã Thủ Dầu Một, Bình Dương', 'Café/Dessert, ', NULL, NULL, 11.0019, 106.667, NULL, 4.4, 'Trà sữa Thái xanh, Trà sữa Thái xanh trân châu trắng, Trà sữa Thái xanh bánh flan, Trà sữa Thái xanh thạch trái cây, Trà sữa Thái xanh trân châu, Trà sữa Thái xanh củ năng tươi, Trà sữa Thái xanh thạch phô mai, Trà sữa Thái xanh hạt thủy tinh, Trà sữa Thái xanh hạt dừa tươi, Trà sữa Thái xanh thạch socola, Trà sữa Thái xanh thạch sợi, Trà sữa Thái xanh pudding, Trà sữa Thái xanh full topping, Trà sữa truyền thống full topping, Trà đào, Sữa tươi trân châu đường đen, Trà sữa truyền thống, Trà sữa ', 'https://images.foody.vn/res/g65/648936/prof/s120x120/foody-mobile-hmbb-jpg-146-636268127675947174.jpg', 3),
(14, 648941, 'Meet Fresh - Phan Xích Long', '181 Phan Xích Long, P. 7, Quận Phú Nhuận, TP. HCM', 'Café/Dessert, ', NULL, NULL, 10.7981, 106.689, NULL, 3.35, 'Premium Meet Fresh Signature, Snowflake Taro Ball, Tofu pudding no.1, Coconut sago No. 3, Trà thảo mộc, Trà bí đao, Trà đen Truyền Thống, Trà xanh lài, Trà sữa truyền thống, Trà sữa Thạch Thảo Mộc, Trà sữa pudding, Trà sữa lài, Trà thảo mộc sữa tươi, Trà bí đao sữa tươi, Trà thảo mộc thạch thảo mộc, Trà lài sữa tươi trân châu, Trà sữa tươi trân châu, Trà bí đao viên khoai dẻo mini, Trà bí đao QQ, Trà bí đao chanh tươi, Trà đào, Trà dứa thạch dai & trân châu, Trà bí đao thạch thảo mộc, Slushy Xoà', 'https://images.foody.vn/res/g65/648941/prof/s120x120/foody-mobile-hmbb-jpg-125-636268120009497142.jpg', 81),
(15, 648957, 'Hải Phương - Ngan Đủ Món', '216 Đội Cấn, Ba Dinh District, Hà Nội', 'Quán ăn, ', NULL, NULL, 21.0352, 105.82, NULL, 0, 'Miến Trộn, Miến Ngan, Bún Khô, Bún Ngan, Ngan Luộc, Ngan Xào Lăn Sả Ớt, Mề Tràng Trứng, Canh Măng, Ngan Nướng Chảo, Lẩu Ngan, Giả Cầy, Nộm, Vịt Quay, Bia Hà Nội, Bia Sài Gòn, Bia Heineken, Lavie, Coca Lon, ', 'https://images.foody.vn/res/g65/648957/prof/s120x120/foody-mobile-foody-mobile-foody-b-305-636268340704549630.jpg', 0),
(16, 648956, 'Nice Meal - Thức Ăn Nhanh', '71/34A Phú Mỹ, P. 22, Quận Bình Thạnh, TP. HCM', 'Ăn vặt/vỉa hè, ', NULL, NULL, 10.7881, 106.714, NULL, 0, '[SPE - 1] Khoai tây nghiền & Xúc xích, [SPE-2] Trái cây hỗn hợp (chay), [SPE-5] Gà chiên kiểu Nhật, [SPE -6] Gà cuộn sốt mayo, [SPE-3] Phô mai viên, [SPE-4] Bánh rán (chay), [FF - 1] Fried chicken drum - stick (2 pieces), Wedges potato, Chicken karaage, Chicken nuggets, Corn totilla chips, French fries, [FF - 4] Chicken nuggets, Fried pork ball (12 balls), Fried chicken drum - stick (2 piece), Chicken pies, Cheese cubes (8 cubes), Fresh sausage (2 pieces), Mashed potato, Chicken skewer (5 skewer', 'https://images.foody.vn/res/g65/648956/prof/s120x120/foody-mobile-hmbb-jpg-688-636268136953808147.jpg', 0),
(17, 648965, 'Daisy Coffee', '4 Đường Số 17, P. Linh Chiểu, Quận Thủ Đức, TP. HCM', 'Café/Dessert, ', NULL, NULL, 10.8543, 106.76, NULL, 3.65, 'Hot milk coffee, Iced milk coffee, Hot black coffee, Iced black coffee, Hot white coffee, Iced white coffee, Latte, Mocha, Caramel macchiato, Trà đào, Hồng trà sủi bọt, Hồng trà mật ong, Trà chanh, Trà táo, Trà sữa Daisy, Trà sữa Thái đỏ, Trà sữa bạc hà, Trà sữa mật ong, Trà sữa chocolate, Trà sữa caramel, Trà sữa matcha, Espresso blended, Cookie & cream ice blended, Chocolate frappe, Chocolate cookie, Matcha frappuccino, Matcha mint blended, Sinh tố bơ, Sinh tố xoài, Sinh tố sapoche, Sinh tố ch', 'https://images.foody.vn/res/g65/648965/prof/s120x120/foody-mobile-asdfsdfsdf-jpg-355-636268163460801659.jpg', 2),
(18, 648971, 'Phở Nam - Phương Mai', '103D5 Lương Định Của, Quận Đống Đa, Hà Nội', 'Quán ăn, ', NULL, NULL, 21.0054, 105.834, NULL, 4.15, 'Phở Xào, Mỳ Xào, Phở Tái Nạm, Phở Tái Gầu, Phở Tái, Phở Áp Chảo, Phở Tái Lăn, ', 'https://images.foody.vn/res/g65/648971/prof/s120x120/foody-mobile-135-jpg-487-636268149654819544.jpg', 2),
(19, 648999, 'Lẩu 1 Người - Giếng Đáy', '160 Giếng Đáy, Tp. Hạ Long, Quảng Ninh', 'Quán ăn, ', NULL, NULL, 20.9778, 107.011, NULL, 4, 'Lẩu Thập Cẩm, Lẩu Gà, Lẩu Cá, Lẩu Hải Sản, Lẩu Bò, Lẩu Sườn Sụn Non, Bún Mẹt, Khoai Kén, ', 'https://images.foody.vn/res/g65/648999/prof/s120x120/foody-mobile-141-jpg-406-636269012848584982.jpg', 2),
(20, 649005, 'Xiên Nướng FOOD Corner', '253 Lê Thanh Nghị, Quận Hải Châu, Đà Nẵng', 'Quán ăn, ', NULL, NULL, 16.0361, 108.218, NULL, 0, 'Bò kho, Bò ốp la, Cháo bò Úc, Mỳ Ý sốt bò Úc băm, Cà phê sữa, Cà phê đen, Steak beef, Combo sáng, Chả ram Bình Định, Khoai tây chiên, Rau muống xào tỏi, Mồng tơi xào tỏi, Cải ngọt xào tỏi, Salad cá ngừ, Salad bò Úc đặc biệt, Salad Cesar ba chỉ bò Mỹ, Salad cà chua dưa leo, Gỏi bò Úc bóp thấu, Lẩu bò Úc kim chi 2 người, Lẩu bò Úc kim chi 4 người, Lẩu bò Úc thập cẩm 2 người, Lẩu bò Úc thập cẩm 4 người, Bò Úc nhúng dấm 2 người, Bò Úc nhúng dấm 4 người, Bò Úc nhúng ớt 2 người, Bò Úc nhúng ớt 4 người', 'https://images.foody.vn/res/g65/649005/prof/s120x120/foody-mobile-fo-jpg-664-636268252299365191.jpg', 0),
(21, 649017, 'NTEA Drink - Đội Cấn', '294 Đội Cấn, Quận Ba Đình, Hà Nội', 'Café/Dessert, ', NULL, NULL, 21.0379, 105.813, NULL, 2.9, 'Trà Hoa Đậu Biếc Sữa Gạo Hàn Quốc, Trà Xanh Hoa Quả Đặc Biệt, Macchiato, King (Trân Châu Ngọc Trai + Thạch Hoa Quả + Pudding), Trà Hoa Đậu Biếc Sủi Bọt, Hồng Trà Sủi Bọt, Trà Ô Long Sủi Bọt, Trà Đen Bá Tước Sủi Bọt, Lục Trà Nhài Sủi Bọt, Hồng Trà, Lục Trà Nhài, Trà Ô Long, Trà Bá Tước, Hồng Trà Kem Muối Biển, Lục Trà Nhài Kem Muối Biển, Trà Ô Long Kem Muối Biển, Trà Bá Tước Kem Muối Biển, Trà Sữa Socola, Trà Sữa Caramel, Trà Sữa Đào, Trà Sữa Vanilla, Trà Sữa Matcha, Trà Sữa Hạt Dẻ, Trà Sữa Hokka', 'https://images.foody.vn/res/g65/649017/prof/s120x120/foody-upload-api-foody-mobile-ntea-jpg-180607092318.jpg', 3),
(22, 649019, 'Cơm Gà Việt', '42K Lý Thường Kiệt (Đối Diện Trường Việt Đức), Quận Hoàn Kiếm, Hà Nội', 'Quán ăn, ', NULL, NULL, 21.0238, 105.85, NULL, 3, 'Cơm Đùi Gà Quay, Cơm Bò Sốt Tiêu Đen, Cơm Tôm Rang Thịt Ba Chỉ, Cơm Ba Chỉ Rang Cháy Cạnh, Bún Chả, Cơm Cá Bông Lau Kho Tộ, Cơm Trứng Đúc Thịt, Cơm Thịt Nướng, Cơm Sườn Sốt Tiêu Đen, Cơm Gà Rang Gừng, Cơm Trứng Tráng Hành, Cơm Đậu Sốt Với Thịt, Cơm Cá Trắm Sốt Cà Chua, Miến Gà Mọc, Bún Gà Mọc, Phở Gà Mọc, Miến Gà, Bún Gà, Phở Gà, Cơm Đậu Sốt Cà Chua, Cơm Tôm Rang Lá Chanh, Cơm Cá Trắm Rim Tiêu, ', 'https://images.foody.vn/res/g65/649019/prof/s120x120/foody-mobile-2-jpg-673-636269029652407394.jpg', 1),
(23, 649004, 'Brio Cafe', '308/5 Tôn Đức Thắng, Quận Liên Chiểu, Đà Nẵng', 'Café/Dessert, ', NULL, NULL, 16.0566, 108.168, NULL, 3.7, 'Ổi xí muội, Hạt dưa, Cóc ngâm, Xoài ngâm, Chanh, Cam, Chanh xí muội, Dâu ép, Chanh dây, Dứa ép, Ổi ép, Dưa hấu ép, Cà chua ép, Cà rốt ép, Sấu ngâm, Smoothies dâu, Smoothies đào, Smoothies kiwi, Smoothies việt quất, Smoothies xoài dứa, Smoothies chanh dây, Trà xanh đá xay, Socola đá xay, Oreo đá xay, Việt quất, Đào, Dâu, Kiwi, Xoài dứa, Chanh dây, Sữa tươi, Sữa đá đập, Sữa chua, Sữa chua việt quất, Sữa chua xoài dứa, Sữa chua kiwi, Sữa chua dâu, Sữa chua đào, Sữa chua nha đam, Soda táo, Soda việt', 'https://images.foody.vn/res/g65/649004/prof/s120x120/foody-mobile-bri-jpg-563-636300030928160318.jpg', 4),
(24, 649027, 'Trà Sữa Bobapop - Đinh Tiên Hoàng', '87R Đinh Tiên Hoàng, P.13, Quận Bình Thạnh, TP. HCM', 'Café/Dessert, ', NULL, NULL, 10.7972, 106.696, NULL, 3.3, 'Trà Quan Âm sủi bọt, Trà xanh sủi bọt, Hồng trà sủi bọt, Trà gạo nâu sủi bọt, Trà Alisan sủi bọt, Trà Ôlong sủi bọt, Trà bí đao sủi bọt, Sủi bọt lá cây, Trà hoa sủi bọt, Trà 4 mùa xuân sủi bọt, Trà tươi sủi bọt, Trà sữa trân châu, Trà sữa trà xanh, Trà sữa socola, Trà sữa khoai môn, Trà sữa Ceylon, Trà sữa bạc hà, Trà sữa hạnh nhân, Trà sữa caramen, Trà sữa dâu tây, Trà sữa vani, Trà sữa đào, Trà sữa bí đao, Trà sữa kiwi, Trà sữa vải, Trà sữa cafe, Trà sữa sen, Trà sữa mật ong, Trà sữa 3Q, Trà s', 'https://images.foody.vn/res/g65/649027/prof/s120x120/foody-mobile-1-jpg-413-636268250072332293.jpg', 67),
(25, 649010, 'Mì Quảng Bà Sâm - Phạm Cự Lượng', '103 Phạm Cự Lượng, Quận Sơn Trà, Đà Nẵng', 'Quán ăn, ', NULL, NULL, 16.0567, 108.237, NULL, 4.65, 'Mì quảng bò, Mì quảng gà, Mì quảng cá lóc, ', 'https://images.foody.vn/res/g65/649010/prof/s120x120/foody-mobile-m-sam-jpg-658-636268263285154713.jpg', 2),
(26, 649030, 'Gạch Cafe - Bùi Đình Tuý', '131 Bùi Đình Tuý, P. 24, Quận Bình Thạnh, TP. HCM', 'Café/Dessert, ', NULL, NULL, 10.8079, 106.705, NULL, 2.95, 'Nước Ép Dưa Hấu, Nước Ép Thơm, Nước Ép Cà Chua, Nước Ép Cà Rốt, Nước Ép Chanh Dây, Nước Ép Ổi, Nước Ép Cam, Nước Ép Táo, Nước Ép Bưởi, Nước Ép Cam Sữa, Nức Ép Cam Mật Ong, Nước Ép Dâu, Nước Ép Hỗn Hợp, Trái Cây Thập Cẩm Hạt Đác, Yaourt Nếp Cẩm Hạc Đác, Yaourt Hạt Đác, Yaourt Cam, Yaourt Cà Rốt, Yaourt Chanh Dây, Yaourt Thơm, Yaourt phúc bồn tử, Sinh Tố Dâu Tây, Sinh Tố Bơ, Sinh Tố Sapoche, Sinh Tố Cam, Sinh Tố Dầu Tằm, Sinh Tố Dưa Gang, Sinh Tố Dừa, Sinh Tố Đu Đủ, Sinh Tố Mãng Cầu, Sinh Tố Phúc ', 'https://images.foody.vn/res/g65/649030/prof/s120x120/foody-mobile-hmbb-jpg-583-636268256604873535.jpg', 11),
(27, 649023, 'Bún Măng Ngan & Dọc Mùng', '47B Đội Cấn, Quận Ba Đình, Hà Nội', 'Quán ăn, ', NULL, NULL, 21.0345, 105.831, NULL, 3.75, 'Bún Bò Giò Đậu, Bún Riêu, Bún Ốc To, Bún Riêu Đậu, Bún Ốc Đậu, Bún Riêu Bò Giò, Bún Riêu Bò Đậu, Bún Riêu Bò, Bún Ốc To Bò, Bún Riêu Bò Đặc Biệt, ', 'https://images.foody.vn/res/g65/649023/prof/s120x120/foody-mobile-14980629_98375640510-789-636269889105635670.jpg', 1),
(28, 649038, 'MD House Coffee Shop', '32 Nguyễn Thái Học, Hue City, Huế', 'Café/Dessert, ', NULL, NULL, 16.468, 107.598, NULL, 3.65, 'Trà sen phomai, Trà chanh dây, Trà dâu tây, Trà dâu tây phomai, Trà đào, Trà chanh, Matcha latte, Matcha frap, Matcha coconut, Matcha cheese, Matcha phomai, Trà long nhãn hồng táo, Trà bát bảo, Trà sen long nhãn, Trà gừng, Granita xoài, Granita dâu tây, Granita việt quất, Granita nho đen, Sunshine, Sunrise, Blue ocean, Sữa, Socola, Cacao, Socola chuối, Socola chuối đậu phộng, Socola bánh quy, Sữa chua đá, Sữa chua xoài, Sữa chua dâu tây, Sữa chua việt quất, Sữa chua nho đen, Sữa chua kiwi, Nha đ', 'https://images.foody.vn/res/g65/649038/prof/s120x120/foody-mobile-md-jpg-755-636298354652393211.jpg', 6),
(29, 649077, 'Gà Tần Ngon Ngon - Shop Online', '21 Ngõ 78 Ngô Sỹ Liên, Quận Đống Đa, Hà Nội', 'Shop Online, ', NULL, NULL, 21.0262, 105.837, NULL, 3.55, 'Gà Tiềm Ác ( Gà đen ), Nước Ngọt, Nước Khoáng, ', 'https://images.foody.vn/res/g65/649077/prof/s120x120/foody-mobile-2-jpg-430-636268344098663806.jpg', 5),
(30, 649097, 'TH true mart - Hoàng Hoa Thám', '181 Hoàng Hoa Thám, Quận Ba Đình, Hà Nội', 'Shop/Cửa hàng, ', NULL, NULL, 21.0414, 105.822, NULL, 0, 'Sữa Chua Ăn Dừa Tự Nhiên - Thùng, Sữa Chua Ăn Thanh Trùng TH true YOGURT Công Thức TOPKID Hương Vanilla Tự Nhiên 60g - Thùng, Sữa Chua Ăn Thanh Trùng TH true YOGURT Công Thức TOPKID Hương Chuối – Lúa Mạch Tự Nhiên 60g - Thùng, Sữa Chua Ăn Có Đường TH True Yogurt 100g - Thùng, Sữa Chua Ăn Không Đường TH True Yogurt 100g - Thùng, Sữa Chua Ăn Nha Đam Tự Nhiên - Thùng, Sữa Chua Ăn Trà Xanh Matcha Tự Nhiên - Thùng, Sữa Chua Ăn Sầu Riêng Tự Nhiên - Thùng, Sữa Chua Ăn Men Sống Việt Quất Tự Nhiên - Thùn', 'https://images.foody.vn/res/g65/649097/prof/s120x120/foody-upload-api-foody-mobile-ava-now-960x550-jpg-181228164626.jpg', 0),
(31, 649096, 'Ding Tea - Lạc Long Quân', '17 Lạc Long Quân, Quận Tây Hồ, Hà Nội', 'Café/Dessert, ', NULL, NULL, 21.0479, 105.806, NULL, 2.9, 'Trà Sữa Ổi, Trà Xanh Ổi, Nước Ổi Ô Mai, Trà Đen Vị Đào, Trà Xanh Kiwi, Trà Xanh Vị Đào, Trà Đen Đào Miếng, Trà Đen Vị Mận, Trà Đen Vị Vải, Trà Xanh Vị Vải, Trà Đen Vị Mật Ong, Trà Đen Ô Mai, Trà Đen Vị Nho, Trà Xanh Vị Chanh Leo, Trà Xanh Vị Nho, Trà Xanh Mật Ong, Trà Chanh Quất, Trà Xanh Ô Mai, Trà Đen Vị Xoài, Trà Xanh Vị Xoài, Trà Xanh Vị Mận, Trà Đen Vị Dâu Tây, Trà Đen Vị Chanh Leo, Trà Xanh Vị Dâu Tây, Trà Xanh Vị Dứa, Trà Xanh Vị Quất, Trà Đen Vị Dứa, Trà Đen Vị Cam, Trà Xanh Vị Cam, Trà ', 'https://images.foody.vn/res/g65/649096/prof/s120x120/foody-mobile-575-jpg-873-636268384373659974.jpg', 10),
(32, 649106, 'Cháo Vịt Hiền Trang', '308 Huỳnh Văn Cù, Thị xã Thủ Dầu Một, Bình Dương', 'Quán ăn, ', NULL, NULL, 10.9898, 106.645, NULL, 3.75, 'Cháo vịt, Xôi, Gà nướng, Vịt nướng, Vịt luộc, ', 'https://images.foody.vn/res/g65/649106/prof/s120x120/foody-mobile-hmbb-jpg-255-636268957500173156.jpg', 2),
(33, 649107, 'Bánh Mì 2T - Tô Hiệu', '3 Tô Hiệu, Quận Hà Đông, Hà Nội', 'Tiệm bánh, ', NULL, NULL, 20.9707, 105.782, NULL, 0, 'Sữa Đậu, Bánh Mì Bò Nướng, Bánh Mì Pate - Thịt - Ruốc, Bánh Mì Thịt Nướng Sốt Tiêu Cay, Bánh Mì Thịt Nướng Salamander, ', 'https://images.foody.vn/res/g65/649107/prof/s120x120/foody-mobile-j-jpg-267-636268408798773949.jpg', 0),
(34, 649110, 'Bún & Miến Ngan - Ngõ Văn Chương 2', '5E2 Ngõ Văn Chương 2, Khâm Thiên, Quận Đống Đa, Hà Nội', 'Quán ăn, Ăn vặt/vỉa hè, ', NULL, NULL, 21.0204, 105.838, NULL, 3.9, 'Bún Ngan, Miến Ngan, ', 'https://images.foody.vn/res/g65/649110/prof/s120x120/foody-mobile-bm-ngan3-jpg-577-636268972050800800.jpg', 4),
(35, 649120, 'Gemini Coffee - Giang Văn Minh', '43 Giang Văn Minh, Quận Ba Đình, Hà Nội', 'Café/Dessert, ', NULL, NULL, 21.0314, 105.827, NULL, 3.1, 'Cà Phê Cốt Dừa, Cà Phê Bạc Xỉu, Cà Phê Nâu, Cà Phê Đen, Cacao Cốt Dừa, Cacao, Chocolate, Cookie And Cream, Mocha Ice Blended, Caramel Ice Blended, Việt Quất Ice Blended, Trà Quất Mật Ong, Trà Chanh Sả, Trà Đào, Trà Xoài, Trà Kiwi, Trà Vải, Cốt Dừa Cốm Xanh, Trà Bưởi Hồng, Trà Hoa Quả Nhiệt Đới, Đậu Xanh Tuyết, Xoài Macchiato, Trà Nhãn, Matcha Ice Blended, Matcha Macchiato, Matcha Latte, Sữa Chua Đánh Đá Cacao, Sữa Chua Đánh Đá Cafe, ', 'https://images.foody.vn/res/g65/649120/prof/s120x120/foody-mobile-11937443_16792976590-620-636268990346798971.jpg', 21),
(36, 649129, 'Những Người Bạn Sushi', '64 Vạn Kiếp, P. 3, Quận Bình Thạnh, TP. HCM', 'Quán ăn, ', NULL, NULL, 10.8014, 106.693, NULL, 3.8, 'Sushi cá hồi, Sét sushi những người bạn, Sushi tôm chiên xù, Sushi tôm, Sushi trứng cuộn tamago, Sushi thanh cua, Sushi bạch tuộc, Sushi lươn Nhật, Sushi trứng cuộn thanh cua phô mai, Combo A, Sushi cá trích ép trứng vàng, Sushi cá trích ép trứng đỏ, Combo(nhỏ), Sashimi cá hồi, Sushi tổng hợp và sashimi cá hồi, Sashimi cá hồi tô, Sashimi cá trích ép trứng vàng, Sashimi lườn cá hồi, Sashimi thập cẩm, Sashimi cá trích ép trứng đỏ, Sashimi bạch tuộc, Cuộn thuyền trứng tôm đỏ, Cuộn thuyền trứng cá ', 'https://images.foody.vn/res/g65/649129/prof/s120x120/foody-upload-api-foody-mobile-33b-jpg-181101144620.jpg', 30),
(37, 649140, 'Quán Bụi - Trà Sữa & Ăn Vặt', '32 Hàn Thuyên, P. 10, Tp. Vũng Tàu, Vũng Tàu', 'Ăn vặt/vỉa hè, ', NULL, NULL, 10.3903, 107.11, NULL, 4.4, 'Cà phê đen đá, Cà phê sữa đá, Bạc sỉu, Trà đào, Trà Thái xanh, Trà đào cam sả, Trà táo, Trà Thái đỏ, Trà tắc, Trà hibiscus, Hồng trà đào, Hồng trà dâu, Hồng trà vải, Hồng trà bạc hà, Hồng trà táo, Hồng trà ổi, Hồng trà me, Hồng trà cam, Hồng trà kiwi, Hồng trà cherry, Hồng trà sầu riêng, Hồng trà dưa lưới, Hồng trà mãng cầu, Hồng trà khoai môn, Hồng trà việt quất, Hồng trà socola, Hồng trà cacao, Trà sữa việt quất, Trà sữa dưa lưới, Trà sữa socola, Trà sữa bạc hà, Trà sữa khoai môn, Trà sữa caca', 'https://images.foody.vn/res/g65/649140/prof/s120x120/foody-mobile-foody-tra-sua-an-vat-330-636274156138927576.jpg', 3),
(38, 649146, 'Oh Ngon - Ăn Vặt Đường Phố', '3 Chợ Gạo, Quận Hoàn Kiếm, Hà Nội', 'Ăn vặt/vỉa hè, ', NULL, NULL, 21.0367, 105.853, NULL, 0, 'Thịt Xiên Truyền Thống, Thịt Xiên Sa Tế, Thịt Xiên Cay Tê, Bánh Mì Thịt Xiên, Khoai Trộn Cay Tê, Đậu Phụ Tẩm Cay, Nem Nướng Xứ Thanh, Salad, ', 'https://images.foody.vn/res/g65/649146/prof/s120x120/foody-mobile-17626189_18598614008-321-636269104142662528.jpg', 0),
(39, 649168, 'Bách Restaurant - Ẩm Thực Trung Hoa', '481 Phan Văn Trị, P. 5, Quận Gò Vấp, TP. HCM', 'Nhà hàng, ', NULL, NULL, 10.8229, 106.693, NULL, 3.7, 'Trứng hột vịt bắc thảo, Há cảo thịt cua, Bánh quẩy hải sản, Bánh củ cải chiên sốt XO, Bánh củ cải chiên, Bánh tạc hải sản sốt mayonnaise, Há cảo thanh cua, Bánh nếp chiên mặn, Bánh tạc hải sản sốt wasabi, Bánh bao chỉ sầu riêng, Tổ ong sốt trụ hầu, Mì thêm 2 vắt, Gà tiềm thuốc bắc, Bồ câu tiềm sâm Hoa Kỳ, Soup bắp thịt cua gà xé, Gà tiềm đông trùng hạ thảo (phần), Soup bong bóng cá thịt cua, Soup nấm hải sản, Soup hải sản chua cay, Soup sò điệp hải hoàng, Soup sơn hào hải vị, Gà tiềm đông trùng ', 'https://images.foody.vn/res/g65/649168/prof/s120x120/foody-mobile-brif1qsf-jpg-376-636287086675236508.jpg', 34),
(40, 649191, 'Roma Pizza', '35 Ngô Thì Nhậm, Quận Liên Chiểu, Đà Nẵng', 'Nhà hàng, ', NULL, NULL, 16.07, 108.153, NULL, 4.15, 'Pizza hải sản, Pizza bò, Pizza phô mai, Pizza xúc xích, Pizza đặc biệt, Pizza gà, Pizza bắp, Pizza chay, Mì Ý bò băm, Mì Ý hải sản sốt kem, Mì Ý hải sản, Mì Ý bò băm đút lò, Bít tết sốt BBQ, Bít tết sốt tiêu xanh, Hambuger, Súp bắp cua, Khoai tây chiên, Salad tuna, Cá viên chiên, Bò viên chiên, Combo 1, Combo 5, Combo 4, Combo 3, Kid party deal, Combo 2, Trà sữa socola, Trà sữa Thái, Trà sữa đào, Trà sữa việt quất, Trà sữa dâu, Trà sữa bạc hà, Soda dâu, Soda việt quất, Soda chanh, Soda đào, Soda', 'https://images.foody.vn/res/g65/649191/prof/s120x120/foody-mobile-ro-jpg-567-636318382640205111.jpg', 21),
(41, 649198, 'Mugong Tea - Trà Sữa Đài Loan - Nguyễn Trãi', '531 Nguyễn Trãi, Quận Thanh Xuân, Hà Nội', 'Café/Dessert, ', NULL, NULL, 20.9862, 105.796, NULL, 3.55, 'Pizza Bolognese (Pizza Bò), Khoai Tây Lắc Phomai, Cánh Gà Giòn Cay, Đùi Gà Giòn Cay, Bánh Trứng Gà Non Kẹp Kem, Sausage Pizza (Pizza Xúc xích), Seafood Pizza (Pizza Hải Sản), Pizza Hawaiian (Pizza Dăm Bông Dứa), Bánh Trứng Gà Non HK, Mì Cay Hải Sản, Mì Tôm Xúc Xích Bò Khô, Mì Tôm Chanh Bò Khô, Bánh Gạo Cay Tokbokki, Mẹt Chiên Thập Cẩm, Kimbap Chiên, Phomai que, Xúc Xích Chiên (Đĩa), Nem Chua Rán, Cánh Gà Giòn, Đùi Gà Giòn, Chả Mực Xoắn, Khoai Lang Kén, Khoai Lang Cọng, Snack Khoai Tây, Trà sữa h', 'https://images.foody.vn/res/g65/649198/prof/s120x120/foody-mobile-mugong-tea-jpg-259-636286508309035686.jpg', 29),
(42, 649183, 'Nhân Ka - Cháo Lươn & Miến Lươn', '4 Hoàng Ngân, Tổ 25, P. Phan Đình Phùng, Tp. Thái Nguyên, Thái Nguyên', 'Quán ăn, ', NULL, NULL, 21.5856, 105.842, NULL, 4, 'Gà Luộc, Móng Giò, Cánh Gà, Dạ Dày, Chân Gà, Cháo Lươn Bát To, Cháo Lươn Bát Nhỏ, Miến Lươn Xào, Miến Lươn Chan, Phở Gà, Phở Tràng Gà, Phở Tim Cật, Phở Lòng Mề, Óc Lợn, Mì Tôm, ', 'https://images.foody.vn/res/g65/649183/prof/s120x120/foody-mobile-2-jpg-989-636274205472332507.jpg', 1),
(43, 649204, 'Tiệm Ăn Vua Vịt Quay - Phạm Cự Lượng', '174 Phạm Cự Lượng, Quận Sơn Trà, Đà Nẵng', 'Quán ăn, ', NULL, NULL, 16.0578, 108.237, NULL, 3.8, 'Mẹt bánh bao chiên vịt quay, Mẹt bánh hỏi vịt quay, Mẹt cơm chiên gà quay, Mẹt cơm chiên vịt quay, Mẹt bánh hỏi lòng vịt xào, Mẹt bánh bao chiên heo sữa quay, Mẹt bánh hỏi heo sữa quay, Mẹt bún mắm vịt quay, Mẹt bánh bao chiên gà quay, Mẹt cơm chiên gà xé, Vịt quay dĩa lớn, Vịt quay dĩa nhỏ, Bún măng vịt đặc biệt, Gà xé dĩa nhỏ, Gà xé dĩa lớn, Gà quay dĩa nhỏ, Gà quay dĩa lớn, Heo sữa quay (1 kg), Bánh bao chiên, Lòng vịt trộn chua ngọt, Bánh hỏi, Cơm chiên trứng, Xôi chiên, Lòng vịt xào cần tỏ', 'https://images.foody.vn/res/g65/649204/prof/s120x120/foody-upload-api-foody-mobile-img_7022-jpg-180516095808.jpg', 66),
(44, 649203, 'Color Tea - Trà Sữa Trân Châu', '105 Nguyễn Gia Thiều, Tp. Bắc Ninh, Bắc Ninh', 'Café/Dessert, ', NULL, NULL, 21.1854, 106.072, NULL, 3.9, 'Trà Chanh Kim Quất Mật Ong, Trà Chanh Vàng Dâu Tây, Trà Chanh Dây Kiwi Nhiệt Đới, Trà Cam Ổi Đào, Trà Cam Bưởi Nhiệt Đới, Trà Cam Sả Nhiệt Đới, Trà Đào Cam Sả, Trà Chanh Tươi Hoa Đậu Biếc, Trà Trái Cây Đặc Biệt, Hồng Trà Chanh Leo Nha Đam, Trà Xoài Tươi Kem Cheese, Trà Dâu Tuyết Kem Cheese, Trà Dưa Hấu Kem Cheese, Hồng Trà Kem Cheese, Lục Trà Nhài Kem Cheese, Trà Ô Long Kem Cheese, Trà Thiết Quan Âm Kem Cheese, Trà Sữa Thiết Quan Âm Hoa Hồng, Trà Sữa Matcha Kem Cheese, Trà Sữa Socola Kem Cheese,', 'https://images.foody.vn/res/g65/649203/prof/s120x120/foody-mobile-629-jpg-790-636274158915227464.jpg', 2),
(45, 649226, 'Valhalla Grill - Fast Food & Drink', '17 Hàng Buồm, Quận Hoàn Kiếm, Hà Nội', 'Quán ăn, ', NULL, NULL, 21.0359, 105.853, NULL, 4.15, 'Burger Thịt Heo Hầm, Double Currywurst Berlin, Salad, Single Currywurst Berlin, Nước Ngọt + Khoai Tây Chiên, Bia + Khoai Tây, Xúc Xích Phô Mai, Xúc Xích Heo, Xúc Xích Gà, Juicy Burger, Yummy Burger, Juicy Double Burger, Yummy Double Burger, Sandwich Chay, Sandwich Gà Lớn, Sandwich Gà Nhỏ, Khoai Tây Chiên, ', 'https://images.foody.vn/res/g65/649226/prof/s120x120/foody-mobile-17629766_43299263703-806-636269109865437903.jpg', 33),
(46, 649220, 'Hệ Thống Giặt Sấy Laundry House - Hoa Cau', '2 Hoa Cau, Quận Phú Nhuận, TP. HCM', 'Giặt ủi, ', NULL, NULL, 10.7993, 106.689, NULL, 5, 'Từ 1kg - 3kg/Máy/Lượt, Từ 3kg - 5kg/Máy/Lượt, Từ 5kg - 7kg/Máy/Lượt, Combo Em Bé/7kg/Máy/Lượt, Combo Chống Dị Ứng/7kg/Máy/Lượt, Vệ sinh giày/Đôi (Lấy giày sau 3 ngày), Trọn bộ, 2 Chăn Bông, 1 Chăn Bông Lớn, Kích Cỡ 100x60 (cm)/Máy/Lượt, Kích cỡ (5 - 30)x(5 - 30)cm/Máy/Lượt, Kích cỡ (50 - 70)x (30x40)cm/Máy/Lượt, Áo Khoác/ Đầm - cái, Bộ Vest, Áo/cái, Thú bông - cái, Bộ mền + Drap, Áo Vest  - cái, Túi xách - cái, Mền/ Drap (1,6m x 2m), Áo khoác dài/ Đầm dài - cái, Quần/Cái, Màn cửa - cái, Bộ mền -', 'https://images.foody.vn/res/g65/649220/prof/s120x120/foody-mobile-dfgdfgdfg-jpg-857-636268998072105203.jpg', 1),
(47, 649238, 'Ẩm Thực Danang Corner', 'K39/10 Võ Văn Kiệt, P. Phước Mỹ, Quận Sơn Trà, Đà Nẵng', 'Nhà hàng, ', NULL, NULL, 16.0628, 108.244, NULL, 3.9, 'Khai vị Đà Nẵng corner, Gỏi tôm thái lan, Gỏi bò bóp thấu, Gỏi hải sản chua cay, Gỏi củ hủ dừa tôm thịt, Gỏi xoài cá cơm, Salad cá hồi, Salad rong nho, Salad rong nho mù tạt, Salad cải mầm thịt bò, Salad Nga, Salad cá ngừ, Salad dầu dấm, Soup cua, Soup hải sản, Soup hạt sen, Soup hải sâm, Soup bào ngư, Soup rong biển hải sản, Soup bí đỏ, Soup gà, Xúc xích nướng, Xúc xích cháy tỏi, Chả giò hải sản, Chả giò Việt Nam, Tôm khô củ kiệu và trứng bách thảo, Bông cải xào hải sản, Cải thìa xào nấm đông c', 'https://images.foody.vn/res/g65/649238/prof/s120x120/foody-mobile-12va-jpg-215-636280190734313710.jpg', 45),
(48, 649249, 'Minh Trang - Chè Thập Cẩm', '75 Hàng Đường, Quận Hoàn Kiếm, Hà Nội', 'Ăn vặt/vỉa hè, ', NULL, NULL, 21.0366, 105.85, NULL, 3.25, 'Chè Thái, Chè Cốt Dừa, Chè Bưởi, Chè Sầu Riêng, Chè Ngô, Chè Khoai, Chè Chuối, Chè Sen, Chè Đỗ Xanh, Chè Đỗ Đen, Chè Đỗ Đỏ, Sữa Chua Mít, Sữa Chua Nếp Cẩm Mít, ', 'https://images.foody.vn/res/g65/649249/prof/s120x120/foody-mobile-2-jpg-550-636269829981289456.jpg', 1),
(49, 649262, 'Gà Tươi Mạch Hoạch - Khuất Duy Tiến', '142A Khuất Duy Tiến, Thanh Xuan District, Hà Nội', 'Quán ăn, ', NULL, NULL, 20.997, 105.799, NULL, 3, 'Gà Quay, Gà Hấp, Gà Chiên Mắm, Gà Rang Muối, Gà không Lối Thoát, Chân Gà Chiên Mắm, Khoai Lang Kén, Ngô Chiên, Nộm Sứa Xoài, Nộm Gà Xé Phay, Salad Rau Trộn, Nộm Bò Bóp Thấu, Khoai Lang Chiên, Khoai Tây Chiên, Lẩu Gà Chua Cay, Lẩu Gà Thuốc Bắc, Lẩu Gà Nước Trong, Mẹt Gà 5 Món Set 1, Mẹt Gà 5 Món Set 2, Xôi Hấp, Xôi Chiên, Xôi Chim Hấp, Cơm Cháy Kho Quẹt, Xôi Chim Chiên, Cơm Cháy Ruốc, ', 'https://images.foody.vn/res/g65/649262/prof/s120x120/foody-upload-api-foody-mobile-ga-manh-hoach-1-jpg-181224095553.jpg', 1),
(50, 649263, 'Trâu Tươi Đồng Xanh - Cầu Diễn', '135 Cầu Diễn, Quận Bắc Từ Liêm, Hà Nội', 'Quán nhậu, ', NULL, NULL, 21.0495, 105.74, NULL, 4.2, 'Súp Gà Nấm Hương, Súp Rau, Ngô Chiên, Khoai Tây Chiên, Khoai Môn Chiên, Khoai Lang Chiên, Ngô Chiên Trứng Gà, Giò Trâu, Nem Nướng Đặc Biệt, Nem Phùng, Đuôi Trâu Hấp Gừng, Óc Trần, Óc Hấp Ngải Cứu, Nem Chua, Vó, Mũi Trâu Hấp Gừng, Đuôi Trâu Chiên Mắm, Đuôi Trâu Rang Muối, Rau Muống Xào, Rau Muống Luộc, Ngọn Su Luộc, Ngọn Su Xào, Rau Lang Xào, Rau Lang Luộc, Ngọn Bí Xào, Ngọn Bí Luộc, Mồng Tơi Xào, Mồng Tơi Luộc, Mướp Xào, Mướp Luộc, Rau Cần Xào Tỏi, Ngồng Cải Luộc Chấm Trứng, Thiên Lý Xào Tỏi, Đậ', 'https://images.foody.vn/res/g65/649263/prof/s120x120/foody-mobile-16807282_74591010223-353-636269149391615581.jpg', 6),
(51, 649364, 'Lẩu Dê Đồng Hương 2 - Hoàng Diệu 2', '113 Hoàng Diệu 2, P. Linh Trung, Quận Thủ Đức, TP. HCM', 'Quán ăn, ', NULL, NULL, 10.8582, 106.763, NULL, 3.1, 'Vú dê nướng, Dê bóp thấu, Dê tái chanh, Cà ri dê, Dê xào lăn, Vú dê xào sả ớt, Sườn dê hấp mắm nhĩ, Vú dê xào lăn khô, Dê tắm rượu vang, Sườn dê nướng mọi, Sườn dê nướng mắm nhĩ, Sườn dê nướng ngũ vị, Sườn dê nướng sa tế, Sườn dê nướng sốt cà ri, Sườn dê nướng sốt tiêu xanh, Đùi dê nướng mọi, Đùi dê nướng mắm nhĩ, Đùi dê nướng sốt tiêu xanh, Đùi dê nướng ngũ vị, Đùi dê nướng sa tế, Đùi dê nướng sốt cà ri, Tiết canh dĩa, Tiết bỏ lẩu (chén), Tiết canh chén, Tiết canh hấp (chén), Tiếp canh hấp (dĩa', 'https://images.foody.vn/res/g65/649364/prof/s120x120/foody-upload-api-foody-mobile-222-jpg-180817145954.jpg', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `FOOD_CATEGORY`
--

CREATE TABLE `FOOD_CATEGORY` (
  `id` int(10) NOT NULL,
  `category_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category_detail` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `FOOD_CATEGORY`
--

INSERT INTO `FOOD_CATEGORY` (`id`, `category_name`, `category_detail`) VALUES
(68, 'Quán ăn', NULL),
(69, 'Shop Online', NULL),
(70, 'Nhà hàng', NULL),
(71, 'Café/Dessert', NULL),
(72, 'Quán nhậu', NULL),
(73, 'Ăn chay', NULL),
(74, 'Nhà hàng, ', NULL),
(75, 'Bar/Pub', NULL),
(76, 'Ăn vặt/vỉa hè', NULL),
(77, 'Quán ăn, ', NULL),
(78, 'Café/Dessert, ', NULL),
(79, 'Shop Online, ', NULL),
(80, 'Beer club', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `FOOD_IMAGE`
--
-- Error reading structure for table MealRecommendationApp.FOOD_IMAGE: #1932 - Table 'MealRecommendationApp.FOOD_IMAGE' doesn't exist in engine
-- Error reading data for table MealRecommendationApp.FOOD_IMAGE: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `MealRecommendationApp`.`FOOD_IMAGE`' at line 1

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `KEYWORD`
--

CREATE TABLE `KEYWORD` (
  `id` int(10) NOT NULL,
  `keyword` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `times` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `KEYWORD_AND_FOOD`
--

CREATE TABLE `KEYWORD_AND_FOOD` (
  `id` int(10) NOT NULL,
  `id_food` int(10) NOT NULL,
  `id_keyword` int(10) NOT NULL,
  `times` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `MARK`
--

CREATE TABLE `MARK` (
  `id` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_food` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ROLE`
--

CREATE TABLE `ROLE` (
  `id` int(10) NOT NULL,
  `role_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `role_detail` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ROLE`
--

INSERT INTO `ROLE` (`id`, `role_name`, `role_detail`) VALUES
(1, 'USER', 'Users who use the application'),
(2, 'ADMIN', 'Administrators who manage the application');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `SEARCH_HISTORY`
--

CREATE TABLE `SEARCH_HISTORY` (
  `id` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_keyword` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `USER`
--

CREATE TABLE `USER` (
  `id` int(10) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_role` int(10) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `USER`
--

INSERT INTO `USER` (`id`, `email`, `password`, `name`, `phone`, `address`, `id_role`) VALUES
(13, 'votranquy96@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Votranquy96', NULL, NULL, 1),
(14, 'votranquy97@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Votranquy96', NULL, NULL, 1),
(15, 'QUY@GMAIL.COMQUY', '46a2f03c19e00e52a50d3a91b72abb8f', 'QUY', NULL, NULL, 1),
(16, 'QUY@GMAIL.COMQUY', '46a2f03c19e00e52a50d3a91b72abb8f', 'QUY', NULL, NULL, 1),
(17, 'A@gmail.com', '7fc56270e7a70fa81a5935b72eacbe29', 'A@gmail.com', NULL, NULL, 1),
(18, 'B@gmail.com', '9d5ed678fe57bcca610140957afab571', 'B@gmail.com', NULL, NULL, 1),
(19, 'C@gmail.com', '0d61f8370cad1d412f80b84d143e1257', 'C@gmail.com', NULL, NULL, 1),
(20, 'QUY@GMAIL.COM', '46a2f03c19e00e52a50d3a91b72abb8f', 'QUY TRAN VO', '0235678945', '60 Ngo Si lien Da Nang', 1),
(21, 'levana@gmail.com', 'a70a40de1e924355d38e8011e0727145', 'LeVanA', NULL, NULL, 1),
(22, 'H@GMAIL.COM', 'c1d9f50f86825a1a2302ec2449c17196', 'H@GMAIL.COM', NULL, NULL, 1),
(23, 'QUYVO@GMAIL.COM', '6ffd28771923fbd8a539faf1a1d23eb5', 'Quys VOxABCZYX', '0369380629', '44 Le Do Da Nang', 1),
(24, 'LeVanA@gmail.com', '6042c0687fdc318b34675b8c55c534b7', 'LeVanA', NULL, NULL, 1),
(25, 'v@gmail.com', '9e3669d19b675bd57058fd4664205d2a', 'v@gmail.com', NULL, NULL, 1),
(26, 'abc@gmail.com', '900150983cd24fb0d6963f7d28e17f72', 'abc', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `USER_IMAGE`
--

CREATE TABLE `USER_IMAGE` (
  `id` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `img_path` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `FOOD`
--
ALTER TABLE `FOOD`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `FOOD_CATEGORY`
--
ALTER TABLE `FOOD_CATEGORY`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `KEYWORD`
--
ALTER TABLE `KEYWORD`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keyword` (`keyword`);

--
-- Chỉ mục cho bảng `KEYWORD_AND_FOOD`
--
ALTER TABLE `KEYWORD_AND_FOOD`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_food` (`id_food`),
  ADD KEY `id_keyword` (`id_keyword`);

--
-- Chỉ mục cho bảng `MARK`
--
ALTER TABLE `MARK`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_food` (`id_food`);

--
-- Chỉ mục cho bảng `ROLE`
--
ALTER TABLE `ROLE`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `SEARCH_HISTORY`
--
ALTER TABLE `SEARCH_HISTORY`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_keyword` (`id_keyword`);

--
-- Chỉ mục cho bảng `USER`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_role` (`id_role`);

--
-- Chỉ mục cho bảng `USER_IMAGE`
--
ALTER TABLE `USER_IMAGE`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `FOOD`
--
ALTER TABLE `FOOD`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `FOOD_CATEGORY`
--
ALTER TABLE `FOOD_CATEGORY`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `KEYWORD`
--
ALTER TABLE `KEYWORD`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `KEYWORD_AND_FOOD`
--
ALTER TABLE `KEYWORD_AND_FOOD`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `MARK`
--
ALTER TABLE `MARK`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ROLE`
--
ALTER TABLE `ROLE`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `SEARCH_HISTORY`
--
ALTER TABLE `SEARCH_HISTORY`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `USER`
--
ALTER TABLE `USER`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `USER_IMAGE`
--
ALTER TABLE `USER_IMAGE`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `KEYWORD_AND_FOOD`
--
ALTER TABLE `KEYWORD_AND_FOOD`
  ADD CONSTRAINT `KEYWORD_AND_FOOD_ibfk_1` FOREIGN KEY (`id_keyword`) REFERENCES `KEYWORD` (`id`),
  ADD CONSTRAINT `KEYWORD_AND_FOOD_ibfk_2` FOREIGN KEY (`id_food`) REFERENCES `FOOD` (`id`);

--
-- Các ràng buộc cho bảng `MARK`
--
ALTER TABLE `MARK`
  ADD CONSTRAINT `MARK_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `USER` (`id`),
  ADD CONSTRAINT `MARK_ibfk_2` FOREIGN KEY (`id_food`) REFERENCES `FOOD` (`id`);

--
-- Các ràng buộc cho bảng `SEARCH_HISTORY`
--
ALTER TABLE `SEARCH_HISTORY`
  ADD CONSTRAINT `SEARCH_HISTORY_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `USER` (`id`),
  ADD CONSTRAINT `SEARCH_HISTORY_ibfk_2` FOREIGN KEY (`id_keyword`) REFERENCES `KEYWORD` (`id`);

--
-- Các ràng buộc cho bảng `USER`
--
ALTER TABLE `USER`
  ADD CONSTRAINT `USER_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `ROLE` (`id`);

--
-- Các ràng buộc cho bảng `USER_IMAGE`
--
ALTER TABLE `USER_IMAGE`
  ADD CONSTRAINT `USER_IMAGE_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `USER` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
