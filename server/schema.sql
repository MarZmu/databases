CREATE DATABASE chats;

USE chats;

-- id:1, Elbert
-- id:2, Kyle
-- CREATE TABLE userlist (
--   id INTEGER(10) AUTO_INCREMENT,
--   username VARCHAR(25)
-- );

-- id: 1 (this would be message #)
-- username_id: 2 (pulled from userlist)
-- messages: 'hello'
-- roomname: 'lobby'

CREATE TABLE mainchatroom (
  /* Describe your table here.*/
  username VARCHAR(25),
  messages VARCHAR(100),
  roomname VARCHAR(25),
  id INTEGER(10) AUTO_INCREMENT,
  PRIMARY KEY (id)
  -- FOREIGN KEY (username_id) REFERENCES userlist(id)
);


/* Create other tables and define schemas for them here! */

-- CREATE TABLE Playlist (
--   id INTEGER(10) AUTO_INCREMENT,
--   artist_id INTEGER(10),
--   title VARCHAR(25),
--   release_year INTEGER(4),
--   PRIMARY KEY (id),
--   FOREIGN KEY (artist_id) REFERENCES artists(id)
-- );

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

