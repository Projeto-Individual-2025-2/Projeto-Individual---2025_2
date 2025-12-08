create database Conectus;

use Conectus;

create table Instituicao(
idInstituicao int primary key,
nomeInst varchar(45) 
);

insert into Instituicao values
	(1, 'Ismart'),
	(2, 'Colegio'),
	(3, 'Cuja');

create table Usuario(
idUsuario int primary key auto_increment,
nome varchar(45) not null,
dtNasc date not null,
email varchar(45) not null unique,
tipoEscola enum('publica', 'privada') not null,
conhecimento enum('Sim', 'Nao') not null,
detalhamento varchar(45) null,
senha varchar(45) not null,
fkInstituicao int,
constraint fkInstituicaoUsuario
	foreign key (fkInstituicao)
		references Instituicao(idInstituicao)
);

create table Postagem(
idPostagem int primary key auto_increment,
assunto varchar(45) not null,
conteudo varchar(250) not null,
fkUsuario int,
constraint fkUsuarioPostagem
	foreign key (fkUsuario)
		references Usuario(idUsuario),
fkPostagemPai int,
constraint fkPostagemPaiPostagem
	foreign key (fkPostagemPai)
		references Postagem(idPostagem)
);