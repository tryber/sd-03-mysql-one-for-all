DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan(
plan_id INT NOT NULL AUTO_INCREMENT,
plan VARCHAR(255) NOT NULL,
price DECIMAL(5,2) NOT NULL,
PRIMARY KEY (plan_id)
) engine = InnoDB;

INSERT INTO plan (plan, price)
VALUES
("gratuito",0),("familiar", 7.99),("universitário", 5.99);

CREATE TABLE user(
`user_id` INT NOT NULL AUTO_INCREMENT,
`user` VARCHAR(255) NOT NULL,
`age` INT,
plan_id INT NOT NULL,
PRIMARY KEY (user_id),
FOREIGN KEY (plan_id) REFERENCES plan(plan_id)
) engine = InnoDB;

INSERT INTO user (user, age, plan_id)
VALUES
("Thati", 23, 1),("Cintia", 35, 2),("Bill", 20, 3),("Roger", 45, 1);

CREATE TABLE artist(
artist_id INT NOT NULL AUTO_INCREMENT,
artist VARCHAR(255) NOT NULL,
PRIMARY KEY(artist_id)
) engine = InnoDB;

INSERT INTO artist (artist)
VALUES
("Walter Phoenix"),("Peter Strong"),("Lance Day"),("Freedie Shannon");

CREATE TABLE album(
album_id INT NOT NULL AUTO_INCREMENT,
album VARCHAR(255) NOT NULL,
artist_id INT NOT NULL,
PRIMARY KEY(album_id),
FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) engine = InnoDB;

INSERT INTO album (album, artist_id)
VALUES
  ("Envious",1),("Exuberant",1),("Hallowed Steam",2),("Incandescent",3),("Temporary Culture",4);

CREATE TABLE music(
music_id INT NOT NULL AUTO_INCREMENT,
music VARCHAR(255) NOT NULL,
album_id INT NOT NULL,
PRIMARY KEY (music_id),
FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine = InnoDB;

INSERT INTO music (music, album_id)
VALUES
    ("Soul For Us",1),("Reflections Of Magic",1),("Dance With Her Own",1),
    ("Troubles Of My Inner Fire",2), ("Time Fireworks",2),
    ("Magic Circus",3), ("Honey, So Do I",3), ("Sweetie, Let's Go Wild",3), ("She Knows",3),
    ("Fantasy For Me",4), ("Celebration Of More",4), ("Rock His Everything",4),
    ("Home Forever",4), ("Diamond Power",4), ("Honey, Let's Be Silly",4),
    ("Thang Of Thunder",5), ("Words Of Her Life",5), ("Without My Streets",5);



CREATE TABLE user_history(
user_id INT NOT NULL,
music_id INT NOT NULL,
PRIMARY KEY(user_id,music_id),
FOREIGN KEY (user_id) REFERENCES user(user_id),
FOREIGN KEY (music_id) REFERENCES music(music_id)
) ENGINE = InnoDB;

INSERT INTO user_history (user_id, music_id)
VALUES
    (1,1), (1,6), (1,14), (1,16), (2,13), (2,17), (2,2), (2,15), (3,4), (3,16), (3,6),
    (4, 3), (4, 18), (4, 11);



-- CREATE TABLE album_music(
-- album_id INT NOT NULL,
-- music_id INT NOT NULL,
-- PRIMARY KEY(album_id, music_id),
-- FOREIGN KEY (album_id) REFERENCES album(album_id),
-- FOREIGN KEY (music_id) REFERENCES music(music_id)
-- ) ENGINE = InnoDB;

-- INSERT INTO album_music (album_id, music_id)
-- VALUES
--     (1,1),(1,2),(1,3),(2,4),(2,5),(3,6),(3,7),(3,8),(3,9),
--     (4,10),(4,11),(4,12),(4,13),(4,14),(4,15),(5,16),(5,17),(5,18);

CREATE TABLE user_follow(
user_id INT NOT NULL,
artist_id INT NOT NULL,
PRIMARY KEY(user_id, artist_id),
FOREIGN KEY (user_id) REFERENCES user(user_id),
FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) ENGINE = InnoDB;

INSERT INTO user_follow (user_id, artist_id)
VALUES
    (1,1),(1,4),(1,3),(2,1),(2,3),(3,2),(3,1),(4,4);
