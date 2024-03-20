-- Sprint 1 (Museu)

CREATE DATABASE projeto_sprint1;
USE projeto_sprint1;

CREATE TABLE Funcionario (
idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
email VARCHAR(55),
senha VARCHAR(55),
nivelAcesso CHAR(1) DEFAULT '2'
);

CREATE TABLE Obra (
idObra INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
categoria VARCHAR(55),
artista VARCHAR(100),
min_temp_aceitavel INT,
max_temp_aceitavel INT,
min_umidade_aceitavel INT,
max_umidade_aceitavel INT
);

CREATE TABLE Monitoramento (
idMonitoramento INT PRIMARY KEY AUTO_INCREMENT,
idObra INT,
CONSTRAINT fkObra FOREIGN KEY (idObra) references Obra (idObra),
max_temp_registro INT,
min_temp_registro INT,
media_temp_registro INT,
max_umidade_registro INT,
min_umidade_registro INT,
media_umidade_registro INT,
data_registro DATE
);

INSERT INTO Funcionario VALUES
	(DEFAULT, 'João', 'joao@gmail.com', 'joao123', '1'),
    (DEFAULT, 'Luiz', 'luiz@gmail.com', 'luiz456', '3');
    
INSERT INTO Obra VALUES
	(DEFAULT, 'A Noite Estrelado', 'Pintura', 'Van Gogh', 19, 23, 70, 80);
    
INSERT INTO Monitoramento VALUES
	(DEFAULT, 1, 23, 21, 22, 77, 70, 74, '2024-03-15');
    
SELECT * FROM Funcionario;

SELECT * FROM Obra;

SELECT * FROM Monitoramento;