CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  createdAt datetime DEFAULT CURRENT_TIMESTAMP,
  updatedAt datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  usernameId int,
  message varchar (200),
  roomId int
);

CREATE TABLE users (
  id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name varchar (15)
);

CREATE TABLE rooms (
  id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name varchar (15)
);

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

