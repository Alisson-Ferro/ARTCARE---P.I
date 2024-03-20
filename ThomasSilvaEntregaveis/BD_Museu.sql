CREATE DATABASE ProjetoMuseu;

USE ProjetoMuseu;

CREATE TABLE Funcionario (
	idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR (50),
	Sobrenome  VARCHAR (50),
	Email VARCHAR (80),
	Senha CHAR (8),
	DtCadastro DATETIME,
    Funcao VARCHAR (30)
);

ALTER TABLE Funcionario
ADD CONSTRAINT chkFuncao 
CHECK(Funcao IN('Funcionario','Gerente', 'Supervisor'));


INSERT INTO Funcionario VALUES 
(default, 'Jack', 'Crawford', 'jack.crawford@gmail.com', 'wife123', '2023-03-07 14:30:00' , 'Gerente'),
(default, 'Abigail', 'Hobbs', 'abigail.hobbs@gmail.com', 'abc123', '2024-03-08 09:45:00', 'Funcionario'),
(default, 'Alana', 'Bloom', 'alana.bloom@gmail.com', 'gatos123', '2024-03-09 11:15:00', 'Funcionario'),
(default, 'Hannibal', 'Lecter', 'hannibal.lecter@Meat.com', 'Will1906', '2024-03-10 16:20:00', 'Supervisor'),
(default, 'Will', 'Graham', 'will.graham@Dogs.com', 'dogs123', '2024-03-11 13:00:00', 'Funcionario');


DESC Funcionario;
SELECT * FROM Funcionario;


CREATE TABLE Instituicao (
	IdInstituicao INT PRIMARY KEY AUTO_INCREMENT,
    idFuncionario INT,
	Nome VARCHAR (100),
	CEP CHAR (8),
	Telefone CHAR (11),
	Email VARCHAR (80),
	Responsavel VARCHAR (50),
	Senha CHAR (8),
	DtCadastro DATETIME
);


INSERT INTO Instituicao VALUES 
(default, 'Museu de Arte Moderna', '01234567', '1122334455', 'contato@museuarte.com', 'Maria Silva', 'senha123', '2024-03-07 10:00:00'),
(default, 'Museu Histórico Nacional', '12345678', '9988776655', 'contato@museunacional.com', 'João Santos', 'senha456', '2024-03-08 11:30:00'),
(default, 'Museu de Ciências Naturais', '23456789', '8877665544', 'contato@museuciencias.com', 'Ana Oliveira', 'senha789', '2024-03-09 09:45:00'),
(default, 'Museu de Belas Artes', '34567890', '7766554433', 'contato@museubelasartes.com', 'Pedro Lima', 'senhaabc', '2024-03-10 13:20:00'),
(default, 'Museu Arqueológico', '45678901', '6655443322', 'contato@museuarqueologia.com', 'Laura Pereira', 'senhaxyz', '2024-03-11 15:00:00');
 
DESC Instituicao;
SELECT * FROM Instituicao;


CREATE TABLE Dispositivo (
    idDispositivo INT PRIMARY KEY AUTO_INCREMENT,
	idInstituicao INT,
    NomeDispositivo VARCHAR(40),
    DescDispositivo VARCHAR(200),
    DtInstalacao DATETIME
);

INSERT INTO Dispositivo VALUES
(default, 'DHT11', 'Sensor de umidade e temperatura - Sala 1', 1, '2024-03-07 10:00:00'),
(default, 'DHT11', 'Sensor de umidade e temperatura - Sala 2', 1, '2024-02-08 11:30:00'),
(default, 'DHT11', 'Sensor de umidade e temperatura - Sala 3', 3, '2024-01-09 09:45:00'),
(default, 'DHT11', 'Sensor de umidade e temperatura - Sala 4', 3, '2023-03-10 13:20:00'),
(default, 'DHT11', 'Sensor de umidade e temperatura - Sala 5', 4, '2023-07-11 15:00:00'),
(default, 'DHT11', 'Sensor de umidade e temperatura - Sala 6', 5, '2024-02-20 17:00:30');

DESC Dispositivo;
SELECT * FROM Dispositivo;


CREATE TABLE Leitura (
    idLeitura INT PRIMARY KEY AUTO_INCREMENT,
    idDispositivo INT,
    Temperatura INT,
    Umidade INT,
    DtLeitura DATETIME
);

INSERT INTO Leitura VALUES 
(default, 1, 25, 60, '2024-03-07 10:15:00'),
(default, 2, 24, 58, '2024-02-08 11:45:00'),
(default, 3, 23, 55, '2024-01-09 10:00:00'),
(default, 4, 22, 53, '2024-03-10 13:30:00'),
(default, 5, 21, 50, '2024-07-11 15:30:00');

DESC Leitura;
SELECT * FROM Leitura;


SHOW TABLES;