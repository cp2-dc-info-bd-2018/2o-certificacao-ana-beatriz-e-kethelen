use cinema;

create table cliente (
id int,
nome char
primary key (id)
);

create table ingresso(
id int
primary key (id)
);

create table genero(
id int,
nome varchar
primary key (id)
);

create table diretor(
id int,
nome varchar
primary key (id)
);

create table sala(
id int,
capacidade int
primary key (id)
);

create table horario(
id int,
horario time
primary key (id)
);

create table filme(
id int,
nome varchar,
lancamento date,
diretor int,
genero int
primary key (id),
foreign key (diretor)references diretor(id),
foreign key (genero ) references genero(id)
); 

create table exibicao(
filme int,
horario int,
sala int
primary key (filme,horario,sala)
foreign key (filme) references filme(id),
foreign key (horario) references horario (id),
foreign key (sala) references sala(id)
);

create table funcionario(
id int,
nome varchar,
contratacao date,
salario date
primary key (id)
);

create table funcao(
id int,
nome varchar
primary key (id)
);

create table horario_trabalho_funcao(
funcionario int,
horario int,
funcao int
primary key (funcionario,horario,funcao),
foreign key (funcionario) references funcionario(id),
foreign key (horario) references horario(id),
foreign key (funcao) references funcao(id)
);
