create database db_escola;

use db_escola;

create table tb_alunes(
	id bigint(8) auto_increment,
    nome varchar(20) not null,
    ra bigint (20) not null,
    turma int(2) not null,
    idade int (2) not null,
    media_nota decimal (4,2) not null,
    
    primary key (id)
);

insert into tb_alunes (nome, ra, turma, idade, media_nota) values ("Gustavo Mendes", 111111, 43, 18, 5.5);
insert into tb_alunes (nome, ra, turma, idade, media_nota) values ("Sarah Furtado", 222222, 43, 17, 8.5);
insert into tb_alunes (nome, ra, turma, idade, media_nota) values ("João Almeida", 333333, 43, 17, 7.5);
insert into tb_alunes (nome, ra, turma, idade, media_nota) values ("Mário Júnior", 444444, 43, 17, 6.0);
insert into tb_alunes (nome, ra, turma, idade, media_nota) values ("Beatriz Carvalho", 555555, 43, 23, 8.0);
insert into tb_alunes (nome, ra, turma, idade, media_nota) values ("Victor Lírio", 666666, 43, 21, 7.5);
insert into tb_alunes (nome, ra, turma, idade, media_nota) values ("Marco Mengoni", 777777, 43, 25, 10.0);
insert into tb_alunes (nome, ra, turma, idade, media_nota) values ("Cátia Fernanda", 888888, 43, 45, 9.0);

select*from tb_alunes;

select*from tb_alunes where media_nota > 7;

select*from tb_alunes where media_nota < 7;

select*from tb_alunes;

update tb_alunes set media_nota= 4.5 where id = 7;

select*from tb_alunes;