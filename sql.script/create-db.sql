CREATE DATABASE IF NOT EXISTS contacts;

DROP TABLE IF EXISTS `person` ;

CREATE TABLE `person` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`firstname` varchar(45) DEFAULT NULL,
	`lastname` varchar(45) DEFAULT NULL,
	`email` varchar(45) DEFAULT NULL,
	`phone` varchar(45) DEFAULT NULL,
	`add_id` int(11),
	PRIMARY KEY (`id`),
	FOREIGN KEY ('add_id') REFERENCES `address`(`id`)
    )ENGINE=InnoDB DEFAULT CHARSET=utf8;
 

DROP TABLE IF EXISTS login ;

CREATE TABLE `login`
(
	`id`int(11) NOT NULL AUTO_INCREMENT,
	`username` varchar(45) NOT NULL,
	`password` varchar(45) DEFAULT NULL,
	PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO login VALUES('1','user',null );

DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`(
	`id` int(11) NOT NULL AUTO_INCREMENT,
    `address` varchar(45) DEFAULT NULL,
    `city` varchar(45) DEFAULT NULL,
    `state` varchar(45) DEFAULT NULL,
    `zipcode` int(5) DEFAULT NULL,
    PRIMARY KEY (`id`)
);


