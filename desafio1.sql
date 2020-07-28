CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

-- Creating tables

CREATE TABLE plan (
  id CHAR(3) PRIMARY KEY,
  `type` VARCHAR(30) NOT NULL,
  `value` DECIMAL(3, 2) NOT NULL DEFAULT 0
);

CREATE TABLE user (
  id INT PRIMARY KEY AUTO_INCREMENT,
  age TINYINT NOT NULL,
  name VARCHAR(30) NOT NULL,
  plan_id CHAR(3) NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES plan(id)
);

CREATE TABLE artist (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL
);

CREATE TABLE follow (
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES user(id),
  FOREIGN KEY (artist_id) REFERENCES artist(id)
);

CREATE TABLE album (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artist(id)
);

CREATE TABLE song (
  id INT PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES album(id)
);

CREATE TABLE reproduction (
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  PRIMARY KEY (user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES user(id),
  FOREIGN KEY (song_id) REFERENCES song(id)
);

-- Putting the artist values on tables

INSERT INTO plan (id, type, value)
VALUES
  ('fre', 'gratuito', 0),
  ('fam', 'familiar', 7.99),
  ('uni', 'universitário', 5.99);

INSERT INTO user (name, age, plan_id)
VALUES
  ('Thati', 23, 'fre'),
  ('Cintia', 35, 'fam'),
  ('Bill', 20, 'uni'),
  ('Roger', 45, 'fre');

INSERT INTO artist (name)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

INSERT INTO follow (user_id, artist_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 1),
  (3, 2),
  (4, 4);

INSERT INTO album (name, artist_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

INSERT INTO song (name, album_id)
VALUES
  ("Soul For Us", 1),
  ("Reflections Of Magic", 1),
  ("Dance With Her Own", 1),
  ("Troubles Of My Inner Fire", 2),
  ("Time Fireworks", 2),
  ("Magic Circus", 3),
  ("Honey, So Do I", 3),
  ("Sweetie, Let's Go Wild", 3),
  ("She Knows", 3),
  ("Fantasy For Me", 4),
  ("Celebration Of More", 4),
  ("Rock His Everything", 4),
  ("Home Forever", 4),
  ("Diamond Power", 4),
  ("Honey, Let's Be Silly", 4),
  ("Thang Of Thunder", 5),
  ("Words Of Her Life", 5),
  ("Without My Streets", 5);

INSERT INTO reproduction (user_id, song_id)
VALUES
  (1, 1),
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
