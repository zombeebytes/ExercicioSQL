create table funcionarios(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
dataNasc DATE,
salario DECIMAL,
cargo VARCHAR(255),
departamento VARCHAR(255),
primary key (id)
 );
 