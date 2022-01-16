create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
	id bigint auto_increment,
    pizza_salgada_doce varchar (20) not null,
    contem_lactose boolean not null,
    contem_gluten enum ('S','N') not null,
    primary key (id)
);

insert into tb_categoria (pizza_salgada_doce, contem_lactose, contem_gluten) values ("Salgada",true, 'S');
insert into tb_categoria (pizza_salgada_doce, contem_lactose, contem_gluten) values ("Salgada", false, 'S');
insert into tb_categoria (pizza_salgada_doce, contem_lactose, contem_gluten) values ("Salgada",true, 'N');
insert into tb_categoria (pizza_salgada_doce, contem_lactose, contem_gluten) values ("Salgada",false, 'N');
insert into tb_categoria (pizza_salgada_doce, contem_lactose, contem_gluten) values ("Doce",true, 'S');
insert into tb_categoria (pizza_salgada_doce, contem_lactose, contem_gluten) values ("Doce", false, 'S');
insert into tb_categoria (pizza_salgada_doce, contem_lactose, contem_gluten) values ("Doce", true, 'N');
insert into tb_categoria (pizza_salgada_doce, contem_lactose, contem_gluten) values ("Doce", false, 'N');

create table tb_pizza(
	id bigint auto_increment,
    sabor_pizza varchar (20) not null,
    recheio_borda varchar (20) not null,
    massa_fina boolean not null,
    broto enum ('S','N') not null,
    grande enum ('S','N') not null,
    corte enum ('6','8'),
    preco decimal (5,2) not null,
    primary key (id),
    categoria_id bigint,
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza (sabor_pizza, recheio_borda, massa_fina, broto, grande, corte, preco, categoria_id) 
	value ("Baiana", "Cheddar", true, 'N', 'S', '8', 60.45, 1);
insert into tb_pizza (sabor_pizza, recheio_borda, massa_fina, broto, grande, corte, preco, categoria_id) 
	value ("Bróculis", "Sem recheio", true, 'N', 'S', '8', 70.80, 2);
insert into tb_pizza (sabor_pizza, recheio_borda, massa_fina, broto, grande, corte, preco, categoria_id) 
	value ("Frango com Catupiry", "Cheddar", false, 'S', 'N', '6', 35.00, 3);
insert into tb_pizza (sabor_pizza, recheio_borda, massa_fina, broto, grande, corte, preco, categoria_id) 
	value ("Calabresa", "Sem recheio", true, 'N', 'S', '8', 45.00, 4);
insert into tb_pizza (sabor_pizza, recheio_borda, massa_fina, broto, grande, corte, preco, categoria_id) 
	value ("MMs", "Chocolate", true, 'N', 'S', '8', 85.00, 5);
insert into tb_pizza (sabor_pizza, recheio_borda, massa_fina, broto, grande, corte, preco, categoria_id) 
	value ("Chocolate e Morango", "Geléia de Morango", true, 'N', 'S', '8', 65.45, 6);
insert into tb_pizza (sabor_pizza, recheio_borda, massa_fina, broto, grande, corte, preco, categoria_id) 
	value ("Pizza de Sorvete", "Sem Recheio", true, 'N', 'S', '8', 90.00, 7);
insert into tb_pizza (sabor_pizza, recheio_borda, massa_fina, broto, grande, corte, preco, categoria_id) 
	value ("Pizza Frutas Ver", "Geléia Frutas Ver", true, 'N', 'S', '8', 95.00, 8);

select*from db_pizzaria_legal.tb_categoria;

select*from db_pizzaria_legal.tb_pizza;

select*from db_pizzaria_legal.tb_pizza where preco > 45.00;

select*from db_pizzaria_legal.tb_pizza where preco between 29.00 and 60.00;

select*from db_pizzaria_legal.tb_pizza where sabor_pizza like "%C%";

select*from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select*from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where categoria_id < 5;

select*from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where categoria_id > 4;