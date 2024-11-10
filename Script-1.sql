-- Criar a tabela aluno

create table aluno (
	id SERIAL primary key,
	nome VARCHAR(100),
	email VARCHAR(100)
);

-- Criar a tabela professor

create table professor (
	id SERIAL primary key,
	nome VARCHAR(100),
	email VARCHAR(100)
);
-- Criar a tabela disciplina
-- Como vou dizer quem é o
-- prof da disciplina???
-- Ahh, chave estrangeira!

create table disciplina(
	id SERIAL primary key,
	nome VARCHAR(100),
	professor_id INT references professor(id)	
);

-- Quero inserir um aluno novo
-- na tabela aluno.
-- Mas pera, vamos conferir quem
-- existe dentro da tabela aluno antes

select * from aluno;

-- agora, de fato, vamos inserir
-- o primeiro

insert into aluno (nome, email)
values ('Joao Silva', 'joao@gmail.com');
insert into aluno (nome, email)
values ('Jose Silva', 'jose@gmail.com');

-- inserir dois profs

insert into professor (nome, email)
values ('Kelson', 'kelson@gmail.com');
insert into professor (nome, email)
values ('Messias', 'messias@gmail.com');

-- inserindo disciplinas
-- a de kelson:
-- mas pera, preciso do id de kelson:

select * from professor p;

-- agora com o id de kelson, posso
-- inserir uma disciplina para ele:

insert into disciplina (nome, professor_id)
values ('Banco de Dados I', 1);
insert into disciplina 
(nome, professor_id)
values ('Python', 2);

select * from disciplina d;

-- DELETE um aluno
-- FILTRANDO pelo id

delete from aluno 
where id = 2;

-- ATUALIZACAO - UPDATE

update aluno set nome = 'Joao Silva Souza'
where id = 1;






