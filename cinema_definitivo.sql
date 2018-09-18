use cinema_definitivo;

create table cliente(
id int,
nome varchar
primary key (id)
);

create table ingresso (
id int,
fileira varchar,
cadeira int
primary key (id)
);

create table sala(
id int,
capacidade int
primary key (id)
);

create table genero(
id int,
nome varchar
primary key (id)
);

create table diretor (
id int,
nome varchar
primary key (id)
);

create table filme(
id int,
nome varchar,
lancamento date,
diretor int
primary key (id)
foreign key (diretor) references diretor(id) 
);

create table filme_genero(
idfilme int,
idgenero int
primary key (idfilme,idgenero),
foreign key (idfilme)references filme(id),
foreign key (idgenero) references genero(id)
);

create table funcionario(
id int,
nome varchar,
contratacao date,
salario float
Primary key (id)
);

create table funcao (
id int,
nome varchar
primary key (id)
);

create table funcionario_funcao(
funcionario int,
funcao int
primary key (funcionario,funcao),
foreign key (funcionario) references funcionario(id),
foreign key (funcao) references funcao(id)
);

create table exibicao(
id int,
filme int,
inicio time,
fim time,
sala int
primary key(id),
foreign key (filme)references filme(id),
foreign key (sala)references sala(id)
); 

create table funcionario_exibicao(
id_funcionario int,
id_exibicao int
primary key ( id_funcionario,id_exibicao)
foreign key (id_funcionario)references funcionario(id),
foreign key (id_exibicao)references exibicao(id)
);
