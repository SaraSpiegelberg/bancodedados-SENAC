---------------------- CRIA TABELAS ---------------------------------

create table usuario (
    ID SERIAL primary key,
    Nome VARCHAR(100) not null,
    CPF VARCHAR(11) unique not null,
    Email VARCHAR(100) unique,
    Telefone VARCHAR(20),
    DataCadastro TIMESTAMP not null default CURRENT_TIMESTAMP,
    Ativo BOOLEAN default true
)
 
create table forma_pagamento (
    ID INT primary key not null,
    Nome VARCHAR(30)
)

create table status (
    statusID INT primary key not null, 
    Status VARCHAR(128) not null
)

create table pedido (
    pedido_ID SERIAL primary key,
    usuario_ID INT not null,
    data_pedido TIMESTAMP not null default CURRENT_TIMESTAMP,
    valor_total DECIMAL(10,2) not null, 
    status_pedido_ID INT not null, 
    forma_pagamento_ID INT not null,
    observacao VARCHAR(200),
    foreign key (usuario_ID) references usuario(ID),
    foreign key (forma_pagamento_ID) references forma_pagamento(ID),
	foreign key (status_pedido_ID) references status(statusID)
)



-------------------------------- INSERE DADOS ---------------------------------------------

INSERT INTO forma_pagamento (ID, Nome) VALUES 
(1, 'Cartão de Crédito'),
(2, 'Cartão de Débito'),
(3, 'PIX'),
(4, 'Boleto'),
(5, 'Dinheiro')

INSERT INTO status (statusID, Status) VALUES 
(1, 'Pago'),
(2, 'Pendente'),
(3, 'Enviado'),
(4, 'Cancelado')

INSERT INTO usuario (Nome, CPF, Email, Telefone, Ativo)
VALUES
('João Silva', '12345678901', 'joao.silva@gmail.com', '(11) 99876-1234', TRUE),
('Maria Oliveira', '23456789012', 'maria.oliveira@yahoo.com', '(21) 99765-4321', TRUE),
('Carlos Souza', '34567890123', 'carlos.souza@hotmail.com', '(31) 99654-3210', FALSE),
('Ana Pereira', '45678901234', 'ana.pereira@gmail.com', '(41) 99543-2109', TRUE),
('Fernanda Lima', '56789012345', 'fernanda.lima@outlook.com', '(51) 99432-1098', FALSE),
('Ricardo Gomes', '67890123456', 'ricardo.gomes@gmail.com', '(61) 99321-0987', TRUE),
('Patricia Alves', '78901234567', 'patricia.alves@yahoo.com', '(71) 99210-9876', TRUE),
('Lucas Martins', '89012345678', 'lucas.martins@hotmail.com', '(81) 99109-8765', FALSE),
('Juliana Rocha', '90123456789', 'juliana.rocha@gmail.com', '(91) 99098-7654', TRUE),
('Bruno Carvalho', '01234567890', 'bruno.carvalho@outlook.com', '(92) 98987-6543', TRUE)

INSERT INTO pedido (usuario_ID, valor_total, status_pedido_ID, forma_pagamento_ID, observacao)
VALUES
(1, 250.75, 1, 1, 'Entrega expressa'),
(2, 89.90,  2, 3, 'Cliente pediu embalagem presente'),
(3, 560.00, 3, 4, NULL),
(4, 120.50, 4, 2, 'Pagamento não aprovado'),
(2, 999.99, 1, 3, 'Entrega agendada'),
(2, 45.00,  2, 5, NULL),
(1, 310.20, 3, 1, 'Entregar após 18h'),
(3, 780.40, 1, 4, NULL),
(1, 150.00, 2, 3, 'Primeira compra do cliente'),
(5, 67.89,  1, 2, NULL)

-------------------------------- LÊ DADOS -----------------------------------
SELECT 
    p.pedido_ID as "ID do Pedido", 
    u.Nome as "Cliente", 
    p.data_pedido as "Data do Pedido", 
    p.valor_total as "Valor Total",
    f.nome as "Forma de Pagamento",
    s.Status as "Status do Pedido",
    p.observacao as "Observação"
FROM pedido p
INNER JOIN usuario u ON p.usuario_ID = u.ID 
INNER JOIN forma_pagamento f ON p.forma_pagamento_ID = f.ID 
INNER JOIN status s ON p.status_pedido_ID = s.statusID
ORDER BY u.Nome ASC














