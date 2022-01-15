create database db_rh;

use db_rh;

create table tb_funcionarios(
	id bigint(5) auto_increment,
    nome varchar(20) not null,
    ativo boolean,
    data_adm date not null,
    num_matr bigint(100) not null,
    funcao varchar(100) not null,
    salario decimal(10,2) not null,
    primary key (id)
); 

INSERT INTO tb_funcionarios (nome, ativo,data_adm, num_matr, funcao, salario) VALUES ("Maria", true, '2020-08-10', 56999, "Auxiliar Administrativo", 1400.00);
INSERT INTO tb_funcionarios (nome, ativo,data_adm, num_matr, funcao, salario) VALUES ("Mário", true, '2017-05-25',56956, "Teecnico de Manutenção Predial", 2052.00);
INSERT INTO tb_funcionarios (nome, ativo,data_adm, num_matr, funcao, salario) VALUES ("Victor", true, '2021-09-05', 57250, "Técnico de Segurança do Trabalho", 2981.00);
INSERT INTO tb_funcionarios (nome, ativo,data_adm, num_matr, funcao, salario) VALUES ("João", true, '2019-07-15',56980, "Analista de Sistemas", 5000.00);
INSERT INTO tb_funcionarios (nome, ativo,data_adm, num_matr, funcao, salario) VALUES ("Sarah", true, '2018-06-20',56965, "Gerente de Projetos", 9026.00);

SELECT * FROM tb_funcionarios;

select*from tb_funcionarios where salario > 2000.00;
select*from tb_funcionarios where salario < 2000.00;

select*from tb_funcionarios;