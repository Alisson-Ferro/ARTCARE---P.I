create database dadosPI;
use dadosPI;

create table obras(
idObra int primary key auto_increment,
nome varchar(50) not null,
categoria varchar(60),
artista varchar(60),
tempMedia decimal(4,2) not null,
umdMedia int not null
);

create table temp_umd(
idSensores int primary key auto_increment,
nome varchar(20),
dtCaptura datetime not null,
temp_max decimal(4,2),
temp_min decimal(4,2),
umd_max decimal(5,2),
umd_min decimal(5,2)
);

create table funcionarios(
idFuncionarios int primary key auto_increment,
nome varchar(60) default('Desconhecido'),
nivel varchar(20)
	constraint chkNivel check(nivel in('gerencia','administrativo','funcionario')),
email varchar(50),
senha varchar(100)
);

 

insert into obras values
(default,'Monalisa', 'renascentista','Leonardo DaVinci','36.00', '40'),
(default,'O grito','expressionista','Edvard Munch', '33.70', '37'),
(default,'Céu estrelado', 'modernista','Vincent Van Gogh','29.02', '20'),
(default,'Santa ceia','renascentista','Leonardo DaVinci', '36.00', '22'),
(default,'Abaporu','modernista', 'Tarcila do Amaral','35.43', '22');

insert into temp_umd values
(default, 'DHT11', '2024-10-10 08-00-00','50.00', '00.00', '20.00','90.00'),
(default,'DHT11', '2024-10-10 08-05-00','50.00', '00.00', '20.00','90.00'),
(default,'DHT11', '2024-10-10 08-10-00','50.00', '00.00', '20.00','90.00');

insert into funcionarios values
(default, 'Carla', 'funcionario', 'carla.soares@artcare.tech','art1241000'),
(default,'Brenda', 'funcionario', 'brenda.santos@artcare.tech','art1241001'),
(default,'Antony', 'gerencia', 'anthony.freitas@artcare.tech','art1241002'),
(default, 'Luis', 'administrativo', 'luis.gustavo@artcare.tech','art1241003'),
(default,'Fernando', 'administrativo', 'fernando.domingues@artcare.tech','art1241004'),
(default,'Gerson', 'gerencia', 'gerson.silveira@artcare.tech','art1241005');

													-- OBRAS --
select*from obras;
select*from obras where idObra in(1,4);
select * from obras where nome like 'm%';
select * from obras where tempMedia like '%2';
select * from obras where nome like '% %';
select nome, categoria from obras where nome ='Céu estrelado'; 
select nome, categoria from obras;
select * from obras where artista = 'Leonardo DaVinci'; 

											-- SENSORES--
								
select*from temp_umd;
select*from temp_umd where idSensores in(1,3);
select * from temp_umd where nome like 'D%';
select * from temp_umd where dtCaptura like '%:05:%';
select * from temp_umd where dtCaptura like '%-10-%';
select temp_max, umd_max from temp_umd;
select * from temp_umd where dtCaptura= '2024-10-10 08-00-00';

													-- FUNCIONARIOS--
select*from funcionarios;
select*from funcionarios where idFuncionarios in(1,4);
select * from funcionarios where nome like 'b%';
select * from funcionarios where nivel like '%o';
select * from funcionarios where nome like '%o_';
select email, senha from funcionarios;
select * from funcionarios where email like 'carla.soares%';
select*from funcionarios where nivel='gerencia';


