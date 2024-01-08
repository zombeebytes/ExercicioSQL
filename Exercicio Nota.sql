create table notas( 
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
dataNasc DATE,
sexo CHAR,
nota INT,
turma VARCHAR(10),
PRIMARY KEY (id));

INSERT INTO notas(nome, dataNasc, sexo, nota, turma)
VALUES ("Gustavo da Silva", "2010-05-12", "M", 8.9, "Turma D"),
("Adriana Santana", "2010-01-26", "F", 9.5, "Turma A"),
("Bruno Jean Cabral Lopes", "2010-07-14", "M", 10.0, "Turma A"),
("Mauricio Santos", "2011-09-16", "M", 5.0, "Turma C"),
("Rebeca dos Santos", "2010-07-08", "F", 9.1, "Turma B"),
("Kelly Oliveira", "2011-09-21", "F", 7.8, "Turma D"),
("Luna de Jesus", "2010-06-06", "F", 10.0, "Turma A"),
("Maiara da Silva", "2011-01-22", "F", 4.0, "Turma D");
SELECT * FROM notas;
SELECT * FROM notas WHERE nota > 7;
SELECT * FROM notas WHERE nota < 7;
UPDATE notas SET nota = 7 WHERE id = 4;

