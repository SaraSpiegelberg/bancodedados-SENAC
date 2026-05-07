
------------------------------------------------------ EXERCICIO TABELA PRODUTOS -------------------------

create table Produto (
	id serial primary key,
	nome varchar(100) not null, 
	preco decimal(10,2) not null,
	estoque int default 0
)

INSERT INTO Produto (nome, preco, estoque) VALUES 
('Vassoura Multiuso', 22.90, 15),
('Mop Giratório', 115.00, 8),
('Pá de Lixo com Cabo', 18.50, 12),
('Balde Plástico 10L', 14.90, 20),
('Varal de Chão Aço', 89.90, 5),
('Esponja de Aço', 5.50, 50),
('Flanela de Microfibra', 7.90, 40),
('Frigideira Antiaderente', 54.00, 10),
('Jogo de Pratos', 120.00, 6),
('Escorredor de Pratos Inox', 65.00, 7),
('Kit de Potes', 35.00, 25),
('Tábua de Corte Bambu', 29.90, 15),
('Abridor de Latas', 12.00, 30),
('Cesto Organizador G', 25.00, 18),
('Cabide de Veludo', 45.00, 20),
('Lixeira com Pedal 5L', 38.00, 10),
('Tapete de Entrada', 32.50, 12),
('Porta Escova de Dentes', 15.90, 22),
('Rodo de Pia', 9.90, 35),
('Saboneteira de Parede', 19.00, 14)

select *
from Produto 
order by preco

update Produto set preco = 10 where nome='Rodo de Pia'

delete from produto where id=4
