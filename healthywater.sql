/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



CREATE TABLE IF NOT EXISTS `brands` (
                                        `id` int(11) NOT NULL AUTO_INCREMENT,
                                        `name` varchar(255) DEFAULT NULL,
                                        PRIMARY KEY (`id`)
);

INSERT INTO `brands` (`id`, `name`) VALUES
                                        (1, 'Karofi'),
                                        (2, 'Kangaroo'),
                                        (3, 'Sunhouse'),
                                        (4, 'Mutosi'),
                                        (5, 'Hòa Phát');

CREATE TABLE IF NOT EXISTS `categorys` (
                                           `id` int(11) NOT NULL AUTO_INCREMENT,
                                           `name` varchar(255) DEFAULT NULL,
                                           PRIMARY KEY (`id`)
);

INSERT INTO `categorys` (`id`, `name`) VALUES
                                           (1, 'Lọc nước RO'),
                                           (2, 'Có nóng lạnh'),
                                           (3, 'Âm tủ để bàn'),
                                           (4, 'Lọc nước Nano, UF, MF'),
                                           (5, 'Lọc nước không điện');

CREATE TABLE IF NOT EXISTS `contacts` (
                                          `id` int(11) NOT NULL AUTO_INCREMENT,
                                          `name` varchar(255) DEFAULT NULL,
                                          `email` varchar(255) DEFAULT NULL,
                                          `phone_number` varchar(255) DEFAULT NULL,
                                          `content` varchar(255) DEFAULT NULL,
                                          PRIMARY KEY (`id`)
);

INSERT INTO `contacts` (`id`, `name`, `email`, `phone_number`, `content`) VALUES
                                                                              (1, 'Huy Đoàn Quốc', 'anhlapro090@gmail.com', '0586485990', 'hahds'),
                                                                              (2, 'Huy Đoàn Quốc', 'anhlapro090@gmail.com', '0586485990', 'asdasff'),
                                                                              (3, 'Huy Đoàn Quốc', 'anhlapro090@gmail.com', '0586485990', 'sadasd'),
                                                                              (4, 'Huy Đoàn Quốc', 'anhlapro090@gmail.com', '0586485990', 'sÃ gfasd'),
                                                                              (5, 'Huy Đoàn Quốc', 'anhlapro090@gmail.com', '0586485990', 'dfsf'),
                                                                              (6, 'Huy Đoàn Quốc', 'anhlapro090@gmail.com', '0586485990', 'sáº§gfsdg'),
                                                                              (7, 'Huy Đoàn Quốc', 'anhlapro090@gmail.com', '0586485990', 'ádasdf'),
                                                                              (8, 'Huy Đoàn Quốc', 'anhlapro090@gmail.com', '0586485990', 'sadsaf');

CREATE TABLE IF NOT EXISTS `gallerys` (
                                          `id` int(11) NOT NULL AUTO_INCREMENT,
                                          `product_id` int(11) DEFAULT NULL,
                                          `img` varchar(255) DEFAULT NULL,
                                          PRIMARY KEY (`id`),

                                          CONSTRAINT `gallerys_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
);

INSERT INTO `gallerys` (`id`, `product_id`, `img`) VALUES
                                                       (1, 1, 'img/may-loc-nuoc-ro-karofi-kaq-x16-10-loi-130223-054043-600x600.jpg'),
                                                       (2, 1, 'img/small3.jpg'),
                                                       (3, 1, 'img/small2.jpg'),
                                                       (4, 1, 'img/small1.jpg');

CREATE TABLE IF NOT EXISTS `orders` (
                                        `id` int(11) NOT NULL AUTO_INCREMENT,
                                        `user_id` int(11) DEFAULT NULL,
                                        `address` varchar(255) DEFAULT NULL,
                                        `phone` varchar(255) DEFAULT NULL,
                                        `order_date` datetime DEFAULT NULL,
                                        `status` varchar(255) DEFAULT NULL,
                                        `received_date` date DEFAULT NULL,
                                        `total_money` int(11) DEFAULT NULL,
                                        `voucher_id` int(11) DEFAULT NULL,
                                        PRIMARY KEY (`id`),

                                        CONSTRAINT `FK_orders_vouchers` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`),
                                        CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ;

