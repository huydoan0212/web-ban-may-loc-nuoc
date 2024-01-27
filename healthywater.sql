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
CREATE  TABLE IF NOT EXISTS `posts` (
                                  `id` INT PRIMARY KEY AUTO_INCREMENT,
                                  `title` VARCHAR(200) NOT NULL,
                                  `content` TEXT,
                                   `author` VARCHAR(50)  NOT NULL,
                                   `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
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
                                                                              (2, ' Đoàn Quốc Thanh Tùng', 'anhlapro010@gmail.com', '0586482990', 'asdasff'),
                                                                              (3, 'Huy Thanh  Quốc', 'anhlapro020@gmail.com', '0586483990', 'sadasd'),
                                                                              (4, 'Thanh Đoàn Quốc', 'anhlapro030@gmail.com', '0586484990', 'sÃ gfasd'),
                                                                              (5, ' Đoàn Thanh ', 'anhlapro040@gmail.com', '0586487990', 'dfsf'),
                                                                              (6, 'Huy Thanh Tùng ', 'anhlapro050@gmail.com', '0586488990', 'sáº§gfsdg'),
                                                                              (7, 'Thanh Đoàn Quốc', 'anhlapro060@gmail.com', '0586489990', 'ádasdf'),
                                                                              (8, ' Thanh Tùng Đoàn Quốc', 'anhlapro070@gmail.com', '0586400990', 'sadsaf'),
                                                                                (9, 'Nguyễn Quốc Bình', 'binhquoc23@gmail.com', '0665422160', 'saasaf'),
                                                                              (10, 'Nguyễn  Bình', 'binhquoc21@gmail.com', '0377422160', 'sasarrf'),
                                                                              (11, 'Nguyễn Quốc', 'binhquoc22@gmail.com', '0388422160', 'sedsafrr'),
                                                                                (12, 'Nguyễn Quốc Huy', 'binhquoc24@gmail.com', '0905422160', 'sddsgaf'),
                                                                                (13, 'Nguyễn Quốc Bình Long', 'binhquoc25@gmail.com', '0365422160', 'sarshaf'),
                                                                                (14, 'Nguyễn Thanh Bình', 'binhquoc26@gmail.com', '0785422160', 'satsajf'),
                                                                                (15, 'Cao Quốc Bình', 'binhquoc27@gmail.com', '0235422160', 'saysakf'),
                                                                              (16, 'Nguyễn Quốc Hoai', 'binhquoc28@gmail.com', '0351222160', 'sadsafl'),
                                                                              (17, 'Nguyễn Thanh Long', 'binhquoc29@gmail.com', '0353322160', 'sadsbfaf'),
                                                                              (18, 'Long Quốc Huy', 'binhquoc3@gmail.com', '0355520160', 'sadsaqf'),
                                                                                  (19, 'La Quốc Thanh', 'binhquoc23@gmail.com', '0955422160', 'esadsafd'),
                                                                                (20, 'Cao Thanh Hoa', 'binhquc23@gmail.com', '0359922160', 'bsadsagf');

INSERT INTO `gallerys` (`id`, `product_id`, `img`)
VALUES(1, 1, 'img/may-loc-nuoc-ro-karofi-kaq-x16-10-loi-130223-054043-600x600.jpg'),
      (2, 1, 'img/small3.jpg'),
      (3, 1, 'img/small2.jpg'),
      (4, 1, 'img/small1.jpg'),
      (5, 2, 'img/p2.1.jpg'),
      (6, 2, 'img/p2.2.jpg'),
      (7, 2, 'img/p2.3.jpg'),
      (8, 2, 'img/p2.4.jpg'),
      (9, 3, 'img/p3.1.jpg'),
      (10, 3,'img/p3.2.jpg'),
      (11, 3,'img/p3.3.jpg'),
      (12, 3,'img/p3.4.jpg'),
      (13, 4,'img/p4.1.jpg'),
      (14, 4,'img/p4.2.jpg'),
      (15, 4,'img/p4.3.jpg'),
      (16, 4,'img/p4.4.jpg'),
      (17, 5,'img/p5.1.jpg'),
      (18, 5,'img/p5.2.jpg'),
      (19, 5,'img/p5.3.jpg'),
      (20, 5,'img/p5.4.jpg'),
      (21, 6, 'img/p6.1.jpg'),
      (22, 6, 'img/p6.2.jpg'),
      (23, 6, 'img/p6.3.jpg'),
      (24, 6, 'img/p6.4.jpg'),
      (25, 7, 'img/p7.1.jpg'),
      (26, 7, 'img/p7.2.jpg'),
      (27, 7, 'img/p7.3.jpg'),
      (28, 7, 'img/p7.4.jpg'),
      (29, 8, 'img/p8.1.jpg'),
      (30, 8, 'img/p8.2.jpg'),
      (31, 8, 'img/p8.3.jpg'),
      (32, 8, 'img/p8.4.jpg'),
      (33, 9, 'img/p9.1.jpg'),
      (34, 9, 'img/p9.2.jpg'),
      (35, 9, 'img/p9.3.jpg'),
      (36, 9, 'img/p9.4.jpg'),
      (37, 10, 'img/p10.1.jpg'),
      (38, 10, 'img/p10.2.jpg'),
      (39, 10, 'img/p10.3.jpg'),
      (40, 10, 'img/p10.4.jpg'),
      (41, 11, 'img/p11.1.jpg'),
      (42, 11, 'img/p11.2.jpg'),
      (43, 11, 'img/p11.3.jpg'),
      (44, 11, 'img/p11.4.jpg'),
      (45, 12, 'img/p12.1.jpg'),
      (46, 12, 'img/p12.2.jpg'),
      (47, 12, 'img/p12.3.jpg'),
      (48, 12, 'img/p12.4.jpg'),
      (49, 13, 'img/p13.1.jpg'),
      (50, 13, 'img/p13.2.jpg'),
      (51, 13, 'img/p13.3.jpg'),
      (52, 13, 'img/p13.4.jpg'),
      (53, 14, 'img/p14.1.jpg'),
      (54, 14, 'img/p14.2.jpg'),
      (55, 14, 'img/p14.3.jpg'),
      (56, 14, 'img/p14.4.jpg'),
      (57, 15, 'img/p15.1.jpg'),
      (58, 15, 'img/p15.2.jpg'),
      (59, 15, 'img/p15.3.jpg'),
      (60, 15, 'img/p15.4.jpg'),
      (61, 16, 'img/p16.1.jpg'),
      (62, 16, 'img/p16.2.jpg'),
      (63, 16, 'img/p16.3.jpg'),
      (64, 16, 'img/p16.4.jpg'),
      (65, 17, 'img/p17.1.jpg'),
      (66, 17, 'img/p17.2.jpg'),
      (67, 17, 'img/p17.3.jpg'),
      (68, 17, 'img/p17.4.jpg'),
      (69, 18, 'img/p18.1.jpg'),
      (70, 18, 'img/p18.2.jpg'),
      (71, 18, 'img/p18.3.jpg'),
      (72, 18, 'img/p18.4.jpg'),
      (73, 19, 'img/p19.1.jpg'),
      (74, 19, 'img/p19.2.jpg'),
      (75, 19, 'img/p19.3.jpg'),
      (76, 19, 'img/p19.4.jpg'),
      (77, 20, 'img/p20.1.jpg'),
      (78, 20, 'img/p20.2.jpg'),
      (79, 20, 'img/p20.3.jpg'),
      (80, 20, 'img/p20.4.jpg'),
      (81, 21, 'img/p21.1.jpg'),
      (82, 21, 'img/p21.2.jpg'),
      (83, 21, 'img/p21.3.jpg'),
      (84, 21, 'img/p21.4.jpg');
INSERT INTO `orders` (`id`, `user_id`, `address`, `phone`, `order_date`, `status`, `received_date`, `total_money`, `voucher_id`) VALUES
                                                                                                                                   (101, 1, '126 Phuoc Long', '0586485990', '2024-01-22 21:08:12', 'Đang đặt hàng', NULL, 7984000, 2),
                                                                                                                                   (102, 2, '125 ', '0586485991', '2024-01-22 21:09:12', 'Đang đặt hàng', NULL, 7984000, 2),
                                                                                                                                   (103, 3, '125 Đặng Văn Bi', '0286485990', '2024-01-22 21:18:12', 'Đang đặt hàng', NULL, 7924000, 2),
                                                                                                                                   (104, 4, '128 Phuoc Long', '0536485990', '2024-01-22 21:08:02', 'Đang đặt hàng', NULL, 7984000, 2),
                                                                                                                                   (106, 5, '129 Phuoc Long', '0546485990', '2024-01-22 21:38:12', 'Đang đặt hàng', NULL, 7986000, 2),
                                                                                                                                   (107, 6, '13 Phuoc Long', '0585485990', '2024-01-22 21:48:12', 'Đang đặt hàng', NULL, 7984700, 2),
                                                                                                                                   (109, 7, '1261 Phuoc Long', '0686485990', '2024-01-22 22:08:12', 'Đang đặt hàng', NULL, 7984000, 2),
                                                                                                                                   (107, 8, '1263 Phuoc Long', '0786485990', '2024-01-22 23:08:12', 'Đang đặt hàng', NULL, 7904000, 2),
                                                                                                                                   (106, 9, '1264 Phuoc Long', '0886485990', '2024-01-22 20:08:12', 'Đang đặt hàng', NULL, 7234000, 2),
                                                                                                                                   (104, 10, '1265 Phuoc Long', '09586485990', '2024-01-22 19:08:12', 'Đang đặt hàng', NULL, 12284000, 2),
                                                                                                                                   (103, 11, '25 Đặng Văn Bi', '0586445990', '2024-01-22 21:28:12', 'Đang đặt hàng', NULL, 9984000, 2),
                                                                                                                                   (102, 12, '15 Đặng Văn Bi', '0586455990', '2024-01-22 21:48:02', 'Đang đặt hàng', NULL, 5984000, 2),
                                                                                                                                   (101, 13, '26 Phuoc Long', '05864865990', '2024-01-22 21:08:22', 'Đang đặt hàng', NULL, 6984000, 2),
                                                                                                                                     (110, 14, '625 Đặng Văn Bi', '0516485990', '2024-01-23 00:17:59', 'Đã thanh toán', '2024-01-23', 22360000, 2),
                                                                                                                                     (111, 15, '1256 Phuoc Long', '0526485990', '2024-01-23 00:21:57', 'Đã thanh toán', '2024-01-23', 42320000, 2),
                                                                                                                                     (112, 16, '1126 Phuoc Long', '0506485990', '2024-01-23 00:23:22', 'Đã thanh toán', '2024-01-23', 23648000, 2),
                                                                                                                                     (113, 17, '126 Phuoc Long', '0500485990', '2024-01-23 00:27:53', 'Đã thanh toán', '2024-01-23', 9744000, 2),
                                                                                                                                     (114, 18, '225 Đặng Văn Bi', '0396485990', '2024-01-23 00:29:56', 'Đã thanh toán', '2024-01-23', 12144000, 2),
                                                                                                                                     (115, 19, '126 Phuoc Long', '0590485770', '2024-01-23 00:32:05', 'Đã thanh toán', '2024-01-23', 13960000, 2),
                                                                                                                                     (116, 20, '121 Đặng Văn Bi', '0586489990', '2024-01-23 00:40:09', 'Đã thanh toán', '2024-01-23', 7590000, 3);
INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `quantity`, `total_money`) VALUES
                                                                                                   (6, 104, 2, 3490000, 1, 3490000),
                                                                                                   (7, 103, 2, 4490000, 1, 4490000),
                                                                                                   (8, 102, 2, 5490000, 1, 5490000),
                                                                                                   (9, 101, 2, 6490000, 1, 6490000),
                                                                                                   (10, 117, 2, 7490000, 1, 7490000),
                                                                                                   (11, 102, 2, 8490000, 1, 8490000),
                                                                                                     (12, 109, 4, 9490000, 1, 9490000),
                                                                                                     (13, 110, 2, 2980000, 2, 5690000),
                                                                                                     (14, 110, 5, 2097000, 3, 6291000),
                                                                                                     (15, 111, 2, 1396000, 4, 5584000),
                                                                                                     (16, 111, 4, 6490000, 6, 38940000),
                                                                                                     (17, 112, 2, 3490000, 1, 3490000),
                                                                                                     (18, 112, 3, 8670000, 3, 26070000),
                                                                                                     (19, 113, 2, 3498000, 1, 3490000),
                                                                                                 (20, 113, 3, 8697000, 1, 8690000),
                                                                                                     (21, 114, 3, 8690000, 1, 8690000),
                                                                                                     (22, 114, 4, 6490000, 1, 6490000),
                                                                                                     (23, 115, 2, 3490000, 5, 17450000),
                                                                                                     (24, 116, 3, 8690000, 1, 8690000),
                                                                                                     (25, 116, 4, 6490000, 1, 6490000);
INSERT INTO `payments` (`id`, `order_id`, `payment_type`, `payment_date`, `total`) VALUES
                                                                                       (1, 115, 'Thanh toán bằng thẻ ngân hàng', '2024-01-23 00:32:08', 3960000),
                                                                                       (2, 116, 'Thanh toán bằng tiền mặt', '2024-01-24 00:40:12', 7592000),
                                                                                       (3, 113, 'Thanh toán bằng tiền mặt', '2024-01-25 00:40:12', 7591000),
                                                                                       (4, 113, 'Thanh toán bằng tiền mặt', '2024-01-26 00:40:12', 7594000),
                                                                                       (5, 115, 'Thanh toán bằng tiền mặt', '2024-01-27 00:40:12', 7595000),
                                                                                       (6, 112, 'Thanh toán bằng thẻ ngân hàng', '2024-01-23 00:40:12', 8590000),
                                                                                       (7, 106, 'Thanh toán bằng thẻ ngân hàng', '2024-02-23 00:40:12', 9590000),
                                                                                       (8, 106, 'Thanh toán bằng thẻ ngân hàng', '2024-03-23 00:40:12', 7590000),
                                                                                       (9, 107, 'Thanh toán bằng tiền mặt', '2024-04-23 00:40:12', 7190000),
                                                                                       (10, 117, 'Thanh toán bằng tiền mặt', '2024-05-23 00:40:12', 7290000),
                                                                                       (11, 118, 'Thanh toán bằng thẻ ngân hàng', '2024-06-23 00:40:12', 7390000),
                                                                                       (12, 119, 'Thanh toán bằng tiền mặt', '2024-07-23 00:40:12', 7490000),
                                                                                       (13, 101, 'Thanh toán bằng thẻ ngân hàng', '2024-08-23 00:40:12',9590000),
                                                                                       (14, 102, 'Thanh toán bằng tiền mặt', '2024-09-23 00:40:12', 7590000),
                                                                                       (15, 103, 'Thanh toán bằng thẻ ngân hàng', '2024-10-23 00:40:12', 5595000),
                                                                                       (16, 104, 'Thanh toán bằng tiền mặt', '2024-11-23 00:40:12', 6590000),
                                                                                       (17, 108, 'Thanh toán bằng thẻ ngân hàng', '2024-12-23 00:40:12', 9590000),
                                                                                       (18, 109, 'Thanh toán bằng tiền mặt', '2024-01-28 00:40:12', 7990000),
                                                                                       (19, 100, 'Thanh toán bằng thẻ ngân hàng', '2024-01-29 00:40:12', 7550000),
                                                                                       (20, 102, 'Thanh toán bằng tiền mặt', '2024-01-30 00:40:12', 7580000);







  INSERT INTO `products` (`id`, `category_id`, `type_machine_id`, `brand_id`, `title`, `price`, `img`, `discount_price`, `descriptions`, `available`, `created_at`, `updated_at`)
VALUES (1, 1, 4, 1, 'Máy lọc nước RO nóng nguội lạnh Karofi KAD-X39 10 lõi', 10490000, 'img/ro-nong-lanh-karofi-kad-x39-10-loi-140223-034144-600x600.jpg', 6190000, 'Máy lọc nước', 100, '2023-12-18', '2023-12-18'),
       (2, 1, 1, 4, 'Máy lọc nước RO Mutosi MP-290SK 9 lõi', 6670000, 'img/ro-mutosi-mp-290sk-9-loi-140223-054510-600x600-1-600x600.jpg', 3490000, 'Máy lọc nước', 100, '2023-12-10', '2023-12-10'),
       (3, 1, 2, 1,  'Máy lọc nước RO nóng nguội lạnh Karofi KAD-X58 11 lõi', 12660000, 'img/may-loc-nuoc-ro-nong-nguoi-lanh-karofi-kad-x58-11-loi-0-600x600.jpg', 8690000, 'Máy lọc nước', 50, '2023-12-11', '2023-12-11'),
       (4, 1, 2, 5,  'Máy lọc nước RO nóng nguội lạnh Hòa Phát HWBS3A 1021 10 lõi', 10670000, 'img/may-loc-nuoc-ro-nong-nguoi-lanh-hoa-phat-hwbs3a-1021-10-loi-210623-023624-600x600.jpg', 6490000, 'Máy lọc nước', 2002, '2023-12-16', '2023-12-16'),
       (5, 1, 1, 2, 'Máy lọc nước RO nóng nguội lạnh Kangaroo KG10A12 10 lõi', 10790000, 'img/may-loc-nuoc-ro-nong-nguoi-lanh-kangaroo-kg10a12-10-loi-050723-040500-600x600.jpg', 6990000, 'Máy lọc nước', 5, '2023-12-16', '2023-12-16'),
       (6, 4, 1, 2, 'Máy lọc nước RO nóng nguội Karofi KAH-X29 11 lõi', 11790000, 'img/p6.jpg', 6990000, 'Máy lọc nước RO nóng nguội Karofi KAH-X29 trang bị 11 lõi, màng lọc RO Purifim 100 GPD sản xuất tại Mỹ đảm bảo chất lượng, công nghệ kháng khuẩn Nano Silver cùng nhiều tiện ích như: ngừng hoạt động khi nước đầy bình, tự động xả nước thải,... là một thiết bị lọc nước hữu ích cho gia đình bạn.', 10, '2023-12-16', '2023-12-16'),
       (7, 3, 3, 5,  'Máy lọc nước RO nóng nguội lạnh Hòa Phát HWBS3A 1021 10 lõi', 10670000, 'img/p7.jpg', 6490000, 'Máy lọc nước RO nóng nguội lạnh Hòa Phát HWBS3A 1021 10 lõi thiết kế dạng tủ đứng kết hợp màu sắc sang trọng, dễ bố trí ở nhiều không gian như phòng khách, phòng bếp,... ngoài ra máy còn trang bị màng lọc RO Dupont Filmtec sản xuất tại Mỹ đảm bảo chất lượng và hiệu suất lọc, 3 chế độ nước nóng - nguội - lạnh đáp ứng nhiều nhu cầu,...', 2002, '2023-12-16', '2023-12-16'),
       (8, 4, 2, 4,  'Máy lọc nước RO Karofi KAQ-X16 10 lõi', 10670000, 'img/p8.jpg', 6590000, 'Máy lọc nước RO Karofi KAQ-X16 với 10, máy được trang bị màng lọc RO 100 GPD sản xuất tại Hàn Quốc đảm bảo chất lượng, thu hồi đến 50% nước tinh khiết cùng nhiều tiện ích như ngừng hoạt động khi áp lực nước thấp, tự động xả nước thải,... ', 2002, '2023-12-16', '2023-12-16'),
       (9, 2, 3, 2,  'Máy lọc nước RO nóng lạnh Mutosi MP-6100HCE 10 lõi', 10670000, 'img/p9.jpg', 6290000, ' Máy lọc nóng lạnh Mutosi MP-6100HCE 10 lõi thiết kế dạng tủ đứng sang trọng, trang bị 3 chế độ nước nóng - nguội - lạnh, bình chứa nước lớn đảm bảo luôn có nước sạch cho gia đình sử dụng, cùng nhiều tiện ích khác như tự ngừng hoạt động khi nước đầy bình hoặc áp lực nước thấp,...', 2002, '2023-12-16', '2023-12-16'),
       (10, 1, 4, 5,  'Máy lọc nước RO Sunhouse UltraPURE SHA8810K 10 lõi', 11670000, 'img/p10.jpg', 6290000, ' Máy lọc nước RO Sunhouse UltraPURE SHA8810K với 10 lõi lọc, màng lọc RO TFC 75 GPD sản xuất tại Hàn Quốc giúp đảm bảo chất lượng nước đầu ra, tổng dung tích 8 lít lọc được 10 -15 lít/giờ, giúp cung cấp đủ nguồn nước sạch đạt chuẩn Bộ Y tế cho gia đình sử dụng', 2002, '2023-12-16', '2023-12-16'),
       (11, 1, 4, 5,  'Máy lọc nước RO Sunhouse UltraPURE SHA8810K 10 lõi', 11970000, 'img/p11.jpg', 6290000, ' Máy lọc nước RO Sunhouse UltraPURE SHA8810K với 10 lõi lọc, màng lọc RO TFC 75 GPD sản xuất tại Hàn Quốc giúp đảm bảo chất lượng nước đầu ra, tổng dung tích 8 lít lọc được 10 -15 lít/giờ, giúp cung cấp đủ nguồn nước sạch đạt chuẩn Bộ Y tế cho gia đình sử dụng', 2002, '2023-12-16', '2023-12-16'),
       (12, 1, 1, 4,  'Máy lọc nước RO Karofi KAQ-X26 10 lõi', 18670000, 'img/p12.jpg', 6290000, 'Máy lọc nước RO Karofi KAQ-X26 với 10 lõi lọc, máy được trang bị màng lọc RO Purifim 100 GPD sản xuất tại Mỹ đảm bảo chất lượng, thu hồi đến 50% nước tinh khiết, công suất lọc 20 lít/giờ mạnh mẽ cùng nhiều tiện ích như ngừng hoạt động khi áp lực nước thấp, tự động xả nước thải,...', 2002, '2023-12-16', '2023-12-16'),
       (13, 2, 3, 4,  'Máy lọc nước RO nóng nguội lạnh Mutosi MP-S1011 10 lõi', 17670000, 'img/p13.jpg', 6290000, ' Máy lọc nước RO nóng nguội lạnh Mutosi MP-S1011 10 lõi thiết kế dạng tủ đứng kết hợp màu sắc sang trọng, dễ bố trí ở nhiều không gian như phòng khách, phòng bếp,... ngoài ra máy còn trang bị màng lọc RO 100 GPD sản xuất tại Hàn Quốc đảm bảo chất lượng và nguồn gốc, 3 chế độ nước nóng - nguội - lạnh đáp ứng nhiều nhu cầu,...', 2002, '2023-12-16', '2023-12-16'),
       (14, 1, 3, 4,  'Máy lọc nước RO nóng nguội lạnh Kangaroo KG10A18 10 lõi', 12670000, 'img/p14.jpg', 6290000, ' Máy lọc nước RO nóng nguội lạnh Kangaroo KG10A18 10 lõi thiết kế dạng tủ đứng, phù hợp với nhiều không gian nhà ở, văn phòng,... trang bị màng lọc RO Vortex 100 GPD sản xuất tại Hàn Quốc đảm bảo chất lượng nước sạch đầu ra, 2 vòi riêng biệt tùy chỉnh 3 chế độ nước nóng - nguội - lạnh đáp ứng tốt các nhu cầu của người dùng.', 2002, '2023-12-16', '2023-12-16'),
       (15, 3, 2, 4,  'Máy lọc nước RO Sanaky VH101HP 11 lõi', 11670000, 'img/p15.jpg', 6290000, ' Máy lọc nước RO nóng nguội lạnh Kangaroo KG10A18 10 lõi thiết kế dạng tủ đứng, phù hợp với nhiều không gian nhà ở, văn phòng,... trang bị màng lọc RO Vortex 100 GPD sản xuất tại Hàn Quốc đảm bảo chất lượng nước sạch đầu ra, 2 vòi riêng biệt tùy chỉnh 3 chế độ nước nóng - nguội - lạnh đáp ứng tốt các nhu cầu của người dùng.', 2002, '2023-12-16', '2023-12-16'),
       (16, 4, 1, 4,  'Máy lọc nước RO nóng nguội lạnh Kangaroo KG10A3 10 lõi', 12670000, 'img/p16.jpg', 6990000, ' Máy lọc nước RO Kangaroo VH101HP với 10 lõi lọc, màng lọc RO Filmtec 75 GPD sản xuất tại Hàn Quốc giúp thu hồi 50% nước tinh khiết, với tổng dung tích 6 lít lọc được 10 - 15 lít/giờ, máy đảm bảo gia đình bạn luôn có nước sạch đạt chuẩn nước sạch của Bộ Y tế để sử dụng,...', 2003, '2023-12-16', '2023-12-16'),
       (17, 5, 2, 3,  'Máy lọc nước RO inverter nóng nguội lạnh Sanaky VH102HP3 11 lõi', 13670000, 'img/p17.jpg', 6990000, ' Máy lọc nước RO nóng nguội lạnh Sanaky VH102HP3 với 11 lõi lọc, màng lọc RO Filmtec 75 GPD sản xuất tại Hàn Quốc cho nguồn nước đạt chuẩn của Bộ Y tế, công nghệ máy nén Inverter làm lạnh giúp tiết kiệm điện, có 3 chế độ nước nóng - nguội - lạnh, công suất lọc 10 - 15 lít/giờ,... cho gia đình luôn đủ nước sạch để dùng.', 2004, '2023-12-16', '2023-12-16'),
       (18, 1, 1, 3,  'Máy lọc nước RO nóng nguội lạnh Hòa Phát HWBv3Ai', 19670000, 'img/p18.jpg', 6990000, ' Máy lọc nước RO nóng nguội lạnh Hòa Phát HWBv3Ai với 11 lõi lọc, màng lọc RO Filmtec 75 GPD sản xuất tại Hàn Quốc cho nguồn nước đạt chuẩn của Bộ Y tế, công nghệ máy nén Inverter làm lạnh giúp tiết kiệm điện, có 3 chế độ nước nóng - nguội - lạnh, công suất lọc 10 - 15 lít/giờ,... cho gia đình luôn đủ nước sạch để dùng.', 2004, '2023-12-16', '2023-12-16'),
       (19, 2, 1, 2,  'Máy lọc nước RO Karofi KAQ-X16 10 lõi', 20670000, 'img/p19.jpg', 6990000, ' Máy lọc nước RO nóng nguội lạnh RO Karofi KAQ-X16 với 11 lõi lọc, màng lọc RO Filmtec 75 GPD sản xuất tại Hàn Quốc cho nguồn nước đạt chuẩn của Bộ Y tế, công nghệ máy nén Inverter làm lạnh giúp tiết kiệm điện, có 3 chế độ nước nóng - nguội - lạnh, công suất lọc 10 - 15 lít/giờ,... cho gia đình luôn đủ nước sạch để dùng.', 2004, '2023-12-16', '2023-12-16'),
       (20, 3, 2, 2,  'Máy lọc nước RO Karofi KAQ-X17 10 lõi', 27670000, 'img/p20.jpg', 7990000, ' Máy lọc nước RO nóng nguội lạnh Karofi KAQ-X17 với 11 lõi lọc, màng lọc RO Filmtec 75 GPD sản xuất tại Hàn Quốc cho nguồn nước đạt chuẩn của Bộ Y tế, công nghệ máy nén Inverter làm lạnh giúp tiết kiệm điện, có 3 chế độ nước nóng - nguội - lạnh, công suất lọc 10 - 15 lít/giờ,... cho gia đình luôn đủ nước sạch để dùng.', 2004, '2023-12-16', '2023-12-16'),
       (21, 3, 2, 2,  'Máy lọc nước RO Karofi KAQ-X17x 10 lõi', 28670000, 'img/p21.jpg', 7990000, '  Máy lọc nóng lạnh Karofi KAQ-X17 10 lõi thiết kế dạng tủ đứng sang trọng, trang bị 3 chế độ nước nóng - nguội - lạnh, bình chứa nước lớn đảm bảo luôn có nước sạch cho gia đình sử dụng, cùng nhiều tiện ích khác như tự ngừng hoạt động khi nước đầy bình hoặc áp lực nước thấp,...', 2004, '2023-12-16', '2023-12-16');

INSERT INTO `role` (`id`, `name`) VALUES
                                      (1, 'Admin'),
                                      (2, 'User');
INSERT INTO `type_machines` (`id`, `type_name`) VALUES
                                                    (1, 'Có nóng lạnh'),
                                                    (2, 'Lọc Hydrogen'),
                                                    (3, 'Lọc nước nhiễm mặn lợ'),
                                                    (4, 'Bán công nghiệp'),
                                                    (5, 'Máy lọc nước tủ đứng'),
                                                    (6, 'Máy lọc nước để bàn'),
                                                    (7, 'Máy lọc nước tủ lắp âm'),
                                                    (8, 'Máy lọc nước RO '),
                                                    (9, 'Máy lọc nước Nano '),
                                                    (10, ' Máy lọc nước điện phân'),
                                                    (11, ' Máy lọc nước UF'),
                                                    (12, 'Máy lọc nước MF '),
                                                    (13, 'Máy lọc điện giải ion kiềm'),
                                                    (14, 'Máy lọc nước mặn, nước lợ'),
                                                    (15, 'Máy lọc nước Hydrogen'),
                                                    (16, 'Máy lọc nước bán công nghiệp'),
                                                    (17, 'Máy lọc nước đầu nguồn'),
                                                    (18, 'Máy lọc nước  công nghiệp'),
                                                    (19, 'Máy lọc nước bán nông nghiệp'),
                                                    (20, 'Máy lọc nước nông nghiệp');


  INSERT INTO `users` (`id`, `role_id`, `username`, `fullname`, `email`, `phone_number`, `sex`, `address`, `password`, `created_at`, `updated_at`, `status`, `active`) VALUES
                                                                                                                                                                         (1, 2, 'lamthanh1', 'Doan Quoc Huy', 'anhlapro090@gmail.com', '0586485990', 'Anh', '126 Phuoc Long', '123', '2024-01-19 20:59:17', NULL, 1, 1),
                                                                                                                                                                         (2, 2, 'huydoan0212', 'Huy Đoàn Quốc', '21130314@st.hcmuaf.edu.vn', '0586485991', '', '81/11 QL1K', 'qweasd12', '2024-01-20 15:36:24', NULL, 1, 1),
                                                                                                                                                                         (3, 2, 'huydoan0213', 'Thanh Đoàn Quốc', '21132374@st.hcmuaf.edu.vn', '0586485992', '', '81/11 QL1A', 'qweasd13', '2024-01-20 15:36:25', NULL, 1, 1),
                                                                                                                                                                         (4, 2, 'huydoan0214', 'Huy Quốc', '21130377@st.hcmuaf.edu.vn', '0586485993', '', '81/112 QL1K', 'qweasd14', '2024-01-20 15:36:26', NULL, 1, 1),
                                                                                                                                                                         (5, 2, 'huydoan0215', ' Đoàn Quốc', '21230374@st.hcmuaf.edu.vn', '0586485994', '', '81/113 QL1K', 'qweasd15', '2024-01-20 15:36:27', NULL, 1, 1),
                                                                                                                                                                         (6, 2, 'huydoan0216', 'Hy Quốc', '211220374@st.hcmuaf.edu.vn', '0586485995', '', '81/114 QL1K', 'qweasd16', '2024-01-20 15:36:28', NULL, 1, 1),
                                                                                                                                                                         (7, 2, 'huydoan0217', 'Uy Đoàn Quốc', '421130374@st.hcmuaf.edu.vn', '0586485996', '', '81/115 QL1K', 'qwea7sd1', '2024-01-20 15:36:29', NULL, 1, 1),
                                                                                                                                                                         (8, 2, 'huydoan0218', 'Phan Thanh Phong', '21150374@st.hcmuaf.edu.vn', '0586485997', '', '123/11 QL1K', 'qw7easd1', '2024-01-20 15:36:30', NULL, 1, 1),
                                                                                                                                                                         (9, 2, 'huydoan0219', 'Phan Thanh Ty', '21130384@st.hcmuaf.edu.vn', '0586485998', '', '1131/11 QL1K', 'qweas6d1', '2024-01-20 15:31:24', NULL, 1, 1),
                                                                                                                                                                         (10, 2, 'huydoan0210', 'Phan Thanh Tong', '21110374@st.hcmuaf.edu.vn', '0586485999', '', '81/101 QL1K', 'qwea8sd1', '2024-01-20 15:32:24', NULL, 1, 1),
                                                                                                                                                                         (11, 2, 'huydoan0211', ' Phan Quốc', '21130544@st.hcmuaf.edu.vn', '0586485919', '', '451/11 QL1K', 'qweasd19', '2024-01-20 15:33:24', NULL, 1, 1),
                                                                                                                                                                         (12, 2, 'huydoan0319', ' Đoàn Quốc Nam', '21930374@st.hcmuaf.edu.vn', '0586485920', '', '581/11 QL1K', '1qweasd1', '2024-01-20 15:34:24', NULL, 1, 1),
                                                                                                                                                                         (13, 2, 'huydoan0312', 'Phan Thanh Quốc', '21240374@st.hcmuaf.edu.vn', '0586485930', '', '681/11 QL1K', '2qweasd1', '2024-01-20 15:35:24', NULL, 1, 1),
                                                                                                                                                                         (14, 2, 'huydoan0412', 'Ka An Đoàn ', '211303454@st.hcmuaf.edu.vn', '0586486990', '', '81/171 QL1K', '4qweasd1', '2024-01-20 15:38:24', NULL, 1, 1),
                                                                                                                                                                         (15, 2, 'huydoan0612', 'Ka Đoàn Quang', '21131274@st.hcmuaf.edu.vn', '0586485990', '', '891/11 QL1K', '6qweasd1', '2024-01-20 15:46:24', NULL, 1, 1),
                                                                                                                                                                         (16, 2, 'huydoan0712', 'Ka  Quốc Thanh', '21187374@st.hcmuaf.edu.vn', '0586785990', '', '811/11 QL1K', '7qweasd1', '2024-01-20 15:56:24', NULL, 1, 1),
                                                                                                                                                                         (17, 2, 'huydoan0512', 'Ka  Quốc Thanh', '21124374@st.hcmuaf.edu.vn', '05864685990', '', '851/11 QL1A', '8qweasd1', '2024-01-20 15:06:24', NULL, 1, 1),
                                                                                                                                                                         (18, 2, 'huydoan072', 'Ka  Quốc Thanh', '21134574@st.hcmuaf.edu.vn', '0536485990', '', '221/11 QL1KA', '9qweasd1', '2024-01-20 15:32:24', NULL, 1, 1),
                                                                                                                                                                         (19, 2, 'huydoan12', 'Ka  Quốc Thanh', '21130004@st.hcmuaf.edu.vn', '0582485990', '', '331/11 QL1K', '0qweasd1', '2024-01-20 15:36:24', NULL, 1, 1),
                                                                                                                                                                         (20, 2, 'huydoa0712', 'Ka  Quốc Thanh', '21134574@st.hcmuaf.edu.vn', '0586455990', '', '441/11 QL1K', '3qweasd1', '2024-01-20 05:36:24', NULL, 1, 1);




  INSERT INTO `vouchers` (`id`, `voucher_name`, `voucher_code`, `start_date`, `end_date`, `note`, `percent_decrease`) VALUES
                                                                                                                        (1, 'Không giảm giá', '0', '2024-01-22 00:36:31', '2024-03-19 00:36:35', NULL, 0),
                                                                                                                      (2, 'Giảm giá 20%', '123456', '2024-01-21 10:24:02', '2024-01-30 10:24:06', NULL, 0.2),
                                                                                                                        (3, 'Giảm giá 50%', '1222', '2024-01-21 10:56:17', '2024-01-28 10:56:19', NULL, 0.5),
                                                                                                                        (4, 'Giảm giá 5%', '1252', '2024-01-21 10:56:17', '2024-01-28 10:56:19', NULL, 0.05),
                                                                                                                        (5, 'Giảm giá 15%', '12242', '2024-01-21 10:56:17', '2024-01-28 10:56:18', NULL, 0.15),
                                                                                                                        (6, 'Giảm giá 23%', '19922', '2024-01-31 10:56:17', '2024-01-28 10:56:19', NULL, 0.23),
                                                                                                                        (7, 'Giảm giá 34%', '12345', '2024-01-22 10:56:17', '2024-03-28 10:46:19', NULL, 0.34),
                                                                                                                        (8, 'Giảm giá 45%', '2241', '2024-01-21 11:56:17', '2024-01-28 10:46:09', NULL, 0.45),
                                                                                                                        (9, 'Giảm giá 12%', '120241', '2024-03-21 10:56:17', '2024-01-28 10:46:19', NULL, 0.12),
                                                                                                                        (10, 'Giảm giá 5%', '120241', '2024-01-20 10:56:17', '2024-01-28 10:46:19', NULL, 0.05),
                                                                                                                        (11, 'Giảm giá 59%', '132241', '2024-01-21 10:56:17', '2024-01-24 10:46:19', NULL, 0.59),
                                                                                                                        (12, 'Giảm giá 13%', '125241', '2024-02-21 10:56:17', '2024-08-28 10:46:19', NULL, 0.13),
                                                                                                                        (13, 'Giảm giá 17%', '123345', '2024-01-22 10:56:17', '2024-03-28 10:46:19', NULL, 0.17),
                                                                                                                        (14, 'Giảm giá 3%', '12941', '2024-03-21 10:56:17', '2024-04-28 10:46:19', NULL, 0.03),
                                                                                                                        (15, 'Giảm giá 46%', '12271', '2024-01-22 10:56:17', '2024-01-28 10:46:19', NULL, 0.46),
                                                                                                                        (16, 'Giảm giá 55%', '142241', '2024-02-21 10:56:17', '2024-05-28 10:46:19', NULL, 0.55),
                                                                                                                        (17, 'Giảm giá 10%', '22241', '2024-01-01 10:56:17', '2024-01-08 10:46:19', NULL, 0.1),
                                                                                                                        (18, 'Giảm giá 25%', '82241', '2024-04-21 10:56:17', '2024-04-28 10:46:19', NULL, 0.25),
                                                                                                                        (19, 'Giảm giá 2%', '122641', '2024-01-21 10:56:17', '2024-01-28 10:46:19', NULL, 0.02),
                                                                                                                        (20, 'Giảm giá 65%', '12540', '2024-02-21 10:56:17', '2024-04-12 10:46:19', NULL, 0.65),
                                                                                                                        (21, 'Giảm giá 35%', '712241', '2024-02-21 10:56:17', '2024-04-28 10:46:19', NULL, 0.35);


INSERT INTO `posts`(`id`, `title`, `content`,`author`) VALUES (1,
                                                               'Máy lọc nước Pureit của nước nào ?',
                                                               'Pureit là thương hiệu thuộc tập đoàn Unilever, hoạt động tại Việt Nam từ năm 1995, đã đồng hành và phát triển cùng người dân Việt Nam hơn 20 năm qua. Unilever là thương hiệu đi đầu trong lĩnh vực cung cấp các mặt hàng tiêu dùng, với các nhãn hiệu quen thuộc như OMO, Sunlight, Vim, Surf, Knorr, Walls, Lifebuoy, Clear, Sunsilk, Ponds, P/S, Close up và nhiều nhãn hiệu khác. Pureit là giải pháp của Unilever cho nhu cầu lọc nước nói chung và tại Việt Nam nói riêng. Trên toàn cầu, kể từ khi ra mắt, Pureit đã trở thành nhãn hiệu lọc nước bán chạy nhất thế giới với sự có mặt tại 13 quốc gia cùng các sản phẩm dựa trên công nghệ lọc nước mới nhất (UV, RO, bioxit).',
                                                               'Nguyễn Quốc Bình'),
                                                              (2,
                                                               'Nên mua máy lọc nước RO hay máy lọc nước ion kiềm?',
                                                               'Sử dụng máy lọc nước RO và ion kiềm là cần thiết trong cuộc sống, giúp cung cấp nguồn nước trong sạch, tinh khiết và bổ sung khoáng chất bảo vệ sức khỏe. Vậy nên mua máy lọc nước RO hay máy lọc nước ion kiềm, cùng tìm hiểu ngay qua bài viết sau nhé!',
                                                               'Nguyễn Quốc Bình'),
                                                              (3,
                                                               'Máy lọc nước có tốt không? Có nên dùng máy lọc nước hay không?',
                                                               'Máy lọc nước là thiết bị gia dụng được nhiều người Việt ưa chuộng nhờ khả năng mang đến nguồn nước tinh khiết, đi kèm nhiều tính năng tiện dụng. Hãy cùng Điện máy XANH khám phá máy lọc nước có tốt không và có nên dùng máy lọc nước hay không nhé!',
                                                               'Nguyễn Quốc Bình'),
                                                              (4,
                                                               'Máy lọc nước thông minh là gì? Các tính năng trên máy lọc nước thông minh?',
                                                              'Máy lọc nước là thiết bị cần thiết đối với nhiều gia đình hiện nay và ngày càng phát triển thành máy lọc nước thông minh. Hãy cùng Điện máy XANH tìm hiểu máy lọc nước thông minh và những tính năng đặc biệt mà nó sở hữu qua bài viết sau nhé!',
                                                               'Nguyễn Quốc Bình'),
                                                              (5,
                                                               'Máy lọc nước Karofi của nước nào?',
                                                               'Karofi là thương hiệu thuộc tập đoàn Unilever, hoạt động tại Việt Nam từ năm 1995, đã đồng hành và phát triển cùng người dân Việt Nam hơn 20 năm qua. Unilever là thương hiệu đi đầu trong lĩnh vực cung cấp các mặt hàng tiêu dùng, với các nhãn hiệu quen thuộc như OMO, Sunlight, Vim, Surf, Knorr, Walls, Lifebuoy, Clear, Sunsilk, Ponds, P/S, Close up và nhiều nhãn hiệu khác. Pureit là giải pháp của Unilever cho nhu cầu lọc nước nói chung và tại Việt Nam nói riêng. Trên toàn cầu, kể từ khi ra mắt, Pureit đã trở thành nhãn hiệu lọc nước bán chạy nhất thế giới với sự có mặt tại 13 quốc gia cùng các sản phẩm dựa trên công nghệ lọc nước mới nhất (UV, RO, bioxit).',
                                                               'Nguyễn Quốc Bình'),
                                                              (6,
                                                               'Máy lọc nước Kangaroo loại nào tốt?',
                                                               'Kangaroo là thương hiệu thuộc tập đoàn Azirona, hoạt động tại Việt Nam từ năm 1995, đã đồng hành và phát triển cùng người dân Việt Nam hơn 20 năm qua. Unilever là thương hiệu đi đầu trong lĩnh vực cung cấp các mặt hàng tiêu dùng, với các nhãn hiệu quen thuộc như OMO, Sunlight, Vim, Surf, Knorr, Walls, Lifebuoy, Clear, Sunsilk, Ponds, P/S, Close up và nhiều nhãn hiệu khác. Pureit là giải pháp của Unilever cho nhu cầu lọc nước nói chung và tại Việt Nam nói riêng. Trên toàn cầu, kể từ khi ra mắt, Pureit đã trở thành nhãn hiệu lọc nước bán chạy nhất thế giới với sự có mặt tại 13 quốc gia cùng các sản phẩm dựa trên công nghệ lọc nước mới nhất (UV, RO, bioxit).',
                                                               'Nguyễn Quốc Bình'),
                                                              (7,
                                                               'Máy lọc nước Toshiba của nước nào ?',
                                                               'Toshiba là thương hiệu thuộc tập đoàn Japan, hoạt động tại Việt Nam từ năm 1995, đã đồng hành và phát triển cùng người dân Việt Nam hơn 20 năm qua. Unilever là thương hiệu đi đầu trong lĩnh vực cung cấp các mặt hàng tiêu dùng, với các nhãn hiệu quen thuộc như OMO, Sunlight, Vim, Surf, Knorr, Walls, Lifebuoy, Clear, Sunsilk, Ponds, P/S, Close up và nhiều nhãn hiệu khác. Pureit là giải pháp của Unilever cho nhu cầu lọc nước nói chung và tại Việt Nam nói riêng. Trên toàn cầu, kể từ khi ra mắt, Pureit đã trở thành nhãn hiệu lọc nước bán chạy nhất thế giới với sự có mặt tại 13 quốc gia cùng các sản phẩm dựa trên công nghệ lọc nước mới nhất (UV, RO, bioxit).',
                                                               'Nguyễn Quốc Bình'),
                                                              (8,
                                                               'Máy lọc nước Sanyo của nước nào ?',
                                                               'Sanyo là thương hiệu thuộc tập đoàn Japan-Unilever, hoạt động tại Việt Nam từ năm 1995, đã đồng hành và phát triển cùng người dân Việt Nam hơn 20 năm qua. Unilever là thương hiệu đi đầu trong lĩnh vực cung cấp các mặt hàng tiêu dùng, với các nhãn hiệu quen thuộc như OMO, Sunlight, Vim, Surf, Knorr, Walls, Lifebuoy, Clear, Sunsilk, Ponds, P/S, Close up và nhiều nhãn hiệu khác. Pureit là giải pháp của Unilever cho nhu cầu lọc nước nói chung và tại Việt Nam nói riêng. Trên toàn cầu, kể từ khi ra mắt, Pureit đã trở thành nhãn hiệu lọc nước bán chạy nhất thế giới với sự có mặt tại 13 quốc gia cùng các sản phẩm dựa trên công nghệ lọc nước mới nhất (UV, RO, bioxit).',
                                                               'Nguyễn Quốc Bình'),
                                                              (9,
                                                               'Máy lọc nước Kaguuro của nước nào ?',
                                                               'Kaguuro là thương hiệu thuộc tập đoàn Uctochi, hoạt động tại Việt Nam từ năm 1995, đã đồng hành và phát triển cùng người dân Việt Nam hơn 20 năm qua. Unilever là thương hiệu đi đầu trong lĩnh vực cung cấp các mặt hàng tiêu dùng, với các nhãn hiệu quen thuộc như OMO, Sunlight, Vim, Surf, Knorr, Walls, Lifebuoy, Clear, Sunsilk, Ponds, P/S, Close up và nhiều nhãn hiệu khác. Pureit là giải pháp của Unilever cho nhu cầu lọc nước nói chung và tại Việt Nam nói riêng. Trên toàn cầu, kể từ khi ra mắt, Pureit đã trở thành nhãn hiệu lọc nước bán chạy nhất thế giới với sự có mặt tại 13 quốc gia cùng các sản phẩm dựa trên công nghệ lọc nước mới nhất (UV, RO, bioxit).',
                                                               'Nguyễn Quốc Bình'),
                                                              (10,
                                                               'Máy lọc nước Daizako của nước nào ?',
                                                               'Daizako là thương hiệu thuộc tập đoàn Sanyo-Japan, hoạt động tại Việt Nam từ năm 1995, đã đồng hành và phát triển cùng người dân Việt Nam hơn 20 năm qua. Unilever là thương hiệu đi đầu trong lĩnh vực cung cấp các mặt hàng tiêu dùng, với các nhãn hiệu quen thuộc như OMO, Sunlight, Vim, Surf, Knorr, Walls, Lifebuoy, Clear, Sunsilk, Ponds, P/S, Close up và nhiều nhãn hiệu khác. Pureit là giải pháp của Unilever cho nhu cầu lọc nước nói chung và tại Việt Nam nói riêng. Trên toàn cầu, kể từ khi ra mắt, Pureit đã trở thành nhãn hiệu lọc nước bán chạy nhất thế giới với sự có mặt tại 13 quốc gia cùng các sản phẩm dựa trên công nghệ lọc nước mới nhất (UV, RO, bioxit).',
                                                               'Nguyễn Quốc Bình'),
                                                              (11,
                                                               'Máy lọc nước Mutosi của nước nào? Có tốt không?',
                                                               'Mutosi là thương hiệu thuộc tập đoàn Unilevero, hoạt động tại Việt Nam từ năm 1995, đã đồng hành và phát triển cùng người dân Việt Nam hơn 20 năm qua. Unilever là thương hiệu đi đầu trong lĩnh vực cung cấp các mặt hàng tiêu dùng, với các nhãn hiệu quen thuộc như OMO, Sunlight, Vim, Surf, Knorr, Walls, Lifebuoy, Clear, Sunsilk, Ponds, P/S, Close up và nhiều nhãn hiệu khác. Pureit là giải pháp của Unilever cho nhu cầu lọc nước nói chung và tại Việt Nam nói riêng. Trên toàn cầu, kể từ khi ra mắt, Pureit đã trở thành nhãn hiệu lọc nước bán chạy nhất thế giới với sự có mặt tại 13 quốc gia cùng các sản phẩm dựa trên công nghệ lọc nước mới nhất (UV, RO, bioxit).',
                                                               'Nguyễn Thanh Hoài'),
                                                              (12,
                                                               'Máy lọc nước Mutosio của nước nào ?',
                                                               'Mutosio là thương hiệu uy tín của Việt Nam, được thành lập vào năm 2018 với sứ mệnh nâng cao sức khỏe của con người. Thương hiệu chuyên kinh doanh các sản phẩm về gia dụng như: máy lọc nước, máy xay thịt, máy ép chậm, bình đun siêu tốc, nồi chiên không dầu,...',
                                                               'Nguyễn Thanh Hoài'),
                                                              (13,
                                                               'Máy lọc nước Daizio của nước nào ?',
                                                               'Daizio là thương hiệu thuộc tập đoàn Takohama, hoạt động tại Việt Nam từ năm 1995, đã đồng hành và phát triển cùng người dân Việt Nam hơn 20 năm qua. Unilever là thương hiệu đi đầu trong lĩnh vực cung cấp các mặt hàng tiêu dùng, với các nhãn hiệu quen thuộc như OMO, Sunlight, Vim, Surf, Knorr, Walls, Lifebuoy, Clear, Sunsilk, Ponds, P/S, Close up và nhiều nhãn hiệu khác. Pureit là giải pháp của Unilever cho nhu cầu lọc nước nói chung và tại Việt Nam nói riêng. Trên toàn cầu, kể từ khi ra mắt, Pureit đã trở thành nhãn hiệu lọc nước bán chạy nhất thế giới với sự có mặt tại 13 quốc gia cùng các sản phẩm dựa trên công nghệ lọc nước mới nhất (UV, RO, bioxit).',
                                                               'Nguyễn Thanh Hoài'),
                                                              (14,
                                                               'Máy lọc nước Megumi của nước nào ?',
                                                               'Megumi là thương hiệu thuộc tập đoàn Unileveir, hoạt động tại Việt Nam từ năm 1995, đã đồng hành và phát triển cùng người dân Việt Nam hơn 20 năm qua. Unilever là thương hiệu đi đầu trong lĩnh vực cung cấp các mặt hàng tiêu dùng, với các nhãn hiệu quen thuộc như OMO, Sunlight, Vim, Surf, Knorr, Walls, Lifebuoy, Clear, Sunsilk, Ponds, P/S, Close up và nhiều nhãn hiệu khác. Pureit là giải pháp của Unilever cho nhu cầu lọc nước nói chung và tại Việt Nam nói riêng. Trên toàn cầu, kể từ khi ra mắt, Pureit đã trở thành nhãn hiệu lọc nước bán chạy nhất thế giới với sự có mặt tại 13 quốc gia cùng các sản phẩm dựa trên công nghệ lọc nước mới nhất (UV, RO, bioxit).',
                                                               'Nguyễn Thanh Hoài'),
                                                              (15,
                                                               'Máy lọc nước Pureito của nước nào ?',
                                                               'Pureito là thương hiệu thuộc tập đoàn Unlever, hoạt động tại Việt Nam từ năm 1995, đã đồng hành và phát triển cùng người dân Việt Nam hơn 20 năm qua. Unilever là thương hiệu đi đầu trong lĩnh vực cung cấp các mặt hàng tiêu dùng, với các nhãn hiệu quen thuộc như OMO, Sunlight, Vim, Surf, Knorr, Walls, Lifebuoy, Clear, Sunsilk, Ponds, P/S, Close up và nhiều nhãn hiệu khác. Pureit là giải pháp của Unilever cho nhu cầu lọc nước nói chung và tại Việt Nam nói riêng. Trên toàn cầu, kể từ khi ra mắt, Pureit đã trở thành nhãn hiệu lọc nước bán chạy nhất thế giới với sự có mặt tại 13 quốc gia cùng các sản phẩm dựa trên công nghệ lọc nước mới nhất (UV, RO, bioxit).',
                                                               'Nguyễn Thanh Hoài'),
                                                              (16,
                                                               'Máy lọc nước Purotieit của nước nào ?',
                                                               'Purotieit là thương hiệu thuộc tập đoàn Unilever, hoạt động tại Việt Nam từ năm 1995, đã đồng hành và phát triển cùng người dân Việt Nam hơn 20 năm qua. Unilever là thương hiệu đi đầu trong lĩnh vực cung cấp các mặt hàng tiêu dùng, với các nhãn hiệu quen thuộc như OMO, Sunlight, Vim, Surf, Knorr, Walls, Lifebuoy, Clear, Sunsilk, Ponds, P/S, Close up và nhiều nhãn hiệu khác. Pureit là giải pháp của Unilever cho nhu cầu lọc nước nói chung và tại Việt Nam nói riêng. Trên toàn cầu, kể từ khi ra mắt, Pureit đã trở thành nhãn hiệu lọc nước bán chạy nhất thế giới với sự có mặt tại 13 quốc gia cùng các sản phẩm dựa trên công nghệ lọc nước mới nhất (UV, RO, bioxit).',
                                                               'Nguyễn Thanh Hoài'),
                                                              (17,
                                                               'Máy lọc nước California của nước nào ?',
                                                               'California là thương hiệu thuộc tập đoàn Unileveryo, hoạt động tại Việt Nam từ năm 1995, đã đồng hành và phát triển cùng người dân Việt Nam hơn 20 năm qua. Unilever là thương hiệu đi đầu trong lĩnh vực cung cấp các mặt hàng tiêu dùng, với các nhãn hiệu quen thuộc như OMO, Sunlight, Vim, Surf, Knorr, Walls, Lifebuoy, Clear, Sunsilk, Ponds, P/S, Close up và nhiều nhãn hiệu khác. Pureit là giải pháp của Unilever cho nhu cầu lọc nước nói chung và tại Việt Nam nói riêng. Trên toàn cầu, kể từ khi ra mắt, Pureit đã trở thành nhãn hiệu lọc nước bán chạy nhất thế giới với sự có mặt tại 13 quốc gia cùng các sản phẩm dựa trên công nghệ lọc nước mới nhất (UV, RO, bioxit).',
                                                               'Nguyễn Thanh Hoài'),
                                                              (18,
                                                               'Máy lọc nước Santosi của nước nào ?',
                                                               'Santosi là thương hiệu thuộc tập đoàn Unileveopr, hoạt động tại Việt Nam từ năm 1995, đã đồng hành và phát triển cùng người dân Việt Nam hơn 20 năm qua. Unilever là thương hiệu đi đầu trong lĩnh vực cung cấp các mặt hàng tiêu dùng, với các nhãn hiệu quen thuộc như OMO, Sunlight, Vim, Surf, Knorr, Walls, Lifebuoy, Clear, Sunsilk, Ponds, P/S, Close up và nhiều nhãn hiệu khác. Pureit là giải pháp của Unilever cho nhu cầu lọc nước nói chung và tại Việt Nam nói riêng. Trên toàn cầu, kể từ khi ra mắt, Pureit đã trở thành nhãn hiệu lọc nước bán chạy nhất thế giới với sự có mặt tại 13 quốc gia cùng các sản phẩm dựa trên công nghệ lọc nước mới nhất (UV, RO, bioxit).',
                                                               'Nguyễn Thanh Hoài'),
                                                              (19,
                                                               'Máy lọc nước Mafiw của nước nào ?',
                                                               'Mafiw là thương hiệu thuộc tập đoàn Coconut, hoạt động tại Việt Nam từ năm 1995, đã đồng hành và phát triển cùng người dân Việt Nam hơn 20 năm qua. Unilever là thương hiệu đi đầu trong lĩnh vực cung cấp các mặt hàng tiêu dùng, với các nhãn hiệu quen thuộc như OMO, Sunlight, Vim, Surf, Knorr, Walls, Lifebuoy, Clear, Sunsilk, Ponds, P/S, Close up và nhiều nhãn hiệu khác. Pureit là giải pháp của Unilever cho nhu cầu lọc nước nói chung và tại Việt Nam nói riêng. Trên toàn cầu, kể từ khi ra mắt, Pureit đã trở thành nhãn hiệu lọc nước bán chạy nhất thế giới với sự có mặt tại 13 quốc gia cùng các sản phẩm dựa trên công nghệ lọc nước mới nhất (UV, RO, bioxit).',
                                                               'Nguyễn Thanh Hoài'),
                                                              (20,
                                                               'Máy lọc nước Emtopoa của nước nào ?',
                                                               'Emtopoa là thương hiệu thuộc tập đoàn Nikia, hoạt động tại Việt Nam từ năm 1995, đã đồng hành và phát triển cùng người dân Việt Nam hơn 20 năm qua. Unilever là thương hiệu đi đầu trong lĩnh vực cung cấp các mặt hàng tiêu dùng, với các nhãn hiệu quen thuộc như OMO, Sunlight, Vim, Surf, Knorr, Walls, Lifebuoy, Clear, Sunsilk, Ponds, P/S, Close up và nhiều nhãn hiệu khác. Pureit là giải pháp của Unilever cho nhu cầu lọc nước nói chung và tại Việt Nam nói riêng. Trên toàn cầu, kể từ khi ra mắt, Pureit đã trở thành nhãn hiệu lọc nước bán chạy nhất thế giới với sự có mặt tại 13 quốc gia cùng các sản phẩm dựa trên công nghệ lọc nước mới nhất (UV, RO, bioxit).',
                                                               'Nguyễn Thanh Hoài');
