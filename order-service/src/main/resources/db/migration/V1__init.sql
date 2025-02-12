CREATE TABLE `t_order` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `order_number` VARCHAR(255) DEFAULT NULL,
    `sku_code` VARCHAR(255),
    `quantity` INT(11),
    `price` DECIMAL(19,2),
    PRIMARY KEY (`id`)
);