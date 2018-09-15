-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE DATABASE "terraria_v1" ---------------------------
CREATE DATABASE IF NOT EXISTS `terraria_v1` CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `terraria_v1`;
-- ---------------------------------------------------------


-- CREATE TABLE "player" -----------------------------------
-- DROP TABLE "player" -----------------------------------------
DROP TABLE IF EXISTS `player` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "player" ---------------------------------------
CREATE TABLE `player` ( 
	`id_users` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`mac_add` Char( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`login` Char( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`date` Date NOT NULL,
	`password` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`status` Char( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`about` Char( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`date_ban` Char( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	CONSTRAINT `id_user` UNIQUE( `id_users` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "mode" -------------------------------------
-- DROP TABLE "mode" -------------------------------------------
DROP TABLE IF EXISTS `mode` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "mode" -----------------------------------------
CREATE TABLE `mode` ( 
	`id_mode` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`mode` Char( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	CONSTRAINT `unique_id_mode` UNIQUE( `id_mode` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "user_world" -------------------------------
-- DROP TABLE "user_world" -------------------------------------
DROP TABLE IF EXISTS `user_world` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "user_world" -----------------------------------
CREATE TABLE `user_world` ( 
	`id_us_world` Int( 255 ) NOT NULL,
	`id_user` Int( 255 ) NOT NULL,
	`id_world` Int( 255 ) NOT NULL,
	`id_mode` Int( 255 ) NOT NULL,
	CONSTRAINT `unique_id_world` UNIQUE( `id_us_world` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "user_item" --------------------------------
-- DROP TABLE "user_item" --------------------------------------
DROP TABLE IF EXISTS `user_item` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "user_item" ------------------------------------
CREATE TABLE `user_item` ( 
	`id_user_item` Int( 255 ) NOT NULL,
	`id_item` Int( 255 ) NOT NULL,
	`date_item` Date NOT NULL,
	`id_us_world` Date NOT NULL,
	CONSTRAINT `unique_id_user_item` UNIQUE( `id_user_item` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "boss" -------------------------------------
-- DROP TABLE "boss" -------------------------------------------
DROP TABLE IF EXISTS `boss` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "boss" -----------------------------------------
CREATE TABLE `boss` ( 
	`id_boss` Int( 255 ) NOT NULL,
	`damage` Int( 255 ) NOT NULL,
	`level` Int( 255 ) NOT NULL,
	`magic_trick` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`speed` Int( 255 ) NOT NULL,
	CONSTRAINT `unique_id_boss` UNIQUE( `id_boss` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "action" -----------------------------------
-- DROP TABLE "action" -----------------------------------------
DROP TABLE IF EXISTS `action` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "action" ---------------------------------------
CREATE TABLE `action` ( 
	`id_action` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`action_date` Date NOT NULL,
	`battle_result` Binary( 1 ) NOT NULL,
	`id_us_world` Int( 11 ) NOT NULL,
	`id_boss` Int( 255 ) NOT NULL,
	`id_item` Int( 255 ) NOT NULL,
	CONSTRAINT `unique_id_action` UNIQUE( `id_action` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "npc" --------------------------------------
-- DROP TABLE "npc" --------------------------------------------
DROP TABLE IF EXISTS `npc` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "npc" ------------------------------------------
CREATE TABLE `npc` ( 
	`id_npc` Int( 255 ) NOT NULL,
	`about` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`type` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	CONSTRAINT `unique_id_npc` UNIQUE( `id_npc` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "weapon" -----------------------------------
-- DROP TABLE "weapon" -----------------------------------------
DROP TABLE IF EXISTS `weapon` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "weapon" ---------------------------------------
CREATE TABLE `weapon` ( 
	`id_weapon` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`damage` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	CONSTRAINT `unique_id_weapon` UNIQUE( `id_weapon` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "world" ------------------------------------
-- DROP TABLE "world" ------------------------------------------
DROP TABLE IF EXISTS `world` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "world" ----------------------------------------
CREATE TABLE `world` ( 
	`id_world` Int( 255 ) NOT NULL,
	`name` Char( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`date_create` Date NOT NULL,
	`size` Char( 1 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`type_world` Char( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	CONSTRAINT `unique_id_world` UNIQUE( `id_world` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "cooperation" ------------------------------
-- DROP TABLE "cooperation" ------------------------------------
DROP TABLE IF EXISTS `cooperation` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "cooperation" ----------------------------------
CREATE TABLE `cooperation` ( 
	`id_cooperation` Int( 255 ) NOT NULL,
	`id_us_world` Int( 255 ) NOT NULL,
	`id_npc` Int( 255 ) NOT NULL,
	`id_item` Int( 255 ) NOT NULL,
	CONSTRAINT `unique_id_cooperation` UNIQUE( `id_cooperation` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "game_item" --------------------------------
-- DROP TABLE "game_item" --------------------------------------
DROP TABLE IF EXISTS `game_item` CASCADE;
-- -------------------------------------------------------------


-- CREATE TABLE "game_item" ------------------------------------
CREATE TABLE `game_item` ( 
	`id_item` Int( 255 ) NOT NULL,
	`about` Char( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`bonus` Char( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`name` Char( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`sprite` Char( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`type` Int( 255 ) NOT NULL,
	`id_weapon` Int( 255 ) NOT NULL,
	CONSTRAINT `unique_id_item` UNIQUE( `id_item` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "player" -----------------------------------
INSERT INTO `player`(`id_users`,`mac_add`,`login`,`date`,`password`,`status`,`about`,`date_ban`) VALUES ( '1', '00:0a:95:9d:68:16', 'putin', '2018-09-20', 'abc', 'hardcore', 'Good guy', NULL );
INSERT INTO `player`(`id_users`,`mac_add`,`login`,`date`,`password`,`status`,`about`,`date_ban`) VALUES ( '2', '00:0a:95:9d:68:12', 'trump', '2018-09-18', 'trump!', 'normal', 'Dog', NULL );
INSERT INTO `player`(`id_users`,`mac_add`,`login`,`date`,`password`,`status`,`about`,`date_ban`) VALUES ( '3', '00:0a:95:9d:68:12', 'valia', '2018-08-14', 'dell', 'normal', NULL, NULL );
INSERT INTO `player`(`id_users`,`mac_add`,`login`,`date`,`password`,`status`,`about`,`date_ban`) VALUES ( '4', '00:0a:95:9d:68:23', 'conn', '2018-09-28', 'racoon', 'normal', NULL, NULL );
INSERT INTO `player`(`id_users`,`mac_add`,`login`,`date`,`password`,`status`,`about`,`date_ban`) VALUES ( '5', '00:0a:95:9d:88:12', 'till', '2018-09-18', 'lindeman', 'normal', NULL, NULL );
INSERT INTO `player`(`id_users`,`mac_add`,`login`,`date`,`password`,`status`,`about`,`date_ban`) VALUES ( '6', '00:0a:95:93:88:12', 'Red', '2018-04-14', 'bull', 'normal', NULL, NULL );
-- ---------------------------------------------------------


-- Dump data of "mode" -------------------------------------
-- ---------------------------------------------------------


-- Dump data of "user_world" -------------------------------
-- ---------------------------------------------------------


-- Dump data of "user_item" --------------------------------
-- ---------------------------------------------------------


-- Dump data of "boss" -------------------------------------
INSERT INTO `boss`(`id_boss`,`damage`,`level`,`magic_trick`,`speed`,`name`) VALUES ( '1', '20', '1', 'none', '4', 'King Slime' );
INSERT INTO `boss`(`id_boss`,`damage`,`level`,`magic_trick`,`speed`,`name`) VALUES ( '2', '30', '2', 'none', '5', 'Eye of Cthulhu' );
INSERT INTO `boss`(`id_boss`,`damage`,`level`,`magic_trick`,`speed`,`name`) VALUES ( '3', '30', '3', 'none', '8', 'Eater of Worlds' );
INSERT INTO `boss`(`id_boss`,`damage`,`level`,`magic_trick`,`speed`,`name`) VALUES ( '4', '40', '3', 'FireBoll', '5', 'Brain of Cthulhu' );
INSERT INTO `boss`(`id_boss`,`damage`,`level`,`magic_trick`,`speed`,`name`) VALUES ( '5', '50', '4', 'Hypnosis', '10', 'Queen Bee' );
-- ---------------------------------------------------------


-- Dump data of "action" -----------------------------------
-- ---------------------------------------------------------


-- Dump data of "npc" --------------------------------------
-- ---------------------------------------------------------


-- Dump data of "weapon" -----------------------------------
-- ---------------------------------------------------------


-- Dump data of "world" ------------------------------------
-- ---------------------------------------------------------


-- Dump data of "cooperation" ------------------------------
-- ---------------------------------------------------------


-- Dump data of "game_item" --------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