INSERT INTO `orders` (`id`, `user_id`, `address`, `phone`, `order_date`, `status`, `received_date`, `total_money`, `voucher_id`) VALUES
                                                                                                                                     (109, 1, '126 Phuoc Long', '0586485990', '2024-01-22 21:08:12', 'Đang đặt hàng', NULL, 7984000, 2),
                                                                                                                                     (110, 1, '126 Phuoc Long', '0586485990', '2024-01-23 00:17:49', 'Đã thanh toán', '2024-01-23', 22360000, 2),
                                                                                                                                     (111, 1, '126 Phuoc Long', '0586485990', '2024-01-23 00:21:07', 'Đã thanh toán', '2024-01-23', 42320000, 2),
                                                                                                                                     (112, 1, '126 Phuoc Long', '0586485990', '2024-01-23 00:23:22', 'Đã thanh toán', '2024-01-23', 23648000, 2),
                                                                                                                                     (113, 1, '126 Phuoc Long', '0586485990', '2024-01-23 00:27:53', 'Đã thanh toán', '2024-01-23', 9744000, 2),
                                                                                                                                     (114, 1, '126 Phuoc Long', '0586485990', '2024-01-23 00:29:56', 'Đã thanh toán', '2024-01-23', 12144000, 2),
                                                                                                                                     (115, 1, '126 Phuoc Long', '0586485990', '2024-01-23 00:32:05', 'Đã thanh toán', '2024-01-23', 13960000, 2),
                                                                                                                                     (116, 1, '126 Phuoc Long', '0586485990', '2024-01-23 00:40:09', 'Đã thanh toán', '2024-01-23', 7590000, 3);

CREATE TABLE IF NOT EXISTS `order_details` (
                                               `id` int(11) NOT NULL AUTO_INCREMENT,
                                               `order_id` int(11) DEFAULT NULL,
                                               `product_id` int(11) DEFAULT NULL,
                                               `price` int(11) DEFAULT NULL,
                                               `quantity` int(11) DEFAULT NULL,
                                               `total_money` int(11) DEFAULT NULL,
                                               PRIMARY KEY (`id`),

                                               CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
                                               CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
);

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `quantity`, `total_money`) VALUES
                                                                                                     (11, 109, 2, 3490000, 1, 3490000),
                                                                                                     (12, 109, 4, 6490000, 1, 6490000),
                                                                                                     (13, 110, 2, 3490000, 2, 6980000),
                                                                                                     (14, 110, 5, 6990000, 3, 20970000),
                                                                                                     (15, 111, 2, 3490000, 4, 13960000),
                                                                                                     (16, 111, 4, 6490000, 6, 38940000),
                                                                                                     (17, 112, 2, 3490000, 1, 3490000),
                                                                                                     (18, 112, 3, 8690000, 3, 26070000),
                                                                                                     (19, 113, 2, 3490000, 1, 3490000),
                                                                                                     (20, 113, 3, 8690000, 1, 8690000),
                                                                                                     (21, 114, 3, 8690000, 1, 8690000),
                                                                                                     (22, 114, 4, 6490000, 1, 6490000),
                                                                                                     (23, 115, 2, 3490000, 5, 17450000),
                                                                                                     (24, 116, 3, 8690000, 1, 8690000),
                                                                                                     (25, 116, 4, 6490000, 1, 6490000);

CREATE TABLE IF NOT EXISTS `payments` (
                                          `id` int(11) NOT NULL AUTO_INCREMENT,
                                          `order_id` int(11) DEFAULT NULL,
                                          `payment_type` varchar(255) DEFAULT NULL,
                                          `payment_date` datetime DEFAULT NULL,
                                          `total` int(11) DEFAULT NULL,
                                          PRIMARY KEY (`id`),

                                          CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ;

INSERT INTO `payments` (`id`, `order_id`, `payment_type`, `payment_date`, `total`) VALUES
                                                                                       (1, 115, 'Thanh toán bằng thẻ ngân hàng', '2024-01-23 00:32:08', 13960000),
                                                                                       (2, 116, 'Thanh toán bằng tiền mặt', '2024-01-23 00:40:12', 7590000);

CREATE TABLE IF NOT EXISTS `products` (
                                          `id` int(11) NOT NULL AUTO_INCREMENT,
                                          `category_id` int(11) DEFAULT NULL,
                                          `type_machine_id` int(11) DEFAULT NULL,
                                          `brand_id` int(11) DEFAULT NULL,
                                          `sale_product_id` int(11) DEFAULT NULL,
                                          `title` varchar(255) DEFAULT NULL,
                                          `price` int(11) DEFAULT NULL,
                                          `img` varchar(255) DEFAULT NULL,
                                          `discount_price` int(11) DEFAULT NULL,
                                          `description` varchar(255) DEFAULT NULL,
                                          `available` int(11) DEFAULT NULL,
                                          `created_at` date DEFAULT NULL,
                                          `updated_at` date DEFAULT NULL,
                                          PRIMARY KEY (`id`),
                                          CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categorys` (`id`),
                                          CONSTRAINT `products_ibfk_2` FOREIGN KEY (`type_machine_id`) REFERENCES `type_machines` (`id`),
                                          CONSTRAINT `products_ibfk_3` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`)

);

INSERT INTO `products` (`id`, `category_id`, `type_machine_id`, `brand_id`, `sale_product_id`, `title`, `price`, `img`, `discount_price`, `description`, `available`, `created_at`, `updated_at`) VALUES
                                                                                                                                                                                                      (1, 1, 4, 1, NULL, 'Máy lọc nước RO nóng nguội lạnh Karofi KAD-X39 10 lõi', 10490000, 'img/ro-nong-lanh-karofi-kad-x39-10-loi-140223-034144-600x600.jpg', 6190000, 'Máy lọc nước', 100, '2023-12-18', '2023-12-18'),
                                                                                                                                                                                                      (2, 1, 1, 4, NULL, 'Máy lọc nước RO Mutosi MP-290SK 9 lõi', 6670000, 'img/ro-mutosi-mp-290sk-9-loi-140223-054510-600x600-1-600x600.jpg', 3490000, 'Máy lọc nước', 100, '2023-12-10', '2023-12-10'),
                                                                                                                                                                                                      (3, 1, 2, 1, NULL, 'Máy lọc nước RO nóng nguội lạnh Karofi KAD-X58 11 lõi', 12660000, 'img/may-loc-nuoc-ro-nong-nguoi-lanh-karofi-kad-x58-11-loi-0-600x600.jpg', 8690000, 'Máy lọc nước', 50, '2023-12-11', '2023-12-11'),
                                                                                                                                                                                                      (4, 1, 2, 5, NULL, 'Máy lọc nước RO nóng nguội lạnh Hòa Phát HWBS3A 1021 10 lõi', 10670000, 'img/may-loc-nuoc-ro-nong-nguoi-lanh-hoa-phat-hwbs3a-1021-10-loi-210623-023624-600x600.jpg', 6490000, 'Máy lọc nước', 2002, '2023-12-16', '2023-12-16'),
                                                                                                                                                                                                      (5, 1, 1, 2, NULL, 'Máy lọc nước RO nóng nguội lạnh Kangaroo KG10A12 10 lõi', 10790000, 'img/may-loc-nuoc-ro-nong-nguoi-lanh-kangaroo-kg10a12-10-loi-050723-040500-600x600.jpg', 6990000, 'Máy lọc nước', 5, '2023-12-16', '2023-12-16');

CREATE TABLE IF NOT EXISTS `product_details` (
                                                 `id` int(11) NOT NULL AUTO_INCREMENT,
                                                 `type_set` varchar(255) DEFAULT NULL,
                                                 `technical` varchar(255) DEFAULT NULL,
                                                 `performance_filter` varchar(255) DEFAULT NULL,
                                                 `power` varchar(255) DEFAULT NULL,
                                                 `temperature` varchar(255) DEFAULT NULL,
                                                 `height` float DEFAULT NULL,
                                                 `weight` float DEFAULT NULL,
                                                 `warranty` varchar(255) DEFAULT NULL,
                                                 PRIMARY KEY (`id`),
                                                 CONSTRAINT `product_details_ibfk_1` FOREIGN KEY (`id`) REFERENCES `products` (`id`)
);


CREATE TABLE IF NOT EXISTS `role` (
                                      `id` int(11) NOT NULL AUTO_INCREMENT,
                                      `name` varchar(255) DEFAULT NULL,
                                      PRIMARY KEY (`id`)
);

INSERT INTO `role` (`id`, `name`) VALUES
                                      (1, 'Admin'),
                                      (2, 'User');

CREATE TABLE IF NOT EXISTS `type_machines` (
                                               `id` int(11) NOT NULL AUTO_INCREMENT,
                                               `type_name` varchar(255) DEFAULT NULL,
                                               PRIMARY KEY (`id`)
);

INSERT INTO `type_machines` (`id`, `type_name`) VALUES
                                                    (1, 'Có nóng lạnh'),
                                                    (2, 'Lọc Hydrogen'),
                                                    (3, 'Lọc nước nhiễm mặn lợ'),
                                                    (4, 'Bán công nghiệp');

CREATE TABLE IF NOT EXISTS `users` (
                                       `id` int(11) NOT NULL AUTO_INCREMENT,
                                       `role_id` int(11) DEFAULT NULL,
                                       `username` varchar(255) DEFAULT NULL,
                                       `fullname` varchar(255) DEFAULT NULL,
                                       `email` varchar(255) DEFAULT NULL,
                                       `phone_number` varchar(255) DEFAULT NULL,
                                       `sex` varchar(50) DEFAULT NULL,
                                       `address` varchar(255) DEFAULT NULL,
                                       `password` varchar(255) DEFAULT NULL,
                                       `created_at` datetime DEFAULT NULL,
                                       `updated_at` datetime DEFAULT NULL,
                                       `status` int(11) DEFAULT NULL,
                                       `active` int(11) DEFAULT NULL,
                                       PRIMARY KEY (`id`),

                                       CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
);

INSERT INTO `users` (`id`, `role_id`, `username`, `fullname`, `email`, `phone_number`, `sex`, `address`, `password`, `created_at`, `updated_at`, `status`, `active`) VALUES
                                                                                                                                                                         (1, 2, '1', 'Doan Quoc Huy', 'anhlapro090@gmail.com', '0586485990', 'Anh', '126 Phuoc Long', '123', '2024-01-19 20:59:17', NULL, 1, 1),
                                                                                                                                                                         (3, 2, 'huydoan0212', 'Huy Đoàn Quốc', '21130374@st.hcmuaf.edu.vn', '0586485990', '', '81/11 QL1K', 'qweasd1', '2024-01-20 15:36:24', NULL, 1, 1);

CREATE TABLE IF NOT EXISTS `vouchers` (
                                          `id` int(11) NOT NULL AUTO_INCREMENT,
                                          `voucher_name` varchar(255) DEFAULT NULL,
                                          `voucher_code` varchar(255) DEFAULT NULL,
                                          `start_date` datetime DEFAULT NULL,
                                          `end_date` datetime DEFAULT NULL,
                                          `note` varchar(255) DEFAULT NULL,
                                          `percent_decrease` float DEFAULT NULL,
                                          PRIMARY KEY (`id`)
);

INSERT INTO `vouchers` (`id`, `voucher_name`, `voucher_code`, `start_date`, `end_date`, `note`, `percent_decrease`) VALUES
                                                                                                                        (1, 'Không giảm giá', '0', '2024-01-22 00:36:31', '2024-03-19 00:36:35', NULL, 0),
                                                                                                                        (2, 'Giảm giá 20%', '123456', '2024-01-21 10:24:02', '2024-01-30 10:24:06', NULL, 0.2),
                                                                                                                        (3, 'Giảm giá 50%', '1222', '2024-01-21 10:56:17', '2024-01-28 10:56:19', NULL, 0.5);
CREATE TABLE `comments` (
                            `id` int PRIMARY KEY AUTO_INCREMENT,
                            `user_id` int,
                            `product_id` int,
                            `contents` varchar(300),
                            `star` int,
                            `display` int,
                            `create_date` datetime,
                            CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
                            CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
