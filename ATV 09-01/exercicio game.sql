CREATE TABLE tb_classes(
id_classe INT,
tipo VARCHAR(255),
elemento VARCHAR(255),
PRIMARY KEY(id_classe));
INSERT INTO tb_classes(id_classe, tipo, elemento) 
VALUES(1, "Mago", "Fogo"), (2, "Bruxo", "Água"), 
(3, "Arqueiro", "Terra"), (4, "Curandeiro", "Água"), 
(5, "Ninja", "Fogo");
SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id_personagem BIGINT AUTO_INCREMENT PRIMARY KEY,
nomePers VARCHAR(255),
nivel INT,
ataque INT,
defesa INT, 
id_classe INT);
INSERT INTO tb_personagens (nomePers, nivel, ataque, defesa, id_classe)
VALUES ("Mulan", 20, 5000, 2100, 1),
("Merida", 25, 5400, 1900, 2),
("Bucky", 21, 4800, 2000, 3),
("Legolas", 26, 5100, 2300, 4),
("Dodola", 30, 6000, 3100, 5),
("Zam", 19, 4000, 1800, 6),
("Hanya", 28, 6100, 2900, 7),
("Kim Chi", 22, 4000, 1800, 8);
SELECT * FROM  tb_personagens;
UPDATE tb_personagens SET ataque = 1800 WHERE id_personagem = 2;
SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nomePers LIKE '%C%';
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe;
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe WHERE tb_classes.tipo = "Bruxo";



