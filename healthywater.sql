CREATE TABLE `role` (
                        `id` int PRIMARY KEY AUTO_INCREMENT,
                        `name` varchar(255)
);

CREATE TABLE `users` (
                         `id` int PRIMARY KEY AUTO_INCREMENT,
                         `role_id` int,
                         `username` varchar(255),
                         `fullname` varchar(255),
                         `email` varchar(255),
                         `phone_number` varchar(255),
                         `sex` VARCHAR(50),
                         `address` varchar(255),
                         `password` varchar(255),
                         `created_at` datetime,
                         `updated_at` datetime,
                         `status` int,
                         `active` int
);

CREATE TABLE `categorys` (
                             `id` int PRIMARY KEY AUTO_INCREMENT,
                             `name` varchar(255)
);

CREATE TABLE `products` (
                            `id` int PRIMARY KEY AUTO_INCREMENT,
                            `category_id` int,
                            `type_machine_id` int,
                            `brand_id` int,
                            `title` varchar(255),
                            `price` int,
                            `img` varchar(255),
                            `discount_price` int,
                            `descriptions` varchar(255),
                            `available` int,
                            `created_at` date,
                            `updated_at` date
);

CREATE TABLE `gallerys` (
                            `id` int PRIMARY KEY AUTO_INCREMENT,
                            `product_id` int,
                            `img` varchar(255)
);


CREATE TABLE `orders` (
                          `id` int PRIMARY KEY AUTO_INCREMENT,
                          `user_id` int,
                          `address` varchar(255),
                          `phone` varchar(255),
                          `order_date` datetime,
                          `status` varchar(255),
                          `received_date` date,
                          `total_money` INT,
                          `voucher_id` int not null
);

CREATE TABLE `order_details` (
                                 `id` int PRIMARY KEY AUTO_INCREMENT,
                                 `order_id` int,
                                 `product_id` int,
                                 `price` int,
                                 `quantity` int,
                                 `total_money` int
);

CREATE TABLE `vouchers` (
                            `id` int PRIMARY KEY AUTO_INCREMENT,
                            `voucher_name` varchar(255),
                            `voucher_code` varchar(255),
                            `start_date` datetime,
                            `end_date` datetime,
                            `note` varchar(255),
                            `percent_decrease` float
);





CREATE TABLE `payments` (
                            `id` int PRIMARY KEY AUTO_INCREMENT,
                            `order_id` int,
                            `payment_type` varchar(255),
                            `payment_date` datetime,
                            `total` int
);

CREATE TABLE `brands` (
                          `id` int PRIMARY KEY AUTO_INCREMENT,
                          `name` varchar(255)

);

CREATE TABLE `type_machines` (
                                 `id` int PRIMARY KEY AUTO_INCREMENT,
                                 `type_name` varchar(255)
);



CREATE TABLE `product_details` (
                                   `id` int PRIMARY KEY AUTO_INCREMENT,
                                   `type_set` varchar(255),
                                   `technical` varchar(255),
                                   `performance_filter` varchar(255),
                                   `power` varchar(255),
                                   `temperature` varchar(255),
                                   `height` float,
                                   `weight` float,
                                   `warranty` varchar(255)
);





CREATE TABLE `contacts` (
                            `id` int PRIMARY KEY AUTO_INCREMENT,
                            `name` varchar(255),
                            `email` varchar(255),
                            `phone_number` varchar(255),
                            `content` varchar(255)
);
CREATE TABLE IF NOT EXISTS `comments` (
                                          `id` int PRIMARY KEY AUTO_INCREMENT,
                                          `user_id` int ,
                                          `product_id` int ,
                                          `contents` varchar(50),
                                          `star` varchar(50),
                                          `display` int ,
                                          `create_date` datetime


) ;
CREATE TABLE IF NOT EXISTS `posts` (
                                     `id` INT PRIMARY KEY AUTO_INCREMENT,
                                     `title` VARCHAR(200) NOT NULL,
                                     `content` TEXT,
                                     `author` VARCHAR(50) NOT NULL,
                                     `img` VARCHAR(225) NOT NULL,
                                     `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);





ALTER TABLE `users` ADD FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

ALTER TABLE `products` ADD FOREIGN KEY (`category_id`) REFERENCES `categorys` (`id`);

ALTER TABLE `order_details` ADD FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `gallerys` ADD FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `order_details` ADD FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

ALTER TABLE `orders` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `orders` ADD FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`);

ALTER TABLE `products` ADD FOREIGN KEY (`type_machine_id`) REFERENCES `type_machines` (`id`);

ALTER TABLE `products` ADD FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

ALTER TABLE `product_details` ADD FOREIGN KEY (`id`) REFERENCES `products` (`id`);

