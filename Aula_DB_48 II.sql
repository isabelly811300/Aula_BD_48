#criação do banco de dados empresa_xpto.
create database empresa_xpto; 

#ativar o banco de dados,
use empresa_xpto;

#criação da tabela funcionarios.
create table funcionarios (
id int auto_increment ,
nome varchar (60) ,
sobrenome varchar (60),
salario decimal (10,2),
primary key ( id)
);

#inserir arquivo para o banco de dados.
load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/funcionarios.csv'
into table funcionarios
fields terminated by ','
lines terminated by '\n'
ignore 1 lines
(nome, sobrenome, salario) set id= null;

#selecionar lista de funcionarios.
select * from funcionarios;
 
 #selecionar funcionarios com o salário menor que 1238.11
 select * from funcionarios where salario<1238.11;

#selecionar nome , sobrenome de somente 5 funcionarios ordenados pelo salário .
select nome , sobrenome from funcionarios order by salario limit 5;

#selecionar nome , sobrenome de somente 5 funcionarios em ordem descresente ordenados pelo salário.
select nome , sobrenome from funcionarios order by salario desc limit 5;

#selecionar funcionarios onde o nome é igual a Carlo ou nome igual a  nome Gil , ou seja retor somente o Carlo ou Gil.
select * from funcionarios where nome = 'Carlo' or nome='Gil';

#selecionar funcionarios onde o nome é igual a Carlo ou nome igual a  nome Gil e o salário é maior que 15000.
select * from funcionarios where ( nome = 'Carlo' or nome='Gil') and salario > 15000;

#selecionar funcionarios com o sobrenome é igual a Benn ou Ramet .
select * from funcionarios where sobrenome = 'Benn' or sobrenome= 'Ramet' ;

#selecionar funcionarios com o sobrenome é igual a Benn ou Ramet e com o salário menos que 5000.
select * from funcionarios where (sobrenome = 'Benn' or sobrenome= 'Ramet' ) and salario < 5000 ;

#selecionar funcionarios onde o salário é entre 5000 e 10000.
select * from funcionarios where salario between 5000 and 10000 ;

#selecionar nome , sobrenome dos  funcionarios onde o salário é entre 2000 e 3000.
select nome , sobrenome from funcionarios where salario between 2000 and 3000 ;

#selecionar a soma do salário dos funcionarios .
select sum(salario) as soma_salario from funcionarios;

#selecionar a media do salário dos funcionarios .
select avg (salario) as media_salario from funcionarios;

#selecionar o total  dos funcionarios .
select count(*) as total_funcionarios from funcionarios;

#selecionar o maior  salário dos funcionarios .
select max(salario) as maior_salario from funcionarios;

#selecionar o menor salário dos funcionarios .
select min(salario) as maior_salario from funcionarios;

#selecionar o total de funcionarios com o salário maior que 15000 .
select count(*) as total from funcionarios where salario >15000;

#selecionar o total de funcionarios com o salário entre 1212 e 5000.
select count(*) as total from funcionarios where salario between 1212 and 5000;

#selecionar o total de funcionarios com o salário entre 5001 e 10000 .
select count(*) as total from funcionarios where salario between 5001 and 10000;

#selecionar o total de funcionarios com o salário entre 10001 e 15000 .
select count(*) as total from funcionarios where salario between 10001 and 15000;
