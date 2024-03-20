CREATE DATABASE sprint1;

use sprint1;

CREATE TABLE Arte(
idArte int primary key auto_increment,
nome varchar(200),
categoria varchar(50),
artista varchar(80),
temperaturaMedia varchar(3),
umidadeMedia varchar(3)
);

CREATE TABLE Funcionario(
idFunc int primary key auto_increment,
nome varchar(70),
nivelAcesso int default 2,
email varchar(50),
senha varchar(50)
);

CREATE TABLE Sensores(
idSensor int primary key auto_increment,
dtMonitoramento datetime,
tempMinima varchar(3),
tempMaxima varchar(3),
umidadeMin varchar(3),
umidadeMax varchar(3)
);

INSERT INTO Funcionario (nome, nivelAcesso, email, senha) values
("Joao","3","jpmazzetto@gmail.com","123456789");

SELECT * FROM sensores;






