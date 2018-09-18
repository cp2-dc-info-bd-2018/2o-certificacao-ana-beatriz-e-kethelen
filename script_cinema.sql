use cinema_definitivo;

insert into cliente(id,nome)values
(1,'Anis'),
(2,'Agatha');

insert into ingresso(id,fileira,cadeira)values
(1,'F',3),
(2,'B',4);
insert into sala(id,capacidade)values
(1,250),
(2,230);

insert into diretor(id,nome)values
(1,'Guilhermo del Toro'),
(2,'Makoto Shinkai');

insert into genero(id,nome)values
(1,'fantasia'),
(2,'animação');

insert into filme(id,nome,lancamento,diretor)values
(1,'O Labirinto do Fauno','01-12-2006',1),
(2,'Your Name','11-10-2017',2);

insert into filme_genero(idfilme,idgenero)values
(1,1),
(2,2);

insert into exibicao(id,filme,inicio,fim,sala)values
(1,1,'13:30','15:30',1),
(2,2,'14:00','15:52',2);

insert into funcionario(id,nome,salario,contratacao)values
(1,'Aroldo',1300.00,'09-10-2005'),
(2,'Rogério',1200.00,'10-11-2016');

insert into funcao(id,nome)values
(1,'Atendente bilheteria'),
(2,'Assistente Operacional');

insert into funcionario_funcao(funcionario,funcao)values
(1,2),
(2,1);

insert into funcionario_exibicao(id_funcionario,id_exibicao) values
(1,2),
(2,2);

select * from cliente;
select*from ingresso;
select*from sala;
select*from diretor;
select*from genero;
select*from filme;
select*from filme_genero;
select*from exibicao;
select*from funcionario;
select*from funcao;
select*from funcionario_funcao;
select*from funcionario_exibicao;
