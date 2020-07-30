DROP DATABASE IF EXISTS `SpotifyClone`;
CREATE DATABASE IF NOT EXISTS `SpotifyClone` ;
USE `SpotifyClone` ;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`plano`
-- -----------------------------------------------------
CREATE TABLE `plano` (
  `id_plano` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome_do_plano` VARCHAR(50) NOT NULL,
  `valor_do_plano` DECIMAL(10,2) NOT NULL
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`artista`
-- -----------------------------------------------------
CREATE TABLE `artista` (
  `id_artista` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `primeiro_nome` VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`usuário`
-- -----------------------------------------------------
CREATE TABLE `usuário` (
  `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome_usuario` VARCHAR(100) NOT NULL,
  `idade` INT NOT NULL,
  `id_plano` INT NOT NULL,
    FOREIGN KEY (`id_plano`)
    REFERENCES `plano` (`id_plano`)
) ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SpotifyClone`.`seguindo_artistas`
-- -----------------------------------------------------
CREATE TABLE `seguindo_artistas` (
  `usuário_id` INT NOT NULL,
  `id_artista` INT NOT NULL,
    FOREIGN KEY (`usuário_id`)
    REFERENCES `usuário` (`id`),FOREIGN KEY (`id_artista`)
    REFERENCES `artista` (`id_artista`),
    PRIMARY KEY (`usuário_id`, `id_artista`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`albuns`
-- -----------------------------------------------------
CREATE TABLE `albuns` (
  `id_albun` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `primeiro_nome` VARCHAR(50) NOT NULL,
  `artista_id_artista` INT NOT NULL,
    FOREIGN KEY (`artista_id_artista`)
    REFERENCES `artista` (`id_artista`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`cancoes`
-- -----------------------------------------------------
CREATE TABLE `cancoes` (
  `id_cancao` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome_cancao` TEXT(1000) NOT NULL,
  `artista_id` INT NOT NULL,
  `albun_id` INT NOT NULL,
    FOREIGN KEY (`artista_id`)
    REFERENCES `artista` (`id_artista`),
    FOREIGN KEY (`albun_id`)
    REFERENCES `albuns` (`id_albun`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`historico_de_reproducoes`
-- -----------------------------------------------------
CREATE TABLE `historico_de_reproducoes` (
  `usuário_id` INT NOT NULL,
  `id_cancao` INT NOT NULL,
    FOREIGN KEY (`usuário_id`)
    REFERENCES `usuário` (`id`),
    FOREIGN KEY (`id_cancao`)
    REFERENCES `cancoes` (`id_cancao`),
    PRIMARY KEY (`usuário_id`, `id_cancao`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Data for table `SpotifyClone`.`plano`
-- -----------------------------------------------------
START TRANSACTION;
USE `SpotifyClone`;
INSERT INTO `SpotifyClone`.`plano` (`id_plano`, `nome_do_plano`, `valor_do_plano`) VALUES (1, 'gratuito', 0);
INSERT INTO `SpotifyClone`.`plano` (`id_plano`, `nome_do_plano`, `valor_do_plano`) VALUES (2, 'familiar', 7.99);
INSERT INTO `SpotifyClone`.`plano` (`id_plano`, `nome_do_plano`, `valor_do_plano`) VALUES (3, 'universitário', 5.99);

COMMIT;

-- -----------------------------------------------------
-- Data for table `SpotifyClone`.`usuário`
-- -----------------------------------------------------
START TRANSACTION;
USE `SpotifyClone`;
INSERT INTO `SpotifyClone`.`usuário` (`id`, `nome_usuario`, `idade`, `id_plano`) VALUES (1, 'Thati', 23, 1);
INSERT INTO `SpotifyClone`.`usuário` (`id`, `nome_usuario`, `idade`, `id_plano`) VALUES (2, 'Cintia', 35, 2);
INSERT INTO `SpotifyClone`.`usuário` (`id`, `nome_usuario`, `idade`, `id_plano`) VALUES (3, 'Bill', 20, 3);
INSERT INTO `SpotifyClone`.`usuário` (`id`, `nome_usuario`, `idade`, `id_plano`) VALUES (4, 'Roger', 45, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `SpotifyClone`.`artista`
-- -----------------------------------------------------
START TRANSACTION;
USE `SpotifyClone`;
INSERT INTO `SpotifyClone`.`artista` (`id_artista`, `primeiro_nome`) VALUES (1, 'Walter Phoenix');
INSERT INTO `SpotifyClone`.`artista` (`id_artista`, `primeiro_nome`) VALUES (2, 'Peter Strong');
INSERT INTO `SpotifyClone`.`artista` (`id_artista`, `primeiro_nome`) VALUES (3, 'Lance Day');
INSERT INTO `SpotifyClone`.`artista` (`id_artista`, `primeiro_nome`) VALUES (4, 'Freedie Shannon');

COMMIT;


-- -----------------------------------------------------
-- Data for table `SpotifyClone`.`albuns`
-- -----------------------------------------------------
START TRANSACTION;
USE `SpotifyClone`;
INSERT INTO `SpotifyClone`.`albuns` (`id_albun`, `primeiro_nome`, `artista_id_artista`) VALUES (1, 'Envious', 1);
INSERT INTO `SpotifyClone`.`albuns` (`id_albun`, `primeiro_nome`, `artista_id_artista`) VALUES (2, 'Exuberant', 1);
INSERT INTO `SpotifyClone`.`albuns` (`id_albun`, `primeiro_nome`, `artista_id_artista`) VALUES (3, 'Hallowed Steam', 2);
INSERT INTO `SpotifyClone`.`albuns` (`id_albun`, `primeiro_nome`, `artista_id_artista`) VALUES (4, 'Incandescent', 3);
INSERT INTO `SpotifyClone`.`albuns` (`id_albun`, `primeiro_nome`, `artista_id_artista`) VALUES (5, 'Temporary Culture', 4);

COMMIT;


-- -----------------------------------------------------
-- Data for table `SpotifyClone`.`cancoes`
-- -----------------------------------------------------
START TRANSACTION;
USE `SpotifyClone`;
INSERT INTO `SpotifyClone`.`cancoes` (`id_cancao`, `nome_cancao`, `artista_id`, `albun_id`) VALUES (1, 'Soul For Us', 1, 1);
INSERT INTO `SpotifyClone`.`cancoes` (`id_cancao`, `nome_cancao`, `artista_id`, `albun_id`) VALUES (2, 'Reflections Of Magic', 1, 1);
INSERT INTO `SpotifyClone`.`cancoes` (`id_cancao`, `nome_cancao`, `artista_id`, `albun_id`) VALUES (3, 'Dance With Her Own', 1, 1);
INSERT INTO `SpotifyClone`.`cancoes` (`id_cancao`, `nome_cancao`, `artista_id`, `albun_id`) VALUES (4, 'Troubles Of My Inner Fire', 1, 2);
INSERT INTO `SpotifyClone`.`cancoes` (`id_cancao`, `nome_cancao`, `artista_id`, `albun_id`) VALUES (5, 'Time Fireworks', 1, 2);
INSERT INTO `SpotifyClone`.`cancoes` (`id_cancao`, `nome_cancao`, `artista_id`, `albun_id`) VALUES (6, 'Magic Circus', 2, 3);
INSERT INTO `SpotifyClone`.`cancoes` (`id_cancao`, `nome_cancao`, `artista_id`, `albun_id`) VALUES (7, 'Honey, So Do I', 2, 3);
INSERT INTO `SpotifyClone`.`cancoes` (`id_cancao`, `nome_cancao`, `artista_id`, `albun_id`) VALUES (8, 'Sweetie, Let\'s Go Wild', 2, 3);
INSERT INTO `SpotifyClone`.`cancoes` (`id_cancao`, `nome_cancao`, `artista_id`, `albun_id`) VALUES (9, 'She Knows', 2, 3);
INSERT INTO `SpotifyClone`.`cancoes` (`id_cancao`, `nome_cancao`, `artista_id`, `albun_id`) VALUES (10, 'Fantasy For Me', 3, 4);
INSERT INTO `SpotifyClone`.`cancoes` (`id_cancao`, `nome_cancao`, `artista_id`, `albun_id`) VALUES (11, 'Celebration Of More', 3, 4);
INSERT INTO `SpotifyClone`.`cancoes` (`id_cancao`, `nome_cancao`, `artista_id`, `albun_id`) VALUES (12, 'Rock His Everything', 3, 4);
INSERT INTO `SpotifyClone`.`cancoes` (`id_cancao`, `nome_cancao`, `artista_id`, `albun_id`) VALUES (13, 'Home Forever', 3, 4);
INSERT INTO `SpotifyClone`.`cancoes` (`id_cancao`, `nome_cancao`, `artista_id`, `albun_id`) VALUES (14, 'Diamond Power', 3, 4);
INSERT INTO `SpotifyClone`.`cancoes` (`id_cancao`, `nome_cancao`, `artista_id`, `albun_id`) VALUES (15, 'Honey, Let\'s Be Silly', 3, 4);
INSERT INTO `SpotifyClone`.`cancoes` (`id_cancao`, `nome_cancao`, `artista_id`, `albun_id`) VALUES (16, 'Thang Of Thunder', 4, 5);
INSERT INTO `SpotifyClone`.`cancoes` (`id_cancao`, `nome_cancao`, `artista_id`, `albun_id`) VALUES (17, 'Words Of Her Life', 4, 5);
INSERT INTO `SpotifyClone`.`cancoes` (`id_cancao`, `nome_cancao`, `artista_id`, `albun_id`) VALUES (18, 'Without My Streets', 4, 5);

COMMIT;


-- -----------------------------------------------------
-- Data for table `SpotifyClone`.`historico_de_reproducoes`
-- -----------------------------------------------------
START TRANSACTION;
USE `SpotifyClone`;
INSERT INTO `SpotifyClone`.`historico_de_reproducoes` (`usuário_id`, `id_cancao`) VALUES (1, 1);
INSERT INTO `SpotifyClone`.`historico_de_reproducoes` (`usuário_id`, `id_cancao`) VALUES (1, 6);
INSERT INTO `SpotifyClone`.`historico_de_reproducoes` (`usuário_id`, `id_cancao`) VALUES (1, 14);
INSERT INTO `SpotifyClone`.`historico_de_reproducoes` (`usuário_id`, `id_cancao`) VALUES (1, 16);
INSERT INTO `SpotifyClone`.`historico_de_reproducoes` (`usuário_id`, `id_cancao`) VALUES (2, 13);
INSERT INTO `SpotifyClone`.`historico_de_reproducoes` (`usuário_id`, `id_cancao`) VALUES (2, 17);
INSERT INTO `SpotifyClone`.`historico_de_reproducoes` (`usuário_id`, `id_cancao`) VALUES (2, 2);
INSERT INTO `SpotifyClone`.`historico_de_reproducoes` (`usuário_id`, `id_cancao`) VALUES (2, 15);
INSERT INTO `SpotifyClone`.`historico_de_reproducoes` (`usuário_id`, `id_cancao`) VALUES (3, 4);
INSERT INTO `SpotifyClone`.`historico_de_reproducoes` (`usuário_id`, `id_cancao`) VALUES ( 3, 16);
INSERT INTO `SpotifyClone`.`historico_de_reproducoes` (`usuário_id`, `id_cancao`) VALUES ( 3, 6);
INSERT INTO `SpotifyClone`.`historico_de_reproducoes` (`usuário_id`, `id_cancao`) VALUES ( 4, 3);
INSERT INTO `SpotifyClone`.`historico_de_reproducoes` (`usuário_id`, `id_cancao`) VALUES ( 4, 18);
INSERT INTO `SpotifyClone`.`historico_de_reproducoes` (`usuário_id`, `id_cancao`) VALUES ( 4, 11);

COMMIT;


-- -----------------------------------------------------
-- Data for table `SpotifyClone`.`seguindo_artistas`
-- -----------------------------------------------------
START TRANSACTION;
USE `SpotifyClone`;
INSERT INTO `SpotifyClone`.`seguindo_artistas` (`usuário_id`, `id_artista`) VALUES (1, 1);
INSERT INTO `SpotifyClone`.`seguindo_artistas` (`usuário_id`, `id_artista`) VALUES (1, 4);
INSERT INTO `SpotifyClone`.`seguindo_artistas` (`usuário_id`, `id_artista`) VALUES (1, 3);
INSERT INTO `SpotifyClone`.`seguindo_artistas` (`usuário_id`, `id_artista`) VALUES (2, 1);
INSERT INTO `SpotifyClone`.`seguindo_artistas` (`usuário_id`, `id_artista`) VALUES (2, 3);
INSERT INTO `SpotifyClone`.`seguindo_artistas` (`usuário_id`, `id_artista`) VALUES (3, 2);
INSERT INTO `SpotifyClone`.`seguindo_artistas` (`usuário_id`, `id_artista`) VALUES (3, 1);
INSERT INTO `SpotifyClone`.`seguindo_artistas` (`usuário_id`, `id_artista`) VALUES (4, 4);

COMMIT;
