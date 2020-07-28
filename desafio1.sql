DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

create table plano (
plano_id int not null auto_increment primary key,
plano varchar(15) not null,
valor_plano decimal(5,2) not null
) engine = InnoDB;

create table artista (
artista_id int not null auto_increment primary key,
artista varchar(80) not null
) engine = InnoDB;

create table album (
album_id int not null auto_increment primary key,
album varchar(80) not null,
artista int not null,
foreign key (artista) REFERENCES artista(artista_id)
) engine = InnoDB;

create table usuario (
usuario_id int not null auto_increment primary key,
usuario varchar(15) not null,
idade int not null, 
plano int not null,
foreign key (plano) REFERENCES plano(plano_id)
) engine = InnoDB;

create table cancao (
cancao_id int not null auto_increment primary key,
cancao varchar(80),
album int not null,
foreign key (album) REFERENCES album(album_id)
) engine = InnoDB;

create table historico_de_reproducoes (
usuario_id int not null,
historico_de_reproducoes int not null,
primary key (usuario_id, historico_de_reproducoes),
foreign key (usuario_id) REFERENCES usuario(usuario_id),
foreign key (historico_de_reproducoes) REFERENCES cancao(cancao_id)
)engine = InnoDB;

create table seguindo_artistas (
usuario_id int not null,
seguindo_artistas int not null,
primary key(usuario_id, seguindo_artistas),
foreign key (usuario_id) REFERENCES usuario(usuario_id),
foreign key (seguindo_artistas) REFERENCES artista(artista_id)
)engine = InnoDB;

insert into artista (artista)
values ("Walter Phoenix"), ("Peter Strong"), ("Lance Day"), ("Freedie Shannon");

insert into plano (plano, valor_plano)
values ("gratuito", 0),("familiar", 7.99),("universitário", 5.99);

insert into album (album, artista)
values ("Envious", 1), ("Exuberant", 1),("Hallowed Steam", 2), ("Incandescent", 3), ("Temporary Culture", 4);

insert into usuario (usuario, idade, plano)
values ("Thati", 23, 1), ("Cintia", 35,	2), ("Bill", 20, 3), ("Roger", 45, 1);

insert into cancao(cancao_id,cancao, album)
values (1, "Soul For Us", 1),
(2, "Reflections Of Magic", 1),
(3, "Dance With Her Own", 1),
(4, "Troubles Of My Inner Fire", 2),
(5, "Time Fireworks", 2),
(6, "Magic Circus", 3),
(7, "Honey, So Do I", 3),
(8, "Sweetie, Let's Go Wild", 3),
(9, "She Knows", 3),
(10, "Fantasy For Me", 4),
(11, "Celebration Of More", 4),
(12, "Rock His Everything", 4),
(13, "Home Forever", 4),
(14, "Diamond Power", 4),
(15, "Honey, Let's Be Silly", 4),
(16, "Thang Of Thunder", 5),
(17, "Words Of Her Life", 5),
(18, "Without My Streets", 5);

insert into seguindo_artistas (usuario_id, seguindo_artistas)
values (1, 1), (1, 4), (1, 3), (2, 1), (2, 3), (3, 2), (3, 1), (4, 4);

insert into historico_de_reproducoes (usuario_id, historico_de_reproducoes)
values (1,1), (1,6), (1,14), (1,16), (2,13), (2,17), (2,2), (2,15), (3,4), (3,16), (3,6), (4,3), (4,18), (4,11);
