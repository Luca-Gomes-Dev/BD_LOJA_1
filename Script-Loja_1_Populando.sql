

-- ORDEM PARA INSERÇÃO DE DADOS


-- Inserir dados em Categoria_Produto
INSERT INTO Categoria_Produto (Nome)
VALUES ('Eletrônicos'), ('Roupas'), ('Alimentos');


-- Inserir dados em Formacao
INSERT INTO Formacao (Grau, Curso, Instituicao)
VALUES ('Bacharelado', 'Engenharia de Computação', 'Universidade XYZ'),
       ('Mestrado', 'Ciência de Dados', 'Universidade ABC');


-- Inserir dados em Funcao
INSERT INTO Funcao (Nome, Descrição)
VALUES ('Gerente', 'Gerencia uma equipe'),
       ('Vendedor', 'Vende produtos aos clientes');


-- Inserir dados em Endereco
INSERT INTO Endereco (Numero, Rua, Bairro, Cidade, CEP, Complemento)
VALUES (123, 'Rua A', 'Bairro 1', 'Cidade X', '12345', 'Apartamento 101'),
       (456, 'Rua B', 'Bairro 2', 'Cidade Y', '54321', 'Casa 3');


-- Inserir dados em Produto
INSERT INTO Produto (Nome, Valor, ID_Cat_Produto)
VALUES ('Smartphone', 799.99, 1),
       ('Camiseta', 29.99, 2);


-- Inserir dados em Loja
INSERT INTO Loja (Nome, ID_Endereco, ID_Produto)
VALUES ('Loja A', 1, 1),
       ('Loja B', 2, 2);


-- Inserir dados em Departamento
INSERT INTO Departamento (Nome, Descrição, ID_Funcao, Produto_ID)
VALUES ('Vendas', 'Departamento de vendas', 2, 1),
       ('TI', 'Departamento de Tecnologia da Informação', 1, 2);


-- Inserir dados em Pessoa
INSERT INTO Pessoa (Nome, Data_Nascimento, Salario, ID_Departamento, Formacao_ID, Loja_ID, Funcao_ID)
VALUES ('João da Silva', '1990-05-15', 5000.00, 1, 1, 1, 1),
       ('Maria Oliveira', '1985-09-20', 6000.00, 2, 2, 2, 2)