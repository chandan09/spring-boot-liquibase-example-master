--liquibase formatted sql

--changeset nvoxland:1
CREATE TABLE `inventory`.`test1` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  
--rollback drop table test1;   

--changeset nvoxland:2   
INSERT INTO `inventory`.`test1` (`id`, `name`) VALUES ('1', 'name1');
INSERT INTO `inventory`.`test1` (`id`, `name`) VALUES ('2', 'name2');
