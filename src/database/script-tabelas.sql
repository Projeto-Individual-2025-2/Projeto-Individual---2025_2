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
fkUsuario int,
constraint fkUsuarioPostagem
	foreign key (fkUsuario)
    	references Usuario(idUsuario),
fkPostagemPai int null,
	constraint fkPostagemPai
		foreign key (fkPostagemPai)
			references Postagem(idPostagem)
);

select * from Usuario;