CREATE TABLE `role` (
                        `id` int PRIMARY KEY,
                        `name` varchar(255)
);

CREATE TABLE `users` (
                         `id` int PRIMARY KEY AUTO_INCREMENT,
                         `role_id` int,
                         `username` varchar(255),
                         `fullname` varchar(255),
                         `email` varchar(255),
                         `phone_number` varchar(255),
                         `sex` bit,
                         `address` varchar(255),
                         `password` varchar(255),
                         `created_at` datetime,
                         `updated_at` datetime,
                         `status` int,
                         `active` int
);

CREATE TABLE `categorys` (
                             `id` int PRIMARY KEY,
                             `name` varchar(255)
);

CREATE TABLE `products` (
                            `id` int PRIMARY KEY,
                            `category_id` int,
                            `type_machine_id` int,
                            `brand_id` int,
                            `sale_product_id` int,
                            `title` varchar(255),
                            `price` int,
                            `img` varchar(255),
                            `discount_price` int,
                            `description` varchar(255),
                            `available` int,
                            `created_at` date,
                            `updated_at` date
);

CREATE TABLE `gallerys` (
                           `id` int PRIMARY KEY,
                           `product_id` int,
                           `img` varchar(255)
);

CREATE TABLE `feedbacks` (
                             `id` int PRIMARY KEY,
                             `product_id` int,
                             `user_id` int,
                             `title` varchar(255),
                             `note` varchar(255),
                             `date` date,
                             `display` int
);

CREATE TABLE `orders` (
                          `id` int PRIMARY KEY,
                          `user_id` int,
                          `address` varchar(255),
                          `phone` varchar(255),
                          `order_date` datetime,
                          `status` varchar(255),
                          `received_date` date,
                          `total_money` int
);

CREATE TABLE `order_details` (
                                 `id` int PRIMARY KEY,
                                 `order_id` int,
                                 `product_id` int,
                                 `price` int,
                                 `quantity` int,
                                 `total_money` int
);

CREATE TABLE `vouchers` (
                            `id` int PRIMARY KEY,
                            `voucher_name` varchar(255),
                            `voucher_code` varchar(255),
                            `start_date` datetime,
                            `end_date` datetime,
                            `note` varchar(255)
);

CREATE TABLE `rates` (
                         `id` int PRIMARY KEY,
                         `user_id` int,
                         `product_id` int,
                         `name` varchar(255),
                         `email` varchar(255),
                         `phone_number` varchar(255),
                         `note` text,
                         `star` tinyint
);

CREATE TABLE `storehouses` (
                               `id` int PRIMARY KEY,
                               `name_store` varchar(255)
);

CREATE TABLE `payments` (
                            `id` int PRIMARY KEY,
                            `order_id` int,
                            `payment_type` varchar(255),
                            `card_number` varchar(255),
                            `payment_date` datetime,
                            `total` int
);

CREATE TABLE `brands` (
                          `id` int PRIMARY KEY,
                          `name` varchar(255),
                          `made_in` varchar(255)
);

CREATE TABLE `type_machines` (
                                 `id` int PRIMARY KEY,
                                 `type_name` varchar(255)
);

CREATE TABLE `timesale_products` (
                                     `id` int PRIMARY KEY,
                                     `date_stared` datetime,
                                     `date_end` datetime
);

CREATE TABLE `product_details` (
                                   `id` int PRIMARY KEY,
                                   `type_set` varchar(255),
                                   `technical` varchar(255),
                                   `performance_filter` varchar(255),
                                   `power` varchar(255),
                                   `temperature` varchar(255),
                                   `height` float,
                                   `weight` float,
                                   `warranty` varchar(255)
);

CREATE TABLE `product_vouchers` (
                                    `id` int PRIMARY KEY,
                                    `product_id` int,
                                    `voucher_id` int
);

CREATE TABLE `product_storehouses` (
                                       `id` int PRIMARY KEY,
                                       `product_id` int,
                                       `storehouse_id` int
);

CREATE TABLE `contacts` (
                            `id` int PRIMARY KEY,
                            `name` varchar(255),
                            `email` varchar(255),
                            `phone_number` varchar(255),
                            `content` varchar(255)
);

ALTER TABLE `users` ADD FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

ALTER TABLE `products` ADD FOREIGN KEY (`category_id`) REFERENCES `categorys` (`id`);

ALTER TABLE `order_details` ADD FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `gallerys` ADD FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `order_details` ADD FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

ALTER TABLE `orders` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `feedbacks` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `products` ADD FOREIGN KEY (`type_machine_id`) REFERENCES `type_machines` (`id`);

ALTER TABLE `products` ADD FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

ALTER TABLE `product_details` ADD FOREIGN KEY (`id`) REFERENCES `products` (`id`);

