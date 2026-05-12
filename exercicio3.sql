------------------------------------- Tabela PEDIDO -------------

create table Pedido (
	id serial primary key,
	nome_cliente varchar(100) not null, 
	data_pedido date not null,
	valor_total decimal(10,2) not null, 
	status_pedido varchar (200) default 'Pendente' not null, 
    forma_pagamento varchar (30) not null,
    observacao varchar (200)
)

INSERT INTO Pedido (nome_cliente, data_pedido, valor_total, status_pedido, forma_pagamento, observacao) VALUES 
('Ana Silva', '2026-05-11 12:30:00', 85.50, 'Entregue', 'Cartão de Crédito', 'Sem cebola no hambúrguer'),
('Bruno Oliveira', '2026-05-11 12:45:00', 42.00, 'Preparando', 'Pix', 'Enviar talheres descartáveis'),
('Carla Souza', '2026-05-11 13:00:00', 120.00, 'Cancelado', 'Dinheiro', 'Cliente desistiu do pedido'),
('Diego Santos', '2026-05-11 13:15:00', 65.90, 'Saiu para Entrega', 'Cartão de Débito', 'Interfone com defeito, ligar ao chegar'),
('Elena Ramos', '2026-05-11 18:20:00', 35.00, 'Entregue', 'Pix', 'Molho extra de alho'),
('Fabio Lima', '2026-05-11 18:40:00', 210.00, 'Preparando', 'Cartão de Crédito', 'Pedido para aniversário, caprichar na embalagem'),
('Giovanna Melo', '2026-05-11 19:00:00', 55.00, 'Aguardando Pagamento', 'Dinheiro', 'Troco para 100 reais'),
('Henrique Vaz', '2026-05-11 19:30:00', 88.00, 'Entregue', 'Vale Refeição', 'Carne bem passada'),
('Isabela Costa', '2026-05-11 20:00:00', 12.50, 'Entregue', 'Pix', 'Apenas uma bebida'),
('João Paulo', '2026-05-11 20:15:00', 150.75, 'Saiu para Entrega', 'Cartão de Crédito', 'Retirar o tomate de todos os pratos'),
('Karine Alves', '2026-05-11 20:30:00', 74.20, 'Preparando', 'Cartão de Débito', 'Sem gelo no suco'),
('Lucas Rocha', '2026-05-11 21:00:00', 95.00, 'Entregue', 'Pix', 'Deixar na portaria'),
('Mariana Dias', '2026-05-11 21:10:00', 48.00, 'Cancelado', 'Cartão de Crédito', 'Erro no endereço de entrega'),
('Natan Gomes', '2026-05-11 21:30:00', 63.50, 'Entregue', 'Vale Refeição', 'Pimenta extra'),
('Olívia Martins', '2026-05-11 22:00:00', 115.00, 'Preparando', 'Dinheiro', 'Troco para 50 reais');

select * from pedido order by valor_total desc

update pedido set valor = '100' where id=11

DELETE FROM pedido WHERE valor_total < 100

select nome_cliente, data_pedido, valor_total 
from pedido
where data_pedido 
between '2025-01-01' and '2025-12-31' order by valor_total desc 

select * from pedido where forma_pagamento ='Pix' order by data_pedido desc


select * from pedido where observacao  like '%Urgente%' ----- que contém a palavra urgente!

SELECT *FROM pedido ORDER BY valor_total desc LIMIT 2







