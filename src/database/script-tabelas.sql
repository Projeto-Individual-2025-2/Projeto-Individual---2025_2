-- Scripts ConectUs Projeto Individual 2025_2
create database Conectus;

use Conectus;

create table Instituicao(
idInstituicao int primary key,
nomeInst varchar(45) 
);

create table Usuario(
idUsuario int primary key auto_increment,
nome varchar(45) not null,
dtNasc date not null,
email varchar(45) not null unique,
tipoEscola enum('publica', 'privada') not null,
conhecimento enum('Sim', 'Nao') not null,
detalhamento varchar(45) null,
senha varchar(45) not null,
fkInstituicao int unique,
constraint fkInstituicaoUsuario
	foreign key (fkInstituicao)
		references Instituicao(idInstituicao)
);

create table Postagem(
idPostagem int primary key auto_increment,
assunto varchar(45),
conteudo varchar(250),
fkUsuario int,
constraint fkUsuarioPostagem
	foreign key (fkUsuario)
		references Usuario(idUsuario),
fkPostagemPai int,
constraint fkPostagemPaiPostagem
	foreign key (fkPostagemPai)
		references Postagem(idPostagem)
);

select * from Usuario;

select * from postagem;

select * from resposta;

-- Gráfico de Barras
select count(dtNasc) from Usuario where dtNasc <= '2013-01-01' and dtNasc >= '2009-01-01';
select count(dtNasc) from Usuario where dtNasc <= '2008-01-01' and dtNasc >= '2004-01-01';
select count(dtNasc) from Usuario where dtNasc <= '2003-01-01';

-- Gráfico de pizza
select count(tipoEscola) from Usuario where tipoEscola = 'Privada';
select count(tipoEscola) from Usuario where tipoEscola = 'Pública';

-- Gráfico de Donuts
select count(detalhamento) from Usuario where detalhamento = 'Colegio';
select count(detalhamento) from Usuario where detalhamento = 'Ismart';
select count(detalhamento) from Usuario where detalhamento = 'Cuja';

-- KPI total de comentários
select count(idPostagem) from Postagem where fkUsuario = 2;