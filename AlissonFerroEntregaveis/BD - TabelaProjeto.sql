CREATE DATABASE MysqlAlisson;

USE MysqlAlisson;

CREATE TABLE obras (
idObra INT PRIMARY KEY AUTO_INCREMENT,
autor VARCHAR (25),
titulObra VARCHAR (40),
localObra VARCHAR (100),
salaObra VARCHAR (20),
anoCriação DATE,
temperaturaMedia DECIMAL (4,2),
umidadeMedia DECIMAL (4,2)
);

ALTER TABLE obras MODIFY COLUMN umidadeMedia INT;

DESC obras;

CREATE TABLE sensores (
idSensor INT PRIMARY KEY AUTO_INCREMENT,
nomeSensor VARCHAR (40),
dtColetaDados DATETIME NOT NULL,
idObra INT);

DESC sensores;

CREATE TABLE coleta (
dtColetaDados DATETIME,
temperatura INT,
umidade INT,
idSensor INT
);

DESC coleta;

CREATE TABLE funcionarios (
idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (40),
funcao VARCHAR (80), 
email VARCHAR (50),
CONSTRAINT chkFuncao CHECK (funcao IN('Artista','Gerente','Limpeza','Segurança','Negociante','Leiroeiro','Diretor','Curador','Avaliador','Marketinkg'))
);

DESC funcionarios;

INSERT INTO obras(idObra, autor, titulObra, localObra, salaObra, anoCriação, temperaturaMedia, umidadeMedia) VALUES
(DEFAULT,'Leonardo da Vinci','Mona Lisa','Museu do louvre','1','1503-01-01','22.02','30'),
(DEFAULT,'Salvador Dali','A Persistência da Memória','The Museum of Modern Art','2','1931-01-01','24.02','10'),
(DEFAULT,'Pablo Picasso','Guernica','Museu Nacional Centro de Arte Reina Sofia','3','1881-01-01','28.02','10'),
(DEFAULT,'Sandro Botticelli','O Nascimento de Venus','Galleria degli Uffizi','4','1483-01-01','26.02','40'),
(DEFAULT,'Vicent Van Gogh','Noite Estrelada','The Museum of Modern Art','5','1889-01-24','30.02','24');

DROP TABLE obras;

SELECT * FROM obras;

INSERT INTO sensores (idSensor, nomeSensor, dtColetaDados, idObra) VALUES
(DEFAULT,'DHT11','2024-05-05',1),
(DEFAULT,'DHT11','2024-04-05 ',2),
(DEFAULT,'DHT11','2024-03-05 ',3),
(DEFAULT,'DHT11','2024-02-05 ',4),
(DEFAULT,'DHT11','2024-01-05 ',5);

SELECT * FROM sensores;

INSERT INTO coleta (dtColetaDados, temperatura, umidade, idSensor) VALUES
('2024-05-05','20','75',1),
('2024-04-05','22','55',2),
('2024-03-05','19','45',3),
('2024-02-05','21','30',4),
('2024-01-05','17','10',5);

SELECT * FROM coleta;

INSERT INTO funcionarios (idFuncionario, nome, funcao, email) VALUES
(DEFAULT,'Leonardo','Artista','leonardo@artcare'),
(DEFAULT,'Gustavo','Leiroeiro','Gustavo@artcare'),
(DEFAULT,'Cristiano','Avaliador','Cristiano@artcare'),
(DEFAULT,'Paulo','Diretor','Paulo@artcare'),
(DEFAULT,'Giovanne','Gerente','Giovanne@artcare'),
(DEFAULT,'Victor','Marketinkg','Victor@artcare');

SELECT * FROM funcionarios;

SELECT * FROM funcionarios WHERE nome LIKE '%O';

SELECT * FROM coleta WHERE temperatura LIKE '%2%';

SELECT * FROM sensores WHERE nomeSensor LIKE '%1_';

SELECT * FROM obras WHERE localObra LIKE '%t';


