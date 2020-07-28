-- commit inicial
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE IF NOT EXISTS Plan(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
price DECIMAL(4,2) NOT NULL
)Engine=InnoDB;

INSERT INTO Plan(name, price)
VALUES
('Gratuito',0),
('Familiar',7.99),
('Universitário',5.99);

CREATE TABLE IF NOT EXISTS User(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL,
plan_id INT,
FOREIGN KEY (plan_id) REFERENCES Plan(id)
)Engine=InnoDB;

INSERT INTO User(name, age, plan_id)
VALUES
('Thati',23,1),
('Cintia',35,2),
('Bill',20,3),
('Roger',45,1);

CREATE TABLE IF NOT EXISTS Artist(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50)
)Engine=InnoDB;

INSERT INTO Artist(name)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

CREATE TABLE IF NOT EXISTS Albuns(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100),
artist_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES Artist(id)
)Engine=InnoDB;

INSERT INTO Albuns(title, artist_id)
VALUES
('Envious', 1),
('Exuberant',1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture',4);

CREATE TABLE IF NOT EXISTS Songs(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100),
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES Albuns(id)
)Engine=InnoDB;

INSERT INTO Songs(title, album_id)
VALUES
('Soul For Us',1),
('Reflections Of Magic',1),
('Dance With Her Own',1),
('Troubles Of My Inner Fire',2),
('Time Fireworks',2),
('Magic Circus',3),
('Honey, So Do I',3),
("Sweetie, Let's Go Wild",3),
('She Knows',3),
('Fantasy For Me',4),
('Celebration Of More',4),
('Rock His Everything',4),
('Home Forever',4),
('Diamond Power',4),
("Honey, Let's Be Silly",4),
('Thang Of Thunder',5),
('Words Of Her Life',5),
('Without My Streets',5);

CREATE TABLE IF NOT EXISTS Following_Artists(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES User(id),
FOREIGN KEY (artist_id) REFERENCES Artist(id)
)Engine=InnoDB;

INSERT INTO Following_Artists(user_id, artist_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

CREATE TABLE IF NOT EXISTS Reproduction_History(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
song_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES User(id),
FOREIGN KEY (song_id) REFERENCES Songs(id)
)Engine=InnoDB;

INSERT INTO Reproduction_History(user_id, song_id)
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