ALTER TABLE `payments` ADD FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

ALTER TABLE `product_vouchers` ADD FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `product_vouchers` ADD FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`);

ALTER TABLE `product_storehouses` ADD FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `product_storehouses` ADD FOREIGN KEY (`storehouse_id`) REFERENCES `storehouses` (`id`);

ALTER TABLE `products` ADD FOREIGN KEY (`sale_product_id`) REFERENCES `timesale_products` (`id`);

ALTER TABLE `rates` ADD FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `rates` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);


INSERT INTO `categorys` (`id`, `name`) VALUES (1, 'Lọc nước RO');
INSERT INTO `categorys` (`id`, `name`) VALUES (2, 'Có nóng lạnh');
INSERT INTO `categorys` (`id`, `name`) VALUES (3, 'Âm tủ để bàn');
INSERT INTO `categorys` (`id`, `name`) VALUES (4, 'Lọc nước Nano, UF, MF');
INSERT INTO `categorys` (`id`, `name`) VALUES (5, 'Lọc nước không điện');

INSERT INTO `products` (`id`, `category_id`, `type_machine_id`, `brand_id`, `sale_product_id`, `title`, `price`, `discount_price`, `description`, `available`, `created_at`, `updated_at`, `img`) VALUES (0, 1, NULL, NULL, NULL, 'Máy lọc nước RO nóng nguội lạnh Karofi KAD-X39 10 lõi', 10490000, 6190000, 'Máy lọc nước', 100, '2023-12-18', '2023-12-18', 'img/ro-nong-lanh-karofi-kad-x39-10-loi-140223-034144-600x600.jpg');
INSERT INTO `products` (`id`, `category_id`, `type_machine_id`, `brand_id`, `sale_product_id`, `title`, `price`, `discount_price`, `description`, `available`, `created_at`, `updated_at`, `img`) VALUES (1, 1, NULL, NULL, NULL, 'Máy lọc nước RO Mutosi MP-290SK 9 lõi', 6670000, 3490000, 'Máy lọc nước', 100, '2023-12-10', '2023-12-10', 'img/ro-mutosi-mp-290sk-9-loi-140223-054510-600x600-1-600x600.jpg');
INSERT INTO `products` (`id`, `category_id`, `type_machine_id`, `brand_id`, `sale_product_id`, `title`, `price`, `discount_price`, `description`, `available`, `created_at`, `updated_at`, `img`) VALUES (2, 1, NULL, NULL, NULL, 'Máy lọc nước RO nóng nguội lạnh Karofi KAD-X58 11 lõi', 12660000, 8690000, 'Máy lọc nước', 50, '2023-12-11', '2023-12-11', 'img/may-loc-nuoc-ro-nong-nguoi-lanh-karofi-kad-x58-11-loi-0-600x600.jpg');
INSERT INTO `products` (`id`, `category_id`, `type_machine_id`, `brand_id`, `sale_product_id`, `title`, `price`, `discount_price`, `description`, `available`, `created_at`, `updated_at`, `img`) VALUES (3, 1, NULL, NULL, NULL, 'Máy lọc nước RO nóng nguội lạnh Hòa Phát HWBS3A 1021 10 lõi', 10670000, 6490000, 'Máy lọc nước', 2002, '2023-12-16', '2023-12-16', 'img/may-loc-nuoc-ro-nong-nguoi-lanh-hoa-phat-hwbs3a-1021-10-loi-210623-023624-600x600.jpg');
INSERT INTO `products` (`id`, `category_id`, `type_machine_id`, `brand_id`, `sale_product_id`, `title`, `price`, `discount_price`, `description`, `available`, `created_at`, `updated_at`, `img`) VALUES (4, 1, NULL, NULL, NULL, 'Máy lọc nước RO nóng nguội lạnh Kangaroo KG10A12 10 lõi', 10790000, 6990000, 'Máy lọc nước', 5, '2023-12-16', '2023-12-16', 'img/may-loc-nuoc-ro-nong-nguoi-lanh-kangaroo-kg10a12-10-loi-050723-040500-600x600.jpg');

INSERT INTO `gallerys` (`id`, `product_id`, `img`) VALUES (1, 0, 'img/may-loc-nuoc-ro-karofi-kaq-x16-10-loi-130223-054043-600x600.jpg');
INSERT INTO `gallerys` (`id`, `product_id`, `img`) VALUES (2, 0, 'img/small3.jpg');
INSERT INTO `gallerys` (`id`, `product_id`, `img`) VALUES (3, 0, 'img/small2.jpg');
INSERT INTO `gallerys` (`id`, `product_id`, `img`) VALUES (4, 0, 'img/small1.jpg');