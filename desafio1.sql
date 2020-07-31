-- -----------------------------------------------------
-- Schema SpotifyClone
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SpotifyClone` ;
USE `SpotifyClone` ;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`plans`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`plans` (
  `plan_id` INT NOT NULL AUTO_INCREMENT,
  `plan_name` VARCHAR(45) NULL,
  `plan_value` FLOAT NULL,
  PRIMARY KEY (`plan_id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(45) NULL,
  `user_age` INT NULL,
  `plan_id` INT NOT NULL,
  PRIMARY KEY (`user_id`),
  FOREIGN KEY (`plan_id`)
    REFERENCES `SpotifyClone`.`plans` (`plan_id`)
)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `SpotifyClone`.`artists`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`artists` (
  `artist_id` INT NOT NULL AUTO_INCREMENT,
  `artist_name` VARCHAR(45) NULL,
  PRIMARY KEY (`artist_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SpotifyClone`.`albums`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`albums` (
  `album_id` INT NOT NULL AUTO_INCREMENT,
  `album_name` VARCHAR(45) NULL,
  `artist_id` INT NOT NULL,
  PRIMARY KEY (`album_id`),
  FOREIGN KEY (`artist_id`)
    REFERENCES `SpotifyClone`.`artists` (`artist_id`)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SpotifyClone`.`songs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`songs` (
  `song_id` INT NOT NULL AUTO_INCREMENT,
  `song_name` VARCHAR(45) NULL,
  `album_id` INT NOT NULL,
  PRIMARY KEY (`song_id`),
  FOREIGN KEY (`album_id`)
    REFERENCES `SpotifyClone`.`albums` (`album_id`)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SpotifyClone`.`users_reproduction_history`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`users_reproduction_history` (
  `user_id` INT NOT NULL,
  `song_id` INT NOT NULL,
  PRIMARY KEY (`user_id`, `song_id`),
  FOREIGN KEY (`user_id`)
    REFERENCES `SpotifyClone`.`users` (`user_id`),
  FOREIGN KEY (`song_id`)
    REFERENCES `SpotifyClone`.`songs` (`song_id`)
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SpotifyClone`.`artists_followed_by_users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`artists_followed_by_users` (
  `user_id` INT NOT NULL,
  `artist_id` INT NOT NULL,
  PRIMARY KEY (`user_id`, `artist_id`),
  FOREIGN KEY (`user_id`)
    REFERENCES `SpotifyClone`.`users` (`user_id`),
  FOREIGN KEY (`artist_id`)
    REFERENCES `SpotifyClone`.`artists` (`artist_id`)
)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `SpotifyClone`.`plans`
-- -----------------------------------------------------
START TRANSACTION;
USE `SpotifyClone`;
INSERT INTO `SpotifyClone`.`plans` (`plan_id`, `plan_name`, `plan_value`) VALUES (1, 'gratuito', 0);
INSERT INTO `SpotifyClone`.`plans` (`plan_id`, `plan_name`, `plan_value`) VALUES (2, 'familiar', 7.99);
INSERT INTO `SpotifyClone`.`plans` (`plan_id`, `plan_name`, `plan_value`) VALUES (3, 'universitário', 5.99);

COMMIT;


-- -----------------------------------------------------
-- Data for table `SpotifyClone`.`users`
-- -----------------------------------------------------
START TRANSACTION;
USE `SpotifyClone`;
INSERT INTO `SpotifyClone`.`users` (`user_id`, `user_name`, `user_age`, `plan_id`) VALUES (1, 'Thati', 23, 1);
INSERT INTO `SpotifyClone`.`users` (`user_id`, `user_name`, `user_age`, `plan_id`) VALUES (2, 'Cintia', 35, 2);
INSERT INTO `SpotifyClone`.`users` (`user_id`, `user_name`, `user_age`, `plan_id`) VALUES (3, 'Bill', 20, 3);
INSERT INTO `SpotifyClone`.`users` (`user_id`, `user_name`, `user_age`, `plan_id`) VALUES (4, 'Roger', 45, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `SpotifyClone`.`artists`
-- -----------------------------------------------------
START TRANSACTION;
USE `SpotifyClone`;
INSERT INTO `SpotifyClone`.`artists` (`artist_id`, `artist_name`) VALUES (1, 'Walter Phoenix');
INSERT INTO `SpotifyClone`.`artists` (`artist_id`, `artist_name`) VALUES (2, 'Peter Strong');
INSERT INTO `SpotifyClone`.`artists` (`artist_id`, `artist_name`) VALUES (3, 'Lance Day ');
INSERT INTO `SpotifyClone`.`artists` (`artist_id`, `artist_name`) VALUES (4, 'Freedie Shannon');

COMMIT;


-- -----------------------------------------------------
-- Data for table `SpotifyClone`.`albums`
-- -----------------------------------------------------
START TRANSACTION;
USE `SpotifyClone`;
INSERT INTO `SpotifyClone`.`albums` (`album_id`, `album_name`, `artist_id`) VALUES (1, 'Envious', 1);
INSERT INTO `SpotifyClone`.`albums` (`album_id`, `album_name`, `artist_id`) VALUES (2, 'Exuberant', 1);
INSERT INTO `SpotifyClone`.`albums` (`album_id`, `album_name`, `artist_id`) VALUES (3, 'Hallowed Steam', 2);
INSERT INTO `SpotifyClone`.`albums` (`album_id`, `album_name`, `artist_id`) VALUES (4, 'Incandescent', 3);
INSERT INTO `SpotifyClone`.`albums` (`album_id`, `album_name`, `artist_id`) VALUES (5, 'Temporary Culture Freedie Shannon', 4);

COMMIT;


-- -----------------------------------------------------
-- Data for table `SpotifyClone`.`songs`
-- -----------------------------------------------------
START TRANSACTION;
USE `SpotifyClone`;
INSERT INTO `SpotifyClone`.`songs` (`song_id`, `song_name`, `album_id`) VALUES (1, 'Soul For Us', 1);
INSERT INTO `SpotifyClone`.`songs` (`song_id`, `song_name`, `album_id`) VALUES (2, 'Reflections Of Magic', 1);
INSERT INTO `SpotifyClone`.`songs` (`song_id`, `song_name`, `album_id`) VALUES (3, 'Dance With Her Own', 1);
INSERT INTO `SpotifyClone`.`songs` (`song_id`, `song_name`, `album_id`) VALUES (4, 'Troubles Of My Inner Fire', 2);
INSERT INTO `SpotifyClone`.`songs` (`song_id`, `song_name`, `album_id`) VALUES (5, 'Time Fireworks', 2);
INSERT INTO `SpotifyClone`.`songs` (`song_id`, `song_name`, `album_id`) VALUES (6, 'Magic Circus', 3);
INSERT INTO `SpotifyClone`.`songs` (`song_id`, `song_name`, `album_id`) VALUES (7, 'Honey, So Do I', 3);
INSERT INTO `SpotifyClone`.`songs` (`song_id`, `song_name`, `album_id`) VALUES (8, 'Sweetie, Let\'s Go Wild', 3);
INSERT INTO `SpotifyClone`.`songs` (`song_id`, `song_name`, `album_id`) VALUES (9, 'She Knows', 3);
INSERT INTO `SpotifyClone`.`songs` (`song_id`, `song_name`, `album_id`) VALUES (10, 'Fantasy For Me', 4);
INSERT INTO `SpotifyClone`.`songs` (`song_id`, `song_name`, `album_id`) VALUES (11, 'Celebration Of More', 4);
INSERT INTO `SpotifyClone`.`songs` (`song_id`, `song_name`, `album_id`) VALUES (12, 'Rock Hist Everything', 4);
INSERT INTO `SpotifyClone`.`songs` (`song_id`, `song_name`, `album_id`) VALUES (13, 'Home Forever', 4);
INSERT INTO `SpotifyClone`.`songs` (`song_id`, `song_name`, `album_id`) VALUES (14, 'Diamond Power', 4);
INSERT INTO `SpotifyClone`.`songs` (`song_id`, `song_name`, `album_id`) VALUES (15, 'Honey, Lets\'s Be Silly', 4);
INSERT INTO `SpotifyClone`.`songs` (`song_id`, `song_name`, `album_id`) VALUES (16, 'Thang Of Thunder', 5);
INSERT INTO `SpotifyClone`.`songs` (`song_id`, `song_name`, `album_id`) VALUES (17, 'Words Of Her Life', 5);
INSERT INTO `SpotifyClone`.`songs` (`song_id`, `song_name`, `album_id`) VALUES (18, 'Without My Streets', 5);

COMMIT;


-- -----------------------------------------------------
-- Data for table `SpotifyClone`.`users_reproduction_history`
-- -----------------------------------------------------
START TRANSACTION;
USE `SpotifyClone`;
INSERT INTO `SpotifyClone`.`users_reproduction_history` (`user_id`, `song_id`) VALUES (1, 1);
INSERT INTO `SpotifyClone`.`users_reproduction_history` (`user_id`, `song_id`) VALUES (1, 6);
INSERT INTO `SpotifyClone`.`users_reproduction_history` (`user_id`, `song_id`) VALUES (1, 14);
INSERT INTO `SpotifyClone`.`users_reproduction_history` (`user_id`, `song_id`) VALUES (1, 16);
INSERT INTO `SpotifyClone`.`users_reproduction_history` (`user_id`, `song_id`) VALUES (2, 13);
INSERT INTO `SpotifyClone`.`users_reproduction_history` (`user_id`, `song_id`) VALUES (2, 17);
INSERT INTO `SpotifyClone`.`users_reproduction_history` (`user_id`, `song_id`) VALUES (2, 2);
INSERT INTO `SpotifyClone`.`users_reproduction_history` (`user_id`, `song_id`) VALUES (2, 15);
INSERT INTO `SpotifyClone`.`users_reproduction_history` (`user_id`, `song_id`) VALUES (3, 4);
INSERT INTO `SpotifyClone`.`users_reproduction_history` (`user_id`, `song_id`) VALUES (3, 16);
INSERT INTO `SpotifyClone`.`users_reproduction_history` (`user_id`, `song_id`) VALUES (3, 6);
INSERT INTO `SpotifyClone`.`users_reproduction_history` (`user_id`, `song_id`) VALUES (4, 3);
INSERT INTO `SpotifyClone`.`users_reproduction_history` (`user_id`, `song_id`) VALUES (4, 18);
INSERT INTO `SpotifyClone`.`users_reproduction_history` (`user_id`, `song_id`) VALUES (4, 11);

COMMIT;


-- -----------------------------------------------------
-- Data for table `SpotifyClone`.`artists_followed_by_users`
-- -----------------------------------------------------
START TRANSACTION;
USE `SpotifyClone`;
INSERT INTO `SpotifyClone`.`artists_followed_by_users` (`user_id`, `artist_id`) VALUES (1, 1);
INSERT INTO `SpotifyClone`.`artists_followed_by_users` (`user_id`, `artist_id`) VALUES (1, 4);
INSERT INTO `SpotifyClone`.`artists_followed_by_users` (`user_id`, `artist_id`) VALUES (1, 3);
INSERT INTO `SpotifyClone`.`artists_followed_by_users` (`user_id`, `artist_id`) VALUES (2, 1);
INSERT INTO `SpotifyClone`.`artists_followed_by_users` (`user_id`, `artist_id`) VALUES (2, 3);
INSERT INTO `SpotifyClone`.`artists_followed_by_users` (`user_id`, `artist_id`) VALUES (3, 2);
INSERT INTO `SpotifyClone`.`artists_followed_by_users` (`user_id`, `artist_id`) VALUES (3, 3);
INSERT INTO `SpotifyClone`.`artists_followed_by_users` (`user_id`, `artist_id`) VALUES (4, 4);

COMMIT;
