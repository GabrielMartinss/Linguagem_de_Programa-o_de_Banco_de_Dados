create database estacionamento;
use estacionamento;

create table carro(
polaca varchar(10) not null,
cor varchar(10) not null,
descricao varchar(10) not null,
primary key (placa));