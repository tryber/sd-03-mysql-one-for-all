DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
  plan_id INT PRIMARY KEY AUTO_INCREMENT,
  plan VARCHAR(20) NOT NULL,
  plan_value DECIMAL(5, 2) NOT NULL,
) ENGINE = INNODB;

CREATE TABLE artists(
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  artist VARCHAR(50) NOT NULL,
) ENGINE = INNODB;

CREATE TABLE albums(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album VARCHAR(100) NOT NULL,
  FOREIGN KEY(artist_id) REFERENCES artists(artist_id),
) ENGINE = INNODB;

CREATE TABLE users(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  user VARCHAR(40) NOT NULL,
  age INT NOT NULL,
  FOREIGN KEY(plan_id) REFERENCES plans(plan_id),
) ENGINE = INNODB;

CREATE TABLE songs(
  song_id INT PRIMARY KEY AUTO_INCREMENT,
  song VARCHAR(100) NOT NULL,
  FOREIGN KEY(album_id) REFERENCES albums(album_id),
) ENGINE = INNODB;

CREATE TABLE artists_followers(
  FOREIGN KEY(user_id) REFERENCES users(user_id),
  FOREIGN KEY(artist_id) REFERENCES artists(artist_id),
  PRIMARY KEY (user_id, artist_id),
) ENGINE = INNODB;

CREATE TABLE playlist_history(
  FOREIGN KEY(user_id) REFERENCES users(user_id),
  FOREIGN KEY(song_id) REFERENCES songs(song_id),
  PRIMARY KEY (user_id, song_id),
) ENGINE = INNODB;

INSERT INTO plans(plan, plan_value)
VALUES ('gratuito', 0),
  ('universitário', 5.99),
  ('familiar', 7.99);

INSERT INTO artists(artist)
VALUES ('Walter Phoenix'),
  ('Peter Song'),
  ('Lance Day'),
  ('Freedie Shannon');

INSERT INTO albums(album, artist_id)
VALUES ('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO songs(song, album_id)
VALUES ('Soul For Us', 1),
('Reflections of Magic', 2),
('Dance With Her Own', 3),
('Troubles Of My Inner Fire', 4),
('Time Fireworks', 5),
('Magic Circus', 6),
('Honey, So Do I', 7),
(`Sweetie, Let's Go Wild`, 8),
('She Knows', 9),
('Fantasy For Me', 10),
('Celebration Of More', 11),
('Rock His Everything', 12),
('Home Forever', 13),
('Diamond Power', 14),
(`Honey, Let's Be Silly`, 15),
('Thang Of Thunder', 16),
('Words Of Her Life', 17),
('Without My Streets', 18);

INSERT INTO artists_followers(user_id, artist_id)
VALUES (1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO playlist_history(user_id, song_id)
VALUES (1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 15),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);