ALTER TABLE `payments` ADD FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);







INSERT INTO `brands` (`id`, `name`) VALUES
                                        (1, 'Karofi'),
                                        (2, 'Kangaroo'),
                                        (3, 'Sunhouse'),
                                        (4, 'Mutosi'),
                                        (5, 'Hòa Phát');


INSERT INTO `categorys` (`id`, `name`) VALUES
                                           (1, 'Lọc nước RO'),
                                           (2, 'Có nóng lạnh'),
                                           (3, 'Âm tủ để bàn'),
                                           (4, 'Lọc nước Nano, UF, MF'),
                                           (5, 'Lọc nước không điện');
INSERT INTO `contacts` (`id`, `name`, `email`, `phone_number`, `content`) VALUES
                                                                              (1, 'Huy Đoàn Quốc', 'anhlapro090@gmail.com', '0586485990', 'hahds'),
                                                                              (2, 'Huy Đoàn Quốc', 'anhlapro090@gmail.com', '0586485990', 'asdasff'),
                                                                              (3, 'Huy Đoàn Quốc', 'anhlapro090@gmail.com', '0586485990', 'sadasd'),
                                                                              (4, 'Huy Đoàn Quốc', 'anhlapro090@gmail.com', '0586485990', 'sÃ gfasd'),
                                                                              (5, 'Huy Đoàn Quốc', 'anhlapro090@gmail.com', '0586485990', 'dfsf'),
                                                                              (6, 'Huy Đoàn Quốc', 'anhlapro090@gmail.com', '0586485990', 'sáº§gfsdg'),
                                                                              (7, 'Huy Đoàn Quốc', 'anhlapro090@gmail.com', '0586485990', 'ádasdf'),
                                                                              (8, 'Huy Đoàn Quốc', 'anhlapro090@gmail.com', '0586485990', 'sadsaf');
INSERT INTO `gallerys` (`id`, `product_id`, `img`) VALUES
                                                       (1, 1, 'img/may-loc-nuoc-ro-karofi-kaq-x16-10-loi-130223-054043-600x600.jpg'),
                                                       (2, 1, 'img/small3.jpg'),
                                                       (3, 1, 'img/small2.jpg'),
                                                       (4, 1, 'img/small1.jpg');
INSERT INTO `orders` (`id`, `user_id`, `address`, `phone`, `order_date`, `status`, `received_date`, `total_money`, `voucher_id`) VALUES
                                                                                                                                     (109, 1, '126 Phuoc Long', '0586485990', '2024-01-22 21:08:12', 'Đang đặt hàng', NULL, 7984000, 2),
                                                                                                                                     (110, 1, '126 Phuoc Long', '0586485990', '2024-01-23 00:17:49', 'Đã thanh toán', '2024-01-23', 22360000, 2),
                                                                                                                                     (111, 1, '126 Phuoc Long', '0586485990', '2024-01-23 00:21:07', 'Đã thanh toán', '2024-01-23', 42320000, 2),
                                                                                                                                     (112, 1, '126 Phuoc Long', '0586485990', '2024-01-23 00:23:22', 'Đã thanh toán', '2024-01-23', 23648000, 2),
                                                                                                                                     (113, 1, '126 Phuoc Long', '0586485990', '2024-01-23 00:27:53', 'Đã thanh toán', '2024-01-23', 9744000, 2),
                                                                                                                                     (114, 1, '126 Phuoc Long', '0586485990', '2024-01-23 00:29:56', 'Đã thanh toán', '2024-01-23', 12144000, 2),
                                                                                                                                     (115, 1, '126 Phuoc Long', '0586485990', '2024-01-23 00:32:05', 'Đã thanh toán', '2024-01-23', 13960000, 2),
                                                                                                                                     (116, 1, '126 Phuoc Long', '0586485990', '2024-01-23 00:40:09', 'Đã thanh toán', '2024-01-23', 7590000, 3);
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
INSERT INTO `payments` (`id`, `order_id`, `payment_type`, `payment_date`, `total`) VALUES
                                                                                       (1, 115, 'Thanh toán bằng thẻ ngân hàng', '2024-01-23 00:32:08', 13960000),
                                                                                       (2, 116, 'Thanh toán bằng tiền mặt', '2024-01-23 00:40:12', 7590000);
