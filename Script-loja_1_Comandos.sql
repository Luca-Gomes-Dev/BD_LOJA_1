# COMANDOS

# SELECT
select * from formacao f ; 

select ('Ciencia de dados')from formacao f;

select grau, curso, instituicao
from formacao f;

select * from pessoa p; 

select  Nome,
		Data_Nascimento,
		Salario
from pessoa p;

# SELECT WHERE

select f.id,
	   f.instituicao
from formacao f 
where f.id = 2; 

select f.ID,
	   f.Grau  
from formacao f 
where f.Grau  = 'Mestrado'; 

# SELECT WHERE//LIKE

select f.ID,
	   f.Grau  
from formacao f 
where f.Grau like 'Bachar%'; 

# SELECT SUM//MAX/MIN/AVG

select * from pessoa p;

select sum(Salario)from pessoa p; 

select max(Salario)from pessoa p; 

select min(Salario)from pessoa p; 

select avg (Salario)from pessoa p; 

# SELECT HAVING// COUNT
select  Data_Nascimento, count(ID) as TotalRegistros
from pessoa p 
group by Data_Nascimento
having count(ID) <= 1985;

select  salario, sum(salario) as total
FROM pessoa p 
group by Salario 
having sum(salario) > 500;

# SELECT INNER JOIN 

SELECT Pessoa.ID, Pessoa.Nome, Pessoa.Data_Nascimento, Pessoa.Salario, Formacao.Grau, Formacao.Curso, Formacao.Instituicao, Funcao.Nome, Funcao.Descrição
FROM Pessoa
INNER JOIN Formacao ON Pessoa.ID = Formacao.ID
INNER JOIN Funcao ON Pessoa.ID = Funcao.ID;

# SELECT INNER LEFT JOIN 

SELECT Pessoa.ID, Pessoa.Nome, Pessoa.Data_Nascimento, Pessoa.Salario, Formacao.Grau, Formacao.Curso, Funcao.Nome, Funcao.Descrição
FROM Pessoa
LEFT JOIN Formacao ON Pessoa.ID = Formacao.ID
LEFT JOIN Funcao ON Pessoa.ID = Funcao.ID;

# SELECT INNER RIGTH JOIN 

SELECT Pessoa.ID, Pessoa.Nome, Pessoa.Data_Nascimento, Formacao.Grau, Formacao.Curso, Formacao.Instituicao, Funcao.Nome, Funcao.Descrição
FROM Pessoa
RIGHT JOIN Formacao ON Pessoa.ID = Formacao.ID
RIGHT JOIN Funcao ON Pessoa.ID = Funcao.ID;

# SELECT INNER JOIN UNION

SELECT ID, Nome, Data_Nascimento, Salario
FROM Pessoa
UNION
SELECT ID, Grau, Curso, Instituicao
FROM Formacao
UNION
SELECT ID, Nome, Descrição, NULL
FROM Funcao;

# UPDATE // WHERE

-- Atualizar o nome da pessoa com ID 1 na tabela Pessoa
UPDATE Pessoa
SET Nome = 'Astrogildo'
WHERE ID = 1;

-- Atualizar o grau da formação com ID 2 na tabela Formacao
UPDATE Formacao
SET Grau = 'Doutorado'
WHERE ID = 2;

-- Atualizar o nome da função com ID 3 na tabela Funcao
UPDATE Funcao
SET Nome = 'Supervisor'
WHERE ID = 3;

# DELETE // WHERE

DELETE FROM Pessoa
WHERE ID = 1;

DELETE FROM Formacao
WHERE ID = 3;

DELETE FROM Funcao
WHERE ID = 3;

