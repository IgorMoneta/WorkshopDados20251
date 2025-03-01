Create database informatica;
use informatica;

CREATE TABLE Vendedor (
    cpf_vendedor INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    genero VARCHAR(10),
    data_nascimento DATE
);

CREATE TABLE Gerente (
    cpf_gerente INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    genero VARCHAR(10),
    data_nascimento DATE,
    cpf_vendedor INTEGER,
    FOREIGN KEY (cpf_vendedor) REFERENCES Vendedor(cpf_vendedor)
);

CREATE TABLE Cliente (
    cpf_cliente INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    genero VARCHAR(10),
    data_nascimento DATE,
    endereco VARCHAR(255)
);

CREATE TABLE Produto (
    id_produto INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    tipo VARCHAR(50),
    preco FLOAT
);

CREATE TABLE Fornecedor (
    id_fornecedor INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    cnpj INTEGER,
    endereco VARCHAR(255),
    contato INTEGER
);

CREATE TABLE Pedido (
    id_produto INTEGER,
    cpf_vendedor INTEGER,
    cpf_cliente INTEGER,
    tipo_pagamento VARCHAR(50),
    data_venda DATE,
    PRIMARY KEY (id_produto, cpf_vendedor, cpf_cliente),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto),
    FOREIGN KEY (cpf_vendedor) REFERENCES Vendedor(cpf_vendedor),
    FOREIGN KEY (cpf_cliente) REFERENCES Cliente(cpf_cliente)
);

CREATE TABLE Estoque (
    id_produto INTEGER PRIMARY KEY,
    quantidade_produto INTEGER,
    data_reabastecimento DATE,
    cpf_gerente INTEGER,
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto),
    FOREIGN KEY (cpf_gerente) REFERENCES Gerente(cpf_gerente)
);


-- Inserindo dados na tabela Vendedor
INSERT INTO Vendedor VALUES
(1, 'Carlos Silva', 'Masculino', '1985-06-15'),
(2, 'Maria Oliveira', 'Feminino', '1990-08-22'),
(3, 'João Santos', 'Masculino', '1982-12-05'),
(4, 'Ana Souza', 'Feminino', '1995-04-10'),
(5, 'Pedro Costa', 'Masculino', '1988-09-18'),
(6, 'Juliana Mendes', 'Feminino', '1993-11-25'),
(7, 'Roberto Lima', 'Masculino', '1980-03-30'),
(8, 'Fernanda Alves', 'Feminino', '1992-07-14'),
(9, 'Gustavo Pereira', 'Masculino', '1986-05-20'),
(10, 'Camila Rocha', 'Feminino', '1998-01-08');

-- Inserindo dados na tabela Gerente
INSERT INTO Gerente VALUES
(1, 'Ricardo Lopes', 'Masculino', '1975-06-20', 1),
(2, 'Larissa Duarte', 'Feminino', '1980-09-12', 2),
(3, 'Fernando Ramos', 'Masculino', '1978-03-05', 3),
(4, 'Tatiane Freitas', 'Feminino', '1985-07-22', 4),
(5, 'Marcelo Andrade', 'Masculino', '1982-11-15', 5),
(6, 'Sônia Cardoso', 'Feminino', '1983-02-17', 6),
(7, 'Paulo Mendes', 'Masculino', '1979-12-30', 7),
(8, 'Carla Souza', 'Feminino', '1986-04-25', 8),
(9, 'Rodrigo Nogueira', 'Masculino', '1981-06-11', 9),
(10, 'Beatriz Lima', 'Feminino', '1987-08-19', 10);

-- Inserindo dados na tabela Cliente
INSERT INTO Cliente VALUES
(1, 'Bruno Martins', 'Masculino', '1992-05-10', 'Rua A, 123'),
(2, 'Carla Nunes', 'Feminino', '1987-10-15', 'Rua B, 456'),
(3, 'Daniel Souza', 'Masculino', '1995-07-25', 'Rua C, 789'),
(4, 'Vanessa Lima', 'Feminino', '1993-09-05', 'Rua D, 101'),
(5, 'Eduardo Pereira', 'Masculino', '1991-04-18', 'Rua E, 202'),
(6, 'Patrícia Gomes', 'Feminino', '1989-03-12', 'Rua F, 303'),
(7, 'Ricardo Ferreira', 'Masculino', '1994-06-29', 'Rua G, 404'),
(8, 'Sandra Carvalho', 'Feminino', '1990-11-08', 'Rua H, 505'),
(9, 'Marcos Ribeiro', 'Masculino', '1985-12-17', 'Rua I, 606'),
(10, 'Luciana Duarte', 'Feminino', '1996-02-21', 'Rua J, 707');

-- Inserindo dados na tabela Produto
INSERT INTO Produto VALUES
(1, 'Produto A', 'Eletrônico', 99.90),
(2, 'Produto B', 'Vestuário', 49.50),
(3, 'Produto C', 'Alimentos', 19.99),
(4, 'Produto D', 'Eletrônico', 249.99),
(5, 'Produto E', 'Móveis', 799.90),
(6, 'Produto F', 'Brinquedos', 39.90),
(7, 'Produto G', 'Cosméticos', 59.90),
(8, 'Produto H', 'Ferramentas', 129.99),
(9, 'Produto I', 'Automotivo', 349.90),
(10, 'Produto J', 'Esportes', 199.99);

-- Inserindo dados na tabela Fornecedor
INSERT INTO Fornecedor VALUES
(1, 'Fornecedor A', 123456789, 'Av. Central, 100', 987654321),
(2, 'Fornecedor B', 987654321, 'Rua das Flores, 200', 123456789),
(3, 'Fornecedor C', 456789123, 'Av. Paulista, 300', 321654987),
(4, 'Fornecedor D', 789123456, 'Rua Amazonas, 400', 654987321),
(5, 'Fornecedor E', 159357486, 'Praça Brasil, 500', 159753852),
(6, 'Fornecedor F', 753951852, 'Rua Goiás, 600', 852369741),
(7, 'Fornecedor G', 852147963, 'Av. Independência, 700', 753951456),
(8, 'Fornecedor H', 951753258, 'Rua Ceará, 800', 951357852),
(9, 'Fornecedor I', 357159852, 'Alameda Santos, 900', 357951258),
(10, 'Fornecedor J', 258951357, 'Rua Bahia, 1000', 258357159);

-- Inserindo dados na tabela Estoque
INSERT INTO Estoque VALUES
(1, 50, '2024-01-15', 1),
(2, 30, '2024-01-16', 2),
(3, 70, '2024-01-17', 3),
(4, 20, '2024-01-18', 4),
(5, 100, '2024-01-19', 5),
(6, 60, '2024-01-20', 6),
(7, 40, '2024-01-21', 7),
(8, 90, '2024-01-22', 8),
(9, 35, '2024-01-23', 9),
(10, 80, '2024-01-24', 10);

-- Contagem de vendedores por gênero
SELECT genero, COUNT(*) AS total_vendedores FROM Vendedor GROUP BY genero;

-- Média de idade dos gerentes
SELECT AVG(YEAR(CURDATE()) - YEAR(data_nascimento)) AS media_idade_gerentes FROM Gerente;

-- Quantidade de clientes por gênero
SELECT genero, COUNT(*) AS total_clientes FROM Cliente GROUP BY genero;

-- Número total de produtos por tipo
SELECT tipo, COUNT(*) AS total_produtos FROM Produto GROUP BY tipo;

-- Valor médio dos produtos no estoque
SELECT AVG(preco) AS preco_medio_produtos FROM Produto;

-- Quantidade total de produtos em estoque
SELECT SUM(quantidade_produto) AS total_produtos_estoque FROM Estoque;

-- Total de pedidos por tipo de pagamento
SELECT tipo_pagamento, COUNT(*) AS total_pedidos FROM Pedido GROUP BY tipo_pagamento;

-- Número total de fornecedores cadastrados
SELECT COUNT(*) AS total_fornecedores FROM Fornecedor;

-- JOIN entre Pedido e Cliente para obter o nome do cliente que fez cada pedido
SELECT Pedido.id_produto, Cliente.nome AS nome_cliente, Pedido.data_venda 
FROM Pedido
JOIN Cliente ON Pedido.cpf_cliente = Cliente.cpf_cliente;

-- JOIN entre Estoque e Produto para exibir a quantidade de cada produto no estoque
SELECT Produto.nome AS nome_produto, Estoque.quantidade_produto, Estoque.data_reabastecimento 
FROM Estoque
JOIN Produto ON Estoque.id_produto = Produto.id_produto;
