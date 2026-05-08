
------------------------- EXERCICIO TABELA FUNCIONARIOS -------------------------

create table Funcionario (
	id serial primary key,
	nome varchar(100) not null, 
	cargo varchar(50) not null,
	salario decimal(10,2) not null, 
	DataAdmissao date not null
)

INSERT INTO Funcionario (nome, cargo, salario, DataAdmissao) VALUES 
('Ana Souza', 'Gerente de Projetos', 15000, '2027-01-02'),
('Bruno Alves', 'Desenvolvedor Senior', 12000, '2027-01-03'),
('Carla Dias', 'Analista de Sistemas', 9000, '2027-01-04'),
('Daniel Reis', 'Desenvolvedor', 8500, '2027-01-05'),
('Eduarda Lima', 'Coordenadora de RH', 9500, '2025-01-06'),
('Fabio Monte', 'Engenheiro de Dados', 11000, '2027-01-07'),
('Gisele Rocha', 'Especialista de Marketing', 7800, '2027-01-08'),
('Henrique Paz', 'Analista Financeiro', 7200, '2025-01-09'),
('Igor Santos', 'Desenvolvedor', 4500, '2027-01-10'),
('Julia Ferraz', 'Assistente Administrativo', 3800, '2027-01-11')

select * from Funcionario where salario>=3000 order by salario

select * from Funcionario where DataAdmissao > '2025-01-01' and DataAdmissao < '2025-12-31'

select Nome,Cargo from Funcionario where cargo = 'Desenvolvedor'

update Funcionario set cargo = 'Gerente' where id=21

delete from Funcionario where id =26



