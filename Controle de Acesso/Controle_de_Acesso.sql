create database Controle_de_Acesso;
use Controle_de_Acesso;

  -- Tabelas e Atributos --
create table Tag (
	id int primary key,
    código int unique not null,
    tipo varchar(50)
);

create table Sala (
	id int primary key,
    numero int unique not null,
    nome varchar(50)
);

create table Usuario (
	id int primary key,
    nome varchar(50) not null,
    endereco varchar(100)
);

create table Externo (
	id_externo int primary key,
    nome_externo varchar(50) not null,
    endereco_externo varchar(100),
    
    cpf varchar(11) unique not null,
    
    foreign key(id_externo) references Usuario(id),
    foreign key(nome_externo) references Usuario(nome),
    foreign key(endereco_externo) references Usuario(endereco)
);

create table Servidor (
	id_servidor int primary key,
    nome_servidor varchar(50) not null,
    endereco_servidor varchar(100),
    
    matricula varchar(50) unique not null,
    
    foreign key(id_servidor) references Usuario(id),
    foreign key(nome_servidor) references Usuario(nome),
    foreign key(endereco_servidor) references Usuario(endereco)
);

