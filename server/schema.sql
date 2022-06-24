CREATE DATABASE Spotify;

USE Spotify;

CREATE TABLE artists (
  /* Describe your table here.*/
  id INTEGER(10) AUTO_INCREMENT,
  artist_name VARCHAR(25),
  genre VARCHAR(25),
  PRIMARY KEY (id)
);

/* Create other tables and define schemas for them here! */
CREATE TABLE Playlist (
  id INTEGER(10) AUTO_INCREMENT,
  artist_id INTEGER(10),
  title VARCHAR(25),
  release_year INTEGER(4),
  PRIMARY KEY (id),
  FOREIGN KEY (artist_id) REFERENCES artists(id)
);

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

