create table funcionarios(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
dataNasc DATE,
salario DECIMAL,
cargo VARCHAR(255),
departamento VARCHAR(255),
primary key (id)
 );
 
 INSERT INTO funcionariosfuncionarios(nome, dataNasc, salario, cargo, departamento)
VALUES ("Nazaré Tedesco", "1965-11-24", 3200.00, "Auxiliar de Enfermagem", "Pediatria"),
("Carmen Lucia (Carminha)", "1972-06-06", 5500.00, "Enfermeira", "Geriatria"),
("Odete Roitman", "1945-04-10", 13000.00, "Diretora Geral", "Administração"),
("Tereza Cristina", "1962-08-15", 10000.00, "Anestesista", "Unidade de Tratamento Intensivo"),
("Raquel Araújo", "1975-08-01", 1800.00, "Auxiliar de Limpeza", "Serviços Gerais");

UPDATE funcionarios SET salario = 1800.00 WHERE id =5;

SELECT * FROM funcionarios WHERE salario > 2000.00;

SELECT * FROM funcionarios WHERE SALARIO < 2000.00;

UPDATE funcionarios SET salario = 1500.00 WHERE id =5; ;

