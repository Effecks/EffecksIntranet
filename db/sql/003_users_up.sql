
CREATE TABLE `users` (
 `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 `email` VARCHAR(50),
 `password` VARCHAR(50),
 `first_name` VARCHAR(50),
 `last_name` VARCHAR(50),
 `street` VARCHAR(50),
 `city` VARCHAR(50),
 `stateid` INT DEFAULT NULL,
 `zip` INT(5),
 `phone` INT(10),
 `cell` INT(10),
 `createdat` DATETIME,
 `updatedat` DATETIME,
 `deletedat` DATETIME,
 CONSTRAINT `FK_users_states` FOREIGN KEY (`stateid`) REFERENCES states(`id`)
);
CREATE TABLE `user_levels` (
 `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 `user_id` INT(11),
 `level_id` INT(11),
 `userid` INT DEFAULT NULL,
 `levelid` INT DEFAULT NULL,
 `createdat` DATETIME,
 `updatedat` DATETIME,
 `deletedat` DATETIME,
 CONSTRAINT `FK_user_levels_users` FOREIGN KEY (`userid`) REFERENCES users(`id`),
 CONSTRAINT `FK_user_levels_levels` FOREIGN KEY (`levelid`) REFERENCES levels(`id`)
);
CREATE TABLE `levels` (
 `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 `level` VARCHAR(50),
 `createdat` DATETIME,
 `updatedat` DATETIME,
 `deletedat` DATETIME
);
