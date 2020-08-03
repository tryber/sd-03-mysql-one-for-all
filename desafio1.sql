DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE user_plan(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano CHAR(20) NOT NULL,
valor FLOAT(4) NOT NULL 
) engine = innoDB;

CREATE TABLE user_table(
user_id INT PRIMARY KEY AUTO_INCREMENT,
nome CHAR(10) NOT NULL,
idade INT NOT NULL,
plano INT,
FOREIGN KEY (plano)
REFERENCES user_plan(plano_id)
) engine = innoDB;

CREATE TABLE artist_table(
artist_id INT PRIMARY KEY AUTO_INCREMENT,
nome CHAR(20) NOT NULL
) engine = innoDB;

CREATE TABLE album_table(
album_id INT PRIMARY KEY AUTO_INCREMENT,
nome CHAR(20) NOT NULL,
artista INT,
FOREIGN KEY (artista)
REFERENCES artist_table(artist_id)
) engine = innoDB;

CREATE TABLE songs_table(
song_id INT PRIMARY KEY AUTO_INCREMENT,
song VARCHAR(50) NOT NULL,
album INT,
FOREIGN KEY (album)
REFERENCES album_table(album_id)
) engine = innoDB;

CREATE TABLE user_history(
usuario INT,
cancao INT,
PRIMARY KEY (usuario, cancao),
FOREIGN KEY (usuario)
REFERENCES user_table(user_id),
FOREIGN KEY (cancao)
REFERENCES songs_table(song_id)
) engine = innoDB;

CREATE TABLE user_follows(
usuario INT,
artista INT,
PRIMARY KEY (usuario, artista),
FOREIGN KEY (usuario)
REFERENCES user_table(user_id),
FOREIGN KEY (artista)
REFERENCES artist_table(artist_id)
) engine = innoDB;

INSERT INTO user_plan(plano, valor)
VALUES ("gratuito", 0),
("universitário", 5.99),
("familiar", 7.99);

INSERT INTO user_table (nome, idade, plano)
VALUES ("Thati", 23, 1),
("Cintia", 35, 3),
("Bill", 20, 2),
("Roger", 45, 1);

INSERT INTO artist_table(nome)
VALUES ("Walter Phoenix"),
("Peter Strng"),
("Lance Day"),
("Freedie Shannon");

INSERT INTO album_table(nome, artista)
VALUES ("Envious", 1),
("Exuberant", 1),
("Hallowed Steam", 2),
("Incandescent", 3),
("Temporary Culture", 4);

INSERT INTO songs_table(song, album)
VALUES ("Soul For Us", 1),
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

INSERT INTO user_follows
VALUES (1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO user_history
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