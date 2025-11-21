-- Scripts ConectUs Projeto Individual 2025_2
create database Conectus;

use Conectus;

create table Usuario(
idUsuario int primary key auto_increment,
nome varchar(45) not null,
dtNasc date not null,
email varchar(45) not null unique,
tipoEscola enum('publica', 'privada') not null,
conhecimento enum('Sim', 'Nao') not null,
detalhamento varchar(45) null,
senha varchar(45) not null
);

create table Postagem(
idPostagem int primary key auto_increment,
assunto varchar(45),
comentario varchar(250),
);

create table Resposta(
idResposta int primary key auto_increment,
descricao varchar(250),
fkPostagem int,
fkUsuario int, 
constraint fkPostagemResposta
	foreign key (fkPostagem)
		references Postagem(idPostagem),
constraint fkUsuarioResposta
	foreign key (fkUsuario)
		references Usuario(idUsuario)
);

select * from Usuario;