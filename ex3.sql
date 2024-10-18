create database ex3

use ex3

create table musicas(
	idMusica int primary key,
	nome varchar(50),
	estilo varchar(30)
)

create table artistas(
	idArtista int primary key,
	nomeArtista varchar(20),
)


INSERT INTO artistas (idArtista, nomeArtista) VALUES (1, 'Adele');
INSERT INTO artistas (idArtista, nomeArtista) VALUES (2, 'Ed Sheeran');
INSERT INTO artistas (idArtista, nomeArtista) VALUES (3, 'Drake');
INSERT INTO artistas (idArtista, nomeArtista) VALUES (4, 'Beyoncé');
INSERT INTO artistas (idArtista, nomeArtista) VALUES (5, 'Taylor Swift');
INSERT INTO artistas (idArtista, nomeArtista) VALUES (6, 'Bruno Mars');
INSERT INTO artistas (idArtista, nomeArtista) VALUES (7, 'Billie Eilish');
INSERT INTO artistas (idArtista, nomeArtista) VALUES (8, 'Coldplay');
INSERT INTO artistas (idArtista, nomeArtista) VALUES (9, 'Shakira');
INSERT INTO artistas (idArtista, nomeArtista) VALUES (10, 'Kendrick Lamar');
INSERT INTO artistas (idArtista, nomeArtista) VALUES (11, 'Dua Lipa');
INSERT INTO artistas (idArtista, nomeArtista) VALUES (12, 'The Weeknd');


INSERT INTO musicas (idMusica, nome, estilo) VALUES (1, 'Hello', 'Pop');
INSERT INTO musicas (idMusica, nome, estilo) VALUES (2, 'Shape of You', 'Pop');
INSERT INTO musicas (idMusica, nome, estilo) VALUES (3, 'God\s Plan', 'Hip-Hop');
INSERT INTO musicas (idMusica, nome, estilo) VALUES (4, 'Halo', 'R&B');
INSERT INTO musicas (idMusica, nome, estilo) VALUES (5, 'Blank Space', 'Pop');
INSERT INTO musicas (idMusica, nome, estilo) VALUES (6, 'Uptown Funk', 'Funk');
INSERT INTO musicas (idMusica, nome, estilo) VALUES (7, 'Bad Guy', 'Pop');
INSERT INTO musicas (idMusica, nome, estilo) VALUES (8, 'Fix You', 'Rock');
INSERT INTO musicas (idMusica, nome, estilo) VALUES (9, 'Hips Don´t Lie', 'Reggaeton');
INSERT INTO musicas (idMusica, nome, estilo) VALUES (10, 'HUMBLE.', 'Hip-Hop');
INSERT INTO musicas (idMusica, nome, estilo) VALUES (11, 'Levitating', 'Pop');
INSERT INTO musicas (idMusica, nome, estilo) VALUES (12, 'Blinding Lights', 'Pop');

create table musicas_artistas(
	id int primary key,
	idMusica int,
	idArtista int
	constraint fk_musicasartistas_musicas foreign key (idMusica)
	references musicas(idMusica),
	constraint fk_musicasartistas_artistas foreign  key (idArtista)
	references artistas(idArtista)
)

INSERT INTO musicas_artistas (id, idMusica, idArtista) VALUES (1, 1, 1);  
INSERT INTO musicas_artistas (id, idMusica, idArtista) VALUES (2, 2, 2);  
INSERT INTO musicas_artistas (id, idMusica, idArtista) VALUES (3, 3, 3); 
INSERT INTO musicas_artistas (id, idMusica, idArtista) VALUES (4, 4, 4);  
INSERT INTO musicas_artistas (id, idMusica, idArtista) VALUES (5, 5, 5); 
INSERT INTO musicas_artistas (id, idMusica, idArtista) VALUES (6, 6, 6); 
INSERT INTO musicas_artistas (id, idMusica, idArtista) VALUES (7, 7, 7);  
INSERT INTO musicas_artistas (id, idMusica, idArtista) VALUES (8, 8, 8); 
INSERT INTO musicas_artistas (id, idMusica, idArtista) VALUES (9, 9, 9); 
INSERT INTO musicas_artistas (id, idMusica, idArtista) VALUES (10, 10, 10); 
INSERT INTO musicas_artistas (id, idMusica, idArtista) VALUES (11, 11, 11); 
INSERT INTO musicas_artistas (id, idMusica, idArtista) VALUES (12, 12, 12); 
INSERT INTO musicas_artistas (id, idMusica, idArtista) VALUES (13, 4, 1); 
INSERT INTO musicas_artistas (id, idMusica, idArtista) VALUES (14, 6, 2);


select musicas.nome, musicas.estilo, artistas.nomeArtista from musicas_artistas
inner join musicas on musicas.idMusica=musicas_artistas.idMusica
inner join artistas on artistas.idArtista=musicas_artistas.idArtista

select musicas.nome, musicas.estilo, artistas.nomeArtista from musicas_artistas
inner join musicas on musicas.idMusica=musicas_artistas.idMusica
inner join artistas on artistas.idArtista=musicas_artistas.idArtista
where musicas.nome = 'Halo'

select musicas.nome, musicas.estilo, artistas.nomeArtista from musicas_artistas
inner join musicas on musicas.idMusica=musicas_artistas.idMusica
inner join artistas on artistas.idArtista=musicas_artistas.idArtista
where artistas.nomeArtista = 'Adele'
