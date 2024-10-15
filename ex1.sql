create database ex1

use ex1

create table alunos(
	numero_matricula int primary key,
	nome varchar(50) not null,
	idade int not null,
	telefone char(11)
)

create table cursos(
	id int primary key,
	curso varchar(20) not null,
	professores varchar(20) not null
)

create table alunoscursos(
	idcursos_alunos int  primary key,
	numero_matricula int not null,
	idcurso int
	constraint fk_alunoscursos_alunos foreign key (numero_matricula)
	references alunos(numero_matricula),
	constraint fk_alunoscursos_cursos foreign key (idcurso)
	references cursos(id)
)

INSERT INTO alunos (numero_matricula, nome, idade, telefone) VALUES (1, 'Ana Silva', 20, '11987654321');
INSERT INTO alunos (numero_matricula, nome, idade, telefone) VALUES (2, 'Pedro Souza', 22, '21987654321');
INSERT INTO alunos (numero_matricula, nome, idade, telefone) VALUES (3, 'Maria Oliveira', 19, '31987654321');
INSERT INTO alunos (numero_matricula, nome, idade, telefone) VALUES (4, 'Lucas Santos', 21, '41987654321');
INSERT INTO alunos (numero_matricula, nome, idade, telefone) VALUES (5, 'Juliana Lima', 20, '51987654321');
INSERT INTO alunos (numero_matricula, nome, idade, telefone) VALUES (6, 'Roberto Pereira', 23, '61987654321');
INSERT INTO alunos (numero_matricula, nome, idade, telefone) VALUES (7, 'Fernanda Costa', 18, '71987654321');
INSERT INTO alunos (numero_matricula, nome, idade, telefone) VALUES (8, 'Carlos Almeida', 24, '81987654321');
INSERT INTO alunos (numero_matricula, nome, idade, telefone) VALUES (9, 'Isabela Rocha', 22, '91987654321');
INSERT INTO alunos (numero_matricula, nome, idade, telefone) VALUES (10, 'Thiago Martins', 21, '10987654321');



INSERT INTO cursos (id, curso, professores) VALUES (1, 'Engenharia', 'Dr. João');
INSERT INTO cursos (id, curso, professores) VALUES (2, 'Medicina', 'Dra. Maria');
INSERT INTO cursos (id, curso, professores) VALUES (3, 'Direito', 'Dr. Carlos');
INSERT INTO cursos (id, curso, professores) VALUES (4, 'Administração', 'Dr. Paulo');
INSERT INTO cursos (id, curso, professores) VALUES (5, 'Arquitetura', 'Dra. Ana');
INSERT INTO cursos (id, curso, professores) VALUES (6, 'CiênciaComputação', 'Dr. Bruno');
INSERT INTO cursos (id, curso, professores) VALUES (7, 'Psicologia', 'Dra. Fernanda');
INSERT INTO cursos (id, curso, professores) VALUES (8, 'Fisioterapia', 'Dr. Felipe');
INSERT INTO cursos (id, curso, professores) VALUES (9, 'Educação Física', 'Dra. Cláudia');
INSERT INTO cursos (id, curso, professores) VALUES (10, 'Biologia', 'Dr. André');



INSERT INTO alunoscursos (idcursos_alunos, numero_matricula, idcurso) VALUES (1, 1, 1);
INSERT INTO alunoscursos (idcursos_alunos, numero_matricula, idcurso) VALUES (2, 2, 2);
INSERT INTO alunoscursos (idcursos_alunos, numero_matricula, idcurso) VALUES (3, 3, 3);
INSERT INTO alunoscursos (idcursos_alunos, numero_matricula, idcurso) VALUES (4, 4, 4);
INSERT INTO alunoscursos (idcursos_alunos, numero_matricula, idcurso) VALUES (5, 5, 5);
INSERT INTO alunoscursos (idcursos_alunos, numero_matricula, idcurso) VALUES (6, 6, 6);
INSERT INTO alunoscursos (idcursos_alunos, numero_matricula, idcurso) VALUES (7, 7, 7);
INSERT INTO alunoscursos (idcursos_alunos, numero_matricula, idcurso) VALUES (8, 8, 8);
INSERT INTO alunoscursos (idcursos_alunos, numero_matricula, idcurso) VALUES (9, 9, 9);
INSERT INTO alunoscursos (idcursos_alunos, numero_matricula, idcurso) VALUES (10, 10, 10);
INSERT INTO alunoscursos (idcursos_alunos, numero_matricula, idcurso) VALUES (11, 1, 10);


select alunos.nome, cursos.curso,alunos.numero_matricula from alunoscursos
inner join alunos on alunos.numero_matricula=alunoscursos.numero_matricula
inner join cursos on cursos.id=alunoscursos.idcurso

select alunos.nome, cursos.curso,alunos.numero_matricula from alunoscursos
inner join alunos on alunos.numero_matricula=alunoscursos.numero_matricula
inner join cursos on cursos.id=alunoscursos.idcurso
where cursos.curso = 'Arquitetura'

select alunos.nome, cursos.curso,alunos.numero_matricula from alunoscursos
inner join alunos on alunos.numero_matricula=alunoscursos.numero_matricula
inner join cursos on cursos.id=alunoscursos.idcurso
where alunos.nome ='Ana Silva'
