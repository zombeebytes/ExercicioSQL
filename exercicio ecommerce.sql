create table produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
quantidade INT,
marca VARCHAR(255),
preco DECIMAL(6,2) NOT NULL,
cor VARCHAR(20),
PRIMARY KEY(id));
INSERT INTO produtos(nome, quantidade, marca, preco, cor)
VALUES ("Tênis Puma Suede", 15, "Puma", 299.99, "Preto"),
("Camiseta Puma Power", 10, "Puma", 89.90, "Cinza"),
("Tênis Nike Air Force1", 12, "Nike", 599.99, "Branco"),
("Blusa de Moleton Nike SB", 7, "Nike", 189.00, "Preto"),
("Tênis Adidas Ozweego", 8, "Adidas", 699.00, "Rosa"), 
("Corta Vento Adidas", 5, "Adidas", 209.90, "Azul Marinho"),
("Tênis Converse All Star", 9, "Converse", 199.00, "Vermelho"),
("Mochila Vans", 4, "Vans", 259.90, "Rosa");
SELECT * FROM produtos WHERE preco > 500;
SELECT * FROM produtos WHERE preco < 500;
UPDATE produtos SET quantidade = 13 WHERE id = 1;
SELECT * FROM produtos;

