INSERT INTO funcionariosfuncionarios(nome, dataNasc, salario, cargo, departamento)
VALUES ("Nazaré Tedesco", "1965-11-24", 3200.00, "Auxiliar de Enfermagem", "Pediatria"),
("Carmen Lucia (Carminha)", "1972-06-06", 5500.00, "Enfermeira", "Geriatria"),
("Odete Roitman", "1945-04-10", 13000.00, "Diretora Geral", "Administração"),
("Tereza Cristina", "1962-08-15", 10000.00, "Anestesista", "Unidade de Tratamento Intensivo"),
("Raquel Araújo", "1975-08-01", 1800.00, "Auxiliar de Limpeza", "Serviços Gerais");
UPDATE funcionarios SET salario = 1800.00 WHERE id =5; 