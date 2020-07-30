DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE subscrition_plans(
id INT PRIMARY KEY AUTO_INCREMENT,
plan_name VARCHAR(15) NOT NULL,
plan_price DECIMAL(5,2) NOT NULL
) engine = InnoDB;

CREATE TABLE users(
id INT PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(30) NOT NULL,
user_age INT(2) NOT NULL,
plan_id INT(2) NOT NULL,
FOREIGN KEY (plan_id) REFERENCES subscrition_plans(id)
) engine = InnoDB;

CREATE TABLE artists(
id INT PRIMARY KEY AUTO_INCREMENT,
artist_name VARCHAR(30) NOT NULL
) engine = InnoDB;

CREATE TABLE albums(
id INT PRIMARY KEY AUTO_INCREMENT,
album_name VARCHAR(30) NOT NULL,
artist_id INT(2),
FOREIGN KEY (artist_id) REFERENCES artists(id)
) engine = InnoDB;

CREATE TABLE songs(
id INT PRIMARY KEY AUTO_INCREMENT,
song_name VARCHAR(40) NOT NULL,
album_id INT(2),
FOREIGN KEY (album_id) REFERENCES albums(id)
) engine = InnoDB;

CREATE TABLE track_history(
id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT(2) NOT NULL,
song_id INT(2) NOT NULL,
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (song_id) REFERENCES songs(id)
) engine = InnoDB;

CREATE TABLE followers(
id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT(2) NOT NULL,
artist_id INT(2) NOT NULL,
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (artist_id) REFERENCES artists(id)
) engine = InnoDB;

INSERT INTO subscrition_plans (id, plan_name, plan_price) 
VALUES
(1, 'gratuito', 0),
(2, 'familiar', 7.99),
(3, 'universitário', 5.99);

INSERT INTO users (id, user_name, user_age, plan_id) 
VALUES 
  (1, 'Thati', 23, 1),
  (2, 'Cintia', '35', 2),
  (3, 'Bill', '20', 3),
  (4, 'Roger', '45', 1);

INSERT INTO artists (id, artist_name) VALUES
(1, 'Walter Phoenix'),
(2, 'Freddie Shannon'),
(3, 'Lance Day'),
(4, 'Peter Strong');

INSERT INTO albums (id, album_name, artist_id)
VALUES 
  (1, 'Envious', 1),
  (2, 'Exuberant', 1),
  (3, 'Hallowed Steam', 4),
  (4, 'Incandescent', 3),
  (5, 'Temporary Culture', 2);

INSERT INTO songs (id, song_name, album_id)
VALUES
  (1, 'Soul For Us', 1),
  (2, 'Magic Circus', 3),
  (3, 'Diamond Power', 4),
  (4, 'Thang Of Thunder', 5),
  (5, 'Home Forever', 4),
  (6, 'Words Of Her Life', 5),
  (7, 'Reflections Of Magic', 1),
  (8, 'Honey, So Do I', 3),
  (9, 'Troubles Of My Inner Fire', 2),
  (10, 'Dance With Her Own', 1),
  (11, 'Without My Streets', 4),
  (12, 'Celebration Of More', 4),
  (13, 'Fantasy For Me', 4),
  (14, 'Time Fireworks', 2),
  (15, 'Sweetie, Let\'s Go Wild', 3),
  (16, 'She Knows', 3),
  (17, 'Rock His Everything', 4),
  (18, 'Honey, Let\'s Be Silly', 4);

INSERT INTO track_history (id, user_id, song_id) 
VALUES 
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 18),
(9, 3, 9),
(10, 3, 4),
(11, 3, 2),
(12, 4, 10),
(13, 4, 11),
(14, 4, 12);

INSERT INTO followers (id, user_id, artist_id)
VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 3),
(6, 3, 1),
(7, 3, 4),
(8, 4, 2);
