create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
	id bigint(8) auto_increment,
    nome_p varchar(20) not null,
    ativo boolean not null,
    codigo bigint(100) not null,
    data_f_p date not null,
    preco decimal (10,2) not null,
    estoque_p bigint(100) not null,
    primary key (id)
);

insert into tb_produtos (nome_p, ativo, codigo,data_f_p, preco, estoque_p) values ("Vestido_Bordô", true, 1245, '2021-01-01', 350.00, 60);
insert into tb_produtos (nome_p, ativo, codigo,data_f_p, preco, estoque_p) values ("Vestido_Galaxy", true, 1246, '2021-02-01', 430.00, 80);
insert into tb_produtos (nome_p, ativo, codigo,data_f_p, preco, estoque_p) values ("Vestido_Cherry", true, 1247, '2021-03-01', 580.00, 45);
insert into tb_produtos (nome_p, ativo, codigo,data_f_p, preco, estoque_p) values ("Vestido_Sereia_Malha", true, 1248, '2021-04-01', 150.00, 120);
insert into tb_produtos (nome_p, ativo, codigo,data_f_p, preco, estoque_p) values ("Vestido_Ceda", true, 1249, '2021-05-01', 768.00, 15);
insert into tb_produtos (nome_p, ativo, codigo,data_f_p, preco, estoque_p) values ("Vestido_Linho", true, 1250, '2021-06-01', 990.00, 10);
insert into tb_produtos (nome_p, ativo, codigo,data_f_p, preco, estoque_p) values ("Vestido_Festa", true, 1251, '2021-07-01', 1800.00, 8);
insert into tb_produtos (nome_p, ativo, codigo,data_f_p, preco, estoque_p) values ("VestidoNoivaSereia", true, 1252, '2021-08-01', 3500.00, 6);
insert into tb_produtos (nome_p, ativo, codigo,data_f_p, preco, estoque_p) values ("VestidoNoivaPricesa", true, 1253, '2021-09-01', 6800.00, 3);

select*from tb_produtos;

select*from tb_produtos where preco < 500.00;

select*from tb_produtos where preco > 500.00;

update tb_produtos set estoque_p = 79 where id = 2;

select*from tb_produtos;

update tb_produtos set preco = 1000.00 where id = 6;

select*from tb_produtos;
