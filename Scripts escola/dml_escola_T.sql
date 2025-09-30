--Usar um já criado
USE db_escola_t;


--INSERIR UM REGISTRO NA TABELA ESCOLA
INSERT INTO tb_escola (nome, endereco)
VALUES('Torloni', 'Estrada das lágrimas, 579 - São José');

SELECT * FROM tb_escola;

--TABELA TURMA
INSERT INTO tb_turma(serie, periodo, numero_sala, nome_turma)
VALUES
(2, 'tarde', 16, 'SEDUC'),
(2, 'manhã', 16, 'SEDUC'),
(2, 'Noite', 16, 'SEDUC');


SELECT * FROM tb_turma;

--INSERIR UM REGISTRO NA TABELA PROVA
INSERT INTO tb_prova(nome_professor, materia, horário, nota, data_prova)
VALUES
('Ana claudia', 'Educação Física', '13:15:00',0, '2025-09-25'),
('Rogeria', 'Matemática', '14:20:00',10, '2025-09-26'),
('Ronaldo', 'Sociologia', '08:30:00',7.5, '2025-09-26');

SELECT * FROM tb_prova;

--TABELA ALUNO
INSERT INTO tb_aluno(nome, cpf, matricula, data_nasc, id_escola)
VALUES
('gustavo', '97257996237', 'gustavozqk','2008-04-10', 1);

INSERT INTO tb_aluno(nome, cpf, matricula, data_nasc, id_escola)
VALUES
('henrique', '54700591463', 'henriquezk','2009-04-11', 1),
('silva', '29246768949', 'silvazk','2005-04-12', 1),
('davi', '87271986189', 'davizk','2006-04-13', 1),
('walyson', '12734208881', 'walysonzk','2007-04-14', 1);

SELECT * FROM tb_aluno;


--APAGAR UM REGISTRO PELO SEU IDENTIFICADIR


--ATUALIZAR UM REGISTROPELO SEU IDEMTIFICADOR
UPDATE tb_aluno
SET nome = 'davi',cpf = '87271986189'
WHERE id 
