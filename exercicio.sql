
------------------------------------------------------ EXERCICIO TABELA PRODUTOS -------------------------

create table Produto (
	id serial primary key,
	nome varchar(100) not null, 
	preco decimal(10,2) not null,
	estoque int default 0
)

insert into Produto (nome,preco,estoque)
values ('Vassoura',39.9,8)

insert into Produto (nome,preco,estoque)
values ('Lixeira',19.9,21)

insert into Produto (nome,preco,estoque)
values ('Rodo',89.9,3)

select *
from Produto 
order by preco

update Produto set preco = 40 where nome='Vassoura'
