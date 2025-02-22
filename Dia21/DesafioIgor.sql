CREATE DATABASE Desafio;
USE Desafio;

CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Endereco VARCHAR(255),
    Telefone INT
);

CREATE TABLE Vendas (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Preco FLOAT,
    Cliente_Telefone INT
);
INSERT INTO Clientes (ID, Nome, Endereco, Telefone) VALUES 
(1, "Igor", "Estrada dos Remedios", 1234454234), 
(2, "Pedro", "Rua das Graças", 4325423432), 
(3, "João", "Av. Floriano", 5436785466), 
(4, "Clara", "Estrada dos Remedios", 5467897654),
(5, "Mariana", "Rua dos Andradas", 6789543123), 
(6, "Lucas", "Av. Paulista", 9876543210), 
(7, "Fernanda", "Rua XV de Novembro", 3456789012), 
(8, "Rafael", "Travessa São José", 6543210987), 
(9, "Carla", "Rua Amazonas", 7654321098), 
(10, "Bruno", "Av. Brasil", 8765432109);

INSERT INTO Vendas (ID, Nome, Preco, Cliente_Telefone) VALUES 
(1, "Computador", 4000, 1234454234), 
(2, "Celular", 1000, 2147483647), 
(3, "Notebook", 2000, 2147423111), 
(4, "PS5", 35000, 2147483432),
(5, "Tablet", 1500, 9876543210), 
(6, "Monitor", 1200, 3456789012), 
(7, "Teclado Mecânico", 600, 6543210987), 
(8, "Mouse Gamer", 450, 7654321098), 
(9, "Cadeira Gamer", 2500, 8765432109), 
(10, "Impressora", 900, 5467897654);

SELECT SUM(Preco) FROM Vendas;

SELECT COUNT(Endereco) FROM Clientes WHERE Endereco = "Estrada dos Remedios";

SELECT AVG(Preco) FROM Vendas;

SELECT Clientes.Nome, Vendas.Nome FROM Clientes 
INNER JOIN Vendas ON Clientes.Telefone = Vendas.Cliente_Telefone;

SELECT * FROM Vendas ORDER BY Preco ASC;

