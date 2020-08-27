/*Exercicio 1*/
create DATABASE exerc_fixacao;

use exerc_fixacao;

create table Departamentos(
codigo_Depto int not null,
nome varchar(30) not null,
localizacao varchar(30) not null,
primary key(codigo_Depto));

create table Funcionarios(
codigo_Func int not null,
codigo_Depto int not null,
primeiro_Nome varchar(20) not null,
segundo_Nome varchar(20) not null,
ultimo_Nome varchar(20) not null,
data_Nasc date not null,
cpf varchar(14) not null unique,
rg varchar(13) not null,
edereco varchar(60) not null,
cep varchar(10) not null,
cidade varchar(30) not null default 'itapira',
fone_Res varchar(14),
fone_Cel varchar(15) not null,
funcao varchar(30) not null,
salario decimal(8,2) not null,
primary key(codigo_Func),
foreign key(codigo_Depto) references Departamentos(codigo_Depto));

/*Exercicio 2*/
select primeiro_Nome, segundo_Nome from Funcionarios;

/*Exercicio 3*/
select * from Funcionarios order by cidade;

/*Exercicio 4*/

select * from Funcionarios where  salario > 1000 order by primeiro_Nome, segundo_Nome, ultimo_Nome;

/*Exercicio 5*/
select data_Nasc, primeiro_Nome from Funcionarios order by data_Nasc asc;

/*Exercicio 6*/
select primeiro_Nome, segundo_Nome, ultimo_Nome, fone_Cel, fone_Res from Funcionarios order by UltimoNome, PrimeiroNome, SegundoNome;

/*Exercicio 7*/
select sum(salario) As total_salario from Funcionarios;

/*Exercicio 8*/
select count(codigo_Func) from Funcionarios;

/*Exercicio 9*/
select avg(salario) from Funcionarios;

/*Exercicio 10*/
select primeiro_Nome, segundo_Nome, ultimo_Nome from Funcionarios where cidade = 'itapira' and funcao = Recepcionista;

