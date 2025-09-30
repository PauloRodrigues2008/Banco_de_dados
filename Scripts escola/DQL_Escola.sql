USE db_escola_T;

--listar os 3 primeiros alunos
SELECT TOP 3 matricula FROM tb_aluno;
--Lista as matriculas dos alunos em  ordem crescente
SELECT matricula
FROM tb_aluno
ORDER BY id ASC;

--Lista os id's dos 3 primeiros alunos que foram recem recente cadastrados
SELECT TOP 3 matricula
FROM tb_aluno
ORDER BY id DESC;

--todos os alunos
	SELECT nome, cpf
	FROM tb_aluno
	WHERE nome = 'gustavo';

--lista o nome da escola Torloni
SELECT nome
FROM tb_escola
WHERE nome = 'Torloni'

--Mostre as turmas que tem o nome SEDUC
SELECT nome_turma
FROM tb_turma
WHERE nome_turma = 'SEDUC'

--Exiba somente 2 alunos em ordem do mais recente para o menos recente
SELECT TOP 2 *
FROM tb_aluno
ORDER BY id DESC;


--Mostre quantos alunos existe na base
SELECT COUNT(matricula) AS qtd_alunos FROM tb_aluno;

--Mostre o alunos mais nova
SELECT MAX(data_nasc) AS idade_mais_novo FROM tb_aluno;

--Mostre o alunos mais velhos
SELECT MIN(data_nasc) AS idade_mais_velha FROM tb_aluno;

--Exiba a idade mais velha e a idade mais nova em uma unica consulta
SELECT MIN(data_nasc) AS idade_mais_velha, MAX(data_nasc) AS idade_mais_novo FROM tb_aluno;

SELECT TOP 1 nome, data_nasc --selecionamos o primeiro registro da tabela
FROM tb_aluno
ORDER BY data_nacs; /*ordenamos ele por data de nascimento 
para que a idade mais velha seja a primeira a aparecer*/

--Exibe a media aritimedica de notas nas provas 
SELECT AVG(nota) AS media_nota FROM tb_prova;

--Exiba a soma dos id's de turma
SELECT SUM(id) FROM tb_aluno;

--Mostre os nomes do alunos mais novos
SELECT MAX(data_nasc) AS idade_mais_novo, nome
FROM tb_aluno
GROUP BY  nome
ORDER BY idade_mais_novo DESC;

--Exibir quantas turmas tem o periodo da tarde
SELECT COUNT(periodo)
FROM tb_turma
WHERE periodo = 'Tarde';