INSERT INTO `products` (`id`, `category_id`, `type_machine_id`, `brand_id`, `title`, `price`, `img`, `discount_price`, `descriptions`, `available`, `created_at`, `updated_at`) VALUES
                                                                                                                                                                                    (1, 1, 4, 1, 'Máy lọc nước RO nóng nguội lạnh Karofi KAD-X39 10 lõi', 10490000, 'img/ro-nong-lanh-karofi-kad-x39-10-loi-140223-034144-600x600.jpg', 6190000, 'Máy lọc nước', 100, '2023-12-18', '2023-12-18'),
                                                                                                                                                                                    (2, 1, 1, 4, 'Máy lọc nước RO Mutosi MP-290SK 9 lõi', 6670000, 'img/ro-mutosi-mp-290sk-9-loi-140223-054510-600x600-1-600x600.jpg', 3490000, 'Máy lọc nước', 100, '2023-12-10', '2023-12-10'),
                                                                                                                                                                                    (3, 1, 2, 1,  'Máy lọc nước RO nóng nguội lạnh Karofi KAD-X58 11 lõi', 12660000, 'img/may-loc-nuoc-ro-nong-nguoi-lanh-karofi-kad-x58-11-loi-0-600x600.jpg', 8690000, 'Máy lọc nước', 50, '2023-12-11', '2023-12-11'),
                                                                                                                                                                                    (4, 1, 2, 5,  'Máy lọc nước RO nóng nguội lạnh Hòa Phát HWBS3A 1021 10 lõi', 10670000, 'img/may-loc-nuoc-ro-nong-nguoi-lanh-hoa-phat-hwbs3a-1021-10-loi-210623-023624-600x600.jpg', 6490000, 'Máy lọc nước', 2002, '2023-12-16', '2023-12-16'),
                                                                                                                                                                                    (5, 1, 1, 2, 'Máy lọc nước RO nóng nguội lạnh Kangaroo KG10A12 10 lõi', 10790000, 'img/may-loc-nuoc-ro-nong-nguoi-lanh-kangaroo-kg10a12-10-loi-050723-040500-600x600.jpg', 6990000, 'Máy lọc nước', 5, '2023-12-16', '2023-12-16');

INSERT INTO `role` (`id`, `name`) VALUES
                                      (1, 'Admin'),
                                      (2, 'User');
INSERT INTO `type_machines` (`id`, `type_name`) VALUES
                                                    (1, 'Có nóng lạnh'),
                                                    (2, 'Lọc Hydrogen'),
                                                    (3, 'Lọc nước nhiễm mặn lợ'),
                                                    (4, 'Bán công nghiệp');
INSERT INTO `users` (`id`, `role_id`, `username`, `fullname`, `email`, `phone_number`, `sex`, `address`, `password`, `created_at`, `updated_at`, `status`, `active`) VALUES
                                                                                                                                                                         (1, 2, '1', 'Doan Quoc Huy', 'anhlapro090@gmail.com', '0586485990', 'Anh', '126 Phuoc Long', '123', '2024-01-19 20:59:17', NULL, 1, 1),
                                                                                                                                                                         (3, 2, 'huydoan0212', 'Huy Đoàn Quốc', '21130374@st.hcmuaf.edu.vn', '0586485990', '', '81/11 QL1K', 'qweasd1', '2024-01-20 15:36:24', NULL, 1, 1);
INSERT INTO `vouchers` (`id`, `voucher_name`, `voucher_code`, `start_date`, `end_date`, `note`, `percent_decrease`) VALUES
                                                                                                                        (1, 'Không giảm giá', '0', '2024-01-22 00:36:31', '2024-03-19 00:36:35', NULL, 0),
                                                                                                                        (2, 'Giảm giá 20%', '123456', '2024-01-21 10:24:02', '2024-01-30 10:24:06', NULL, 0.2),
                                                                                                                        (3, 'Giảm giá 50%', '1222', '2024-01-21 10:56:17', '2024-01-28 10:56:19', NULL, 0.5);
INSERT INTO `posts`(`id`, `title`, `content`,`author`,`img`) VALUES (1,
                                                               'Máy lọc nước Pureit của nước nào ?',
                                                               'Pureit là thương hiệu thuộc tập đoàn Unilever, hoạt động tại Việt Nam từ năm 1995, đã đồng hành và phát triển cùng người dân Việt Nam hơn 20 năm qua. Unilever là thương hiệu đi đầu trong lĩnh vực cung cấp các mặt hàng tiêu dùng, với các nhãn hiệu quen thuộc như OMO, Sunlight, Vim, Surf, Knorr, Walls, Lifebuoy, Clear, Sunsilk, Ponds, P/S, Close up và nhiều nhãn hiệu khác. Pureit là giải pháp của Unilever cho nhu cầu lọc nước nói chung và tại Việt Nam nói riêng. Trên toàn cầu, kể từ khi ra mắt, Pureit đã trở thành nhãn hiệu lọc nước bán chạy nhất thế giới với sự có mặt tại 13 quốc gia cùng các sản phẩm dựa trên công nghệ lọc nước mới nhất (UV, RO, bioxit).',
                                                               'Nguyễn Quốc Bình ', `NULL`);
