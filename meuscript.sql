DROP TABLE profalun;
DROP TABLE cadastroCurso;
DROP TABLE cadastroProfessor;
DROP TABLE cadastroAluno;


CREATE TABLE cadastroAluno(
     rm int PRIMARY KEY,
     nomeAluno char(50),
     email char(55),
     dataNascimento date,
     telefone varchar(14),
     endereco varchar(65)
);
CREATE TABLE cadastroProfessor(
     id int PRIMARY KEY,
     nomeProfessor char(50),
     telefone varchar(14),
    email char(55)
);
CREATE TABLE cadastroCurso(
    idcurso serial PRIMARY KEY ,
    nomecurso varchar(50),
    periodo varchar(50),
    idpro int
);
CREATE TABLE profalun(
     idpro int,
     rmalu int,
     idcur int
);
ALTER TABLE cadastroCurso
 ADD CONSTRAINT FkCursoProfessor FOREIGN KEY
    (idpro)
 REFERENCES
    cadastroProfessor(id);
     ALTER TABLE profalun
 ADD CONSTRAINT FkProfAluno FOREIGN KEY
     (idpro)
 REFERENCES
     cadastroProfessor(id),
 ADD CONSTRAINT FkAlunoRm FOREIGN KEY
     (rmalu)
 REFERENCES
     cadastroAluno(rm),
 ADD CONSTRAINT FkCursoPro FOREIGN KEY
     (idcur)
 REFERENCES
     cadastroCurso(idcurso)
 ;
INSERT INTO cadastroAluno (rm, nomeAluno, email, dataNascimento, telefone, endereco)
VALUES
(21628, 'Tico e Teco', 'tico.teco@gmail.com', '2000-01-01', '1112345678', 'Rua dos Desenhos Animados, 123'),
(23254, 'Tazmania', 'tazmania@gmail.com', '1999-02-15', '2223456789', 'Avenida da Loucura, 456'),
(23555, 'Pernalonga', 'pernalonga@gmail.com', '2001-03-10', '3334567890', 'Travessa da Cenoura, 789'),
(23951, 'Barbie', 'eubarbie@gmail.com', '2002-04-20', '4445678901', 'Rua das Bonecas, 321'),
(23335, 'Mickey Mouse', 'mickey@gmail.com', '1928-11-18', '5556789012', 'Disneyland, 654'),
(23436, 'Minnie Mouse', 'minnie@gmail.com', '1928-11-18', '6667890123', 'Disneyland, 654'),
(23537, 'Bob Esponja', 'bob.esponja@gmail.com', '1999-05-30', '7778901234', 'Fenda do Biquini, 987'),
(23638, 'Patrick Estrela', 'patrick.estrela@gmail.com', '1999-06-22', '8889012345', 'Fenda do Biquini, 987'),
(23739, 'Elsa', 'elsafrozen@gmail.com', '2013-11-27', '9990123456', 'Arendelle, 789'),
(23840, 'Moana', 'moanapoderosa@gmail.com', '2016-11-23', '1112345678', 'Ilha de Motunui, 456');
INSERT INTO cadastroProfessor (id, nomeProfessor, telefone, email)
VALUES
(1, 'Severo Snape', '1112345678', 'snapesemprebravo@hogwarts.com'),
(2, 'Alvo Dumbledore', '2223456789', 'alvodumbledore@hogwarts.com'),
(3, 'Minerva McGonagall', '3334567890', 'mcgonagall@hogwarts.com'),
(4, 'Gandalf o Cinzento', '4445678901', 'gandalfOf@middleearth.com'),
(5, 'Mestre dos Magos', '5556789012', 'mestredosmagos@netherworld.com'),
(6, 'Wagner França', '6667890123', 'wagnerfranca@gmail.com');
INSERT INTO cadastroCurso (nomecurso, periodo, idpro)
VALUES
('Artes das Trevas', 'Noturno', 1),
('Magia', 'Matutino', 2),
('Disciplina de Transfiguração', 'Diurno', 3),
('Arte da Guerra e Magia', 'Matutino', 4),
('Malandragem e Malícia', 'Noturno', 5),
('Roubo e Furto de Automóveis', 'Diurno', 6);
INSERT INTO profalun (idpro, rmalu, idcur)
VALUES
(1, 23254, 1), 
(1, 23555, 1), 
(1, 23951, 1),
(1, 23335, 1),
(2, 23436,2 ), 
(2, 23537,2 ), 
(2, 23638,2 ),
(3, 23739,3 ), 
(3, 23840,3 );
