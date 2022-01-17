CRIAR TABELA `tb_temas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`descriçao` varchar(255) NOT NULL,
	CHAVE PRIMÁRIA (`id`)
);

CREATE TABLE `tb_postagens` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`titulo` varchar(100) NOT NULL AUTO_INCREMENT,
	`texto` varchar(1000) NOT NULL AUTO_INCREMENT,
	`data` DATA NÃO NULA,
	`temas_id` bigint NOT NULL,
	`usuarios_id` bigint NOT NULL,
	CHAVE PRIMÁRIA (`id`)
);

CRIAR TABELA `tb_usuários` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NÃO NULO,
	`usuario` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	`foto` varchar(255),
	CHAVE PRIMÁRIA (`id`)
);

ALTER TABLE `tb_postagens` ADD CONSTRAINT `tb_postagens_fk0` FOREIGN KEY (`temas_id`) REFERÊNCIAS `tb_temas`(`id`);

ALTER TABLE `tb_postagens` ADD CONSTRAINT `tb_postagens_fk1` FOREIGN KEY (`usuarios_id`) REFERÊNCIAS `tb_usuarios`(`id`);




