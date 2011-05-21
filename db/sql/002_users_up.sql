
CREATE TABLE `users` (
 `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 `email` VARCHAR(50),
 `password` VARCHAR(50),
 `first_name` VARCHAR(50),
 `last_name` VARCHAR(50),
 `street` VARCHAR(50),
 `city` VARCHAR(50),
 `state_id` INT(2),
 `zip` INT(5),
 `phone` INT(10),
 `cell` INT(10),
 `createdat` DATETIME,
 `updatedat` DATETIME,
 `deletedat` DATETIME
);
