DROP DATABASE IF EXISTS `chat`;
CREATE DATABASE chat;
USE chat;
-- DROP TABLE IF EXISTS `messages`;
-- CREATE TABLE messages (
--   id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   createdAt datetime DEFAULT CURRENT_TIMESTAMP,
--   updatedAt datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   usernameId int,
--   message varchar (200),
--   roomId int
-- );
-- DROP TABLE IF EXISTS `users`;
-- CREATE TABLE users (
--   id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   name varchar (15)
-- );
-- DROP TABLE IF EXISTS `rooms`;
-- CREATE TABLE rooms (
--   id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   name varchar (15)
-- );
-- DROP TABLE IF EXISTS `rooms_users`;
-- CREATE TABLE rooms_users (
--   id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
--   roomId INTEGER NULL DEFAULT NULL,
--   userId INT NULL DEFAULT NULL,
-- );
-- ALTER TABLE `messages` ADD FOREIGN KEY (usernameId) REFERENCES `users` (`id`);
-- ALTER TABLE `messages` ADD FOREIGN KEY (roomId) REFERENCES `rooms` (`id`);
-- ALTER TABLE `rooms_users` ADD FOREIGN KEY (roomId) REFERENCES `rooms` (`id`);
-- ALTER TABLE `rooms_users` ADD FOREIGN KEY (userId) REFERENCES `users` (`id`);


-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Messages'
-- 
-- ---

DROP TABLE IF EXISTS `Messages`;
    
CREATE TABLE `Messages` (
  `id` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `createdAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usernameId` INT DEFAULT NULL,
  `text` VARCHAR(200) DEFAULT 'NULL',
  `roomId` INTEGER DEFAULT NULL,
  `updatedAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Users'
-- 
-- ---

DROP TABLE IF EXISTS `Users`;
    
CREATE TABLE `Users` (
  `id` INT NULL AUTO_INCREMENT DEFAULT NULL,
  `username` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Rooms'
-- 
-- ---

DROP TABLE IF EXISTS `Rooms`;
    
CREATE TABLE `Rooms` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `roomname` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Rooms_Users'
-- 
-- ---

DROP TABLE IF EXISTS `Rooms_Users`;
    
CREATE TABLE `Rooms_Users` (
  `id` INT NULL AUTO_INCREMENT DEFAULT NULL,
  `roomId` INTEGER NULL DEFAULT NULL,
  `userId` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `Messages` ADD FOREIGN KEY (usernameId) REFERENCES `Users` (`id`);
ALTER TABLE `Messages` ADD FOREIGN KEY (roomId) REFERENCES `Rooms` (`id`);
ALTER TABLE `Rooms_Users` ADD FOREIGN KEY (roomId) REFERENCES `Rooms` (`id`);
ALTER TABLE `Rooms_Users` ADD FOREIGN KEY (userId) REFERENCES `Users` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Rooms_Users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

INSERT INTO `Users` (`id`,`username`) VALUES
(null,'Lex');
INSERT INTO `Rooms` (`id`,`roomname`) VALUES
(null,'Lobby');
INSERT INTO `Rooms_Users` (`id`,`roomId`,`userId`) VALUES
(null,'1','1');
INSERT INTO `Messages` (`id`,`createdAt`,`usernameId`,`text`,`roomId`,`updatedAt`) VALUES
(null,CURRENT_TIMESTAMP,'1','arglebargle yo yo yo','1',CURRENT_TIMESTAMP);