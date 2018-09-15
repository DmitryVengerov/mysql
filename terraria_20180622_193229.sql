-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE DATABASE "terraria" ------------------------------
CREATE DATABASE IF NOT EXISTS `terraria` CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `terraria`;
-- ---------------------------------------------------------


-- CREATE TABLE "ban_list" ---------------------------------
-- CREATE TABLE "ban_list" -------------------------------------
CREATE TABLE `ban_list` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`id_user` Int( 255 ) NOT NULL,
	`about` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "boss" -------------------------------------
-- CREATE TABLE "boss" -----------------------------------------
CREATE TABLE `boss` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`damage` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`level` Int( 255 ) NOT NULL,
	`item` JSON NOT NULL,
	`magic_trick` JSON NOT NULL,
	`speed` Int( 11 ) NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 9;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "game_item" --------------------------------
-- CREATE TABLE "game_item" ------------------------------------
CREATE TABLE `game_item` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`sprite` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`about` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`type` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`bonus` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 11;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "mode" -------------------------------------
-- CREATE TABLE "mode" -----------------------------------------
CREATE TABLE `mode` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "npc" --------------------------------------
-- CREATE TABLE "npc" ------------------------------------------
CREATE TABLE `npc` ( 
	`id` Int( 255 ) NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`id_world` Int( 255 ) NOT NULL,
	`about` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`type` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`loot` JSON NOT NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "player" -----------------------------------
-- CREATE TABLE "player" ---------------------------------------
CREATE TABLE `player` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`login` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`password` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`mac_add` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`date` Timestamp NOT NULL DEFAULT '2003-06-20 18:00:00',
	`status` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ),
	CONSTRAINT `unique_login` UNIQUE( `login` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 6;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "seed" -------------------------------------
-- CREATE TABLE "seed" -----------------------------------------
CREATE TABLE `seed` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`body` Int( 255 ) NOT NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 6;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "user_item" --------------------------------
-- CREATE TABLE "user_item" ------------------------------------
CREATE TABLE `user_item` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`id_user` Int( 255 ) NOT NULL,
	`id_item` Int( 255 ) NOT NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 16;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "user_status" ------------------------------
-- CREATE TABLE "user_status" ----------------------------------
CREATE TABLE `user_status` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`id_user` Int( 255 ) NOT NULL,
	`id_mode` Int( 255 ) NOT NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 6;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "user_world" -------------------------------
-- CREATE TABLE "user_world" -----------------------------------
CREATE TABLE `user_world` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`id_user` Int( 255 ) NOT NULL,
	`id_world` Int( 255 ) NOT NULL,
	`id_boss` Int( 255 ) NOT NULL,
	`id_npc` Int( 255 ) NOT NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 6;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "world" ------------------------------------
-- CREATE TABLE "world" ----------------------------------------
CREATE TABLE `world` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`id_seed` Int( 255 ) NOT NULL,
	`type_world` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`date` Date NOT NULL,
	`size` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 10;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "ban_list" ---------------------------------
INSERT INTO `ban_list`(`id`,`id_user`,`about`) VALUES ( '1', '1', 'pirate' );
INSERT INTO `ban_list`(`id`,`id_user`,`about`) VALUES ( '2', '2', 'pirate' );
-- ---------------------------------------------------------


-- Dump data of "boss" -------------------------------------
INSERT INTO `boss`(`id`,`damage`,`level`,`item`,`magic_trick`,`speed`,`name`) VALUES ( '1', '4', '1', 'null', 'null', '3', 'rabbit' );
INSERT INTO `boss`(`id`,`damage`,`level`,`item`,`magic_trick`,`speed`,`name`) VALUES ( '2', '5', '2', 'null', 'null', '2', 'stelet' );
INSERT INTO `boss`(`id`,`damage`,`level`,`item`,`magic_trick`,`speed`,`name`) VALUES ( '3', '5', '3', '{"item": "row"}', 'null', '2', 'Skeleton Archer
' );
INSERT INTO `boss`(`id`,`damage`,`level`,`item`,`magic_trick`,`speed`,`name`) VALUES ( '4', '5', '2', '{"item": "map"}', 'null', '4', 'Giant bat' );
INSERT INTO `boss`(`id`,`damage`,`level`,`item`,`magic_trick`,`speed`,`name`) VALUES ( '5', '2', '3', '{"item": ["Bomb", "coin", "lamp"]}', 'null', '2', 'Undead Miner' );
INSERT INTO `boss`(`id`,`damage`,`level`,`item`,`magic_trick`,`speed`,`name`) VALUES ( '6', '2', '1', '{"item": "coin"}', 'null', '2', 'Cochineal Beetle' );
INSERT INTO `boss`(`id`,`damage`,`level`,`item`,`magic_trick`,`speed`,`name`) VALUES ( '7', '2', '1', '{"item": "coin"}', 'null', '2', 'Piranha' );
INSERT INTO `boss`(`id`,`damage`,`level`,`item`,`magic_trick`,`speed`,`name`) VALUES ( '8', '1', '3', '{"item": "Metal Detector"}', 'null', '3', 'Lost Girl' );
-- ---------------------------------------------------------


-- Dump data of "game_item" --------------------------------
INSERT INTO `game_item`(`id`,`sprite`,`about`,`type`,`bonus`,`name`) VALUES ( '1', '/pic/1.png', 'Основная валюта игры', 'money', 'null', 'Сoin' );
INSERT INTO `game_item`(`id`,`sprite`,`about`,`type`,`bonus`,`name`) VALUES ( '2', '/pic/2.png', 'Аксессуар, добавленный в обновлении 1.3. ', 'accessoires', 'null', 'Metal Detector' );
INSERT INTO `game_item`(`id`,`sprite`,`about`,`type`,`bonus`,`name`) VALUES ( '3', '/pic/3.png', 'Аксессуар, добавленный в обновлении 1.3. Можно купить у Странствующего Торговца. Отображает количество урона в секунду, наносимого вашим оружием. Работает, находясь в инвентаре.', 'accessoires', 'null', 'DPS Meter' );
INSERT INTO `game_item`(`id`,`sprite`,`about`,`type`,`bonus`,`name`) VALUES ( '4', '/pic/4.png', 'Аксессуар, добавленный в обновлении 1.3. Отображает вашу скорость передвижения под миникартой. Можно купить у Странствующего Торговца.', 'accessoires', 'null', 'Stopwatch' );
INSERT INTO `game_item`(`id`,`sprite`,`about`,`type`,`bonus`,`name`) VALUES ( '5', '/pic/5.png', 'Его можно выбить во время кровавой луны с любого врага в режиме хардмода с шансом — 0,1 %. Действует как кулак Голема, но с меньшей скоростью атаки и длиной цепи', 'weapon', 'Auto Attack', 'KO Cannon' );
INSERT INTO `game_item`(`id`,`sprite`,`about`,`type`,`bonus`,`name`) VALUES ( '6', '/pic/5.png', 'Меч, добавленный в версии 1.2.4. Является подвидом деревянного меча. По характеристикам равен мечу из махагони.', 'weapon', 'Damage X2', 'Palm Wood Sword' );
INSERT INTO `game_item`(`id`,`sprite`,`about`,`type`,`bonus`,`name`) VALUES ( '7', '/pic/6.png', 'Cамый слабый лук, но самый лучший вариант для новичков, так как его можно сделать на верстаке из доступных материалов. Наносит больший урон, чем деревянный меч (если учесть со стрелами).', 'weapon', 'null', 'Wooden Bow' );
INSERT INTO `game_item`(`id`,`sprite`,`about`,`type`,`bonus`,`name`) VALUES ( '8', '/pic/7.png', 'Взрывающееся метательное оружие, которое можно купить у подрывника или скелета-торговца, либо добыть из горшка, мёртвого шахтёра, статуи бомбы и сундука.', 'weapon', 'Boom!', 'Bomb' );
INSERT INTO `game_item`(`id`,`sprite`,`about`,`type`,`bonus`,`name`) VALUES ( '9', '/pic/8.png', 'Предмет еще не добавлен в игру', 'accessoires', 'null', 'Map' );
INSERT INTO `game_item`(`id`,`sprite`,`about`,`type`,`bonus`,`name`) VALUES ( '10', '/pic/9.png', 'Дает светло', 'accessoires', 'Можно поставить', 'lamp' );
-- ---------------------------------------------------------


-- Dump data of "mode" -------------------------------------
INSERT INTO `mode`(`id`,`name`) VALUES ( '1', 'Normal' );
INSERT INTO `mode`(`id`,`name`) VALUES ( '2', 'Hardmode' );
INSERT INTO `mode`(`id`,`name`) VALUES ( '3', 'Creative' );
-- ---------------------------------------------------------


-- Dump data of "npc" --------------------------------------
INSERT INTO `npc`(`id`,`name`,`id_world`,`about`,`type`,`loot`) VALUES ( '1', 'Guide', '1', 'Гид (Guide) — это самый первый НИП, которого встретит игрок после создания новой карты. ', 'human', '{"item": [7]}' );
INSERT INTO `npc`(`id`,`name`,`id_world`,`about`,`type`,`loot`) VALUES ( '2', 'Goblin Tinkerer', '1', 'Гоблин-инженер (Goblin Tinkerer) — дружественный НИП, добавленный в версии 1.1. Он продаёт вам различные изобретения гоблинов.', 'goblin', '{"item": [4, 2]}' );
INSERT INTO `npc`(`id`,`name`,`id_world`,`about`,`type`,`loot`) VALUES ( '3', 'Cyborg', '2', 'Киборг (Cyborg) — НИП, добавленный в обновлении 1.2. Появляется, только если вы убили Плантеру. ', 'robot', '{"item": [2, 3]}' );
-- ---------------------------------------------------------


-- Dump data of "player" -----------------------------------
INSERT INTO `player`(`id`,`login`,`password`,`mac_add`,`date`,`status`) VALUES ( '1', 'putIN', 'password', '00:25:96:FF:FE:12:34:56', '2018-04-02 00:00:00', 'pirate' );
INSERT INTO `player`(`id`,`login`,`password`,`mac_add`,`date`,`status`) VALUES ( '2', 'piter', 'passsord', '00:25:96:FF:FE:12:24:56', '2018-04-02 16:00:00', 'pirate' );
INSERT INTO `player`(`id`,`login`,`password`,`mac_add`,`date`,`status`) VALUES ( '3', 'grifon', 'qwerty', '00:54:96:FF:FE:12:24:56', '2018-04-02 16:30:00', 'pirate' );
INSERT INTO `player`(`id`,`login`,`password`,`mac_add`,`date`,`status`) VALUES ( '4', 'eric', 'nuuuuuullll1', '00:25:96:EF:FE:12:24:56', '2018-03-02 16:30:00', 'license' );
INSERT INTO `player`(`id`,`login`,`password`,`mac_add`,`date`,`status`) VALUES ( '5', 'bane', 'whysoserius?', '00:25:92:EF:FE:14:24:56', '2018-03-02 16:30:00', 'pirate' );
-- ---------------------------------------------------------


-- Dump data of "seed" -------------------------------------
INSERT INTO `seed`(`id`,`body`) VALUES ( '1', '499183022' );
INSERT INTO `seed`(`id`,`body`) VALUES ( '2', '499183023' );
INSERT INTO `seed`(`id`,`body`) VALUES ( '3', '499183026' );
INSERT INTO `seed`(`id`,`body`) VALUES ( '4', '440183022' );
INSERT INTO `seed`(`id`,`body`) VALUES ( '5', '499583022' );
-- ---------------------------------------------------------


-- Dump data of "user_item" --------------------------------
INSERT INTO `user_item`(`id`,`id_user`,`id_item`) VALUES ( '1', '1', '1' );
INSERT INTO `user_item`(`id`,`id_user`,`id_item`) VALUES ( '2', '1', '1' );
INSERT INTO `user_item`(`id`,`id_user`,`id_item`) VALUES ( '3', '1', '1' );
INSERT INTO `user_item`(`id`,`id_user`,`id_item`) VALUES ( '4', '1', '1' );
INSERT INTO `user_item`(`id`,`id_user`,`id_item`) VALUES ( '5', '1', '1' );
INSERT INTO `user_item`(`id`,`id_user`,`id_item`) VALUES ( '6', '1', '1' );
INSERT INTO `user_item`(`id`,`id_user`,`id_item`) VALUES ( '7', '1', '1' );
INSERT INTO `user_item`(`id`,`id_user`,`id_item`) VALUES ( '8', '1', '1' );
INSERT INTO `user_item`(`id`,`id_user`,`id_item`) VALUES ( '9', '1', '1' );
INSERT INTO `user_item`(`id`,`id_user`,`id_item`) VALUES ( '10', '1', '1' );
INSERT INTO `user_item`(`id`,`id_user`,`id_item`) VALUES ( '11', '1', '2' );
INSERT INTO `user_item`(`id`,`id_user`,`id_item`) VALUES ( '12', '3', '2' );
INSERT INTO `user_item`(`id`,`id_user`,`id_item`) VALUES ( '13', '4', '2' );
INSERT INTO `user_item`(`id`,`id_user`,`id_item`) VALUES ( '14', '5', '2' );
INSERT INTO `user_item`(`id`,`id_user`,`id_item`) VALUES ( '15', '5', '2' );
-- ---------------------------------------------------------


-- Dump data of "user_status" ------------------------------
INSERT INTO `user_status`(`id`,`id_user`,`id_mode`) VALUES ( '1', '1', '1' );
INSERT INTO `user_status`(`id`,`id_user`,`id_mode`) VALUES ( '2', '2', '1' );
INSERT INTO `user_status`(`id`,`id_user`,`id_mode`) VALUES ( '3', '3', '2' );
INSERT INTO `user_status`(`id`,`id_user`,`id_mode`) VALUES ( '4', '4', '1' );
INSERT INTO `user_status`(`id`,`id_user`,`id_mode`) VALUES ( '5', '5', '3' );
-- ---------------------------------------------------------


-- Dump data of "user_world" -------------------------------
INSERT INTO `user_world`(`id`,`id_user`,`id_world`,`id_boss`,`id_npc`) VALUES ( '1', '3', '3', '3', '3' );
INSERT INTO `user_world`(`id`,`id_user`,`id_world`,`id_boss`,`id_npc`) VALUES ( '2', '2', '1', '5', '1' );
INSERT INTO `user_world`(`id`,`id_user`,`id_world`,`id_boss`,`id_npc`) VALUES ( '3', '1', '3', '3', '3' );
INSERT INTO `user_world`(`id`,`id_user`,`id_world`,`id_boss`,`id_npc`) VALUES ( '4', '2', '2', '8', '3' );
INSERT INTO `user_world`(`id`,`id_user`,`id_world`,`id_boss`,`id_npc`) VALUES ( '5', '3', '3', '8', '1' );
-- ---------------------------------------------------------


-- Dump data of "world" ------------------------------------
INSERT INTO `world`(`id`,`id_seed`,`type_world`,`name`,`date`,`size`) VALUES ( '1', '2', 'jungle', 'Test0', '2018-04-02', 'large' );
INSERT INTO `world`(`id`,`id_seed`,`type_world`,`name`,`date`,`size`) VALUES ( '2', '2', 'jungle', 'Test1', '2018-04-02', 'small' );
INSERT INTO `world`(`id`,`id_seed`,`type_world`,`name`,`date`,`size`) VALUES ( '3', '2', 'jungle', 'Test2', '2018-04-02', 'normal' );
INSERT INTO `world`(`id`,`id_seed`,`type_world`,`name`,`date`,`size`) VALUES ( '4', '1', 'desert', 'Test01', '2018-04-02', 'small' );
INSERT INTO `world`(`id`,`id_seed`,`type_world`,`name`,`date`,`size`) VALUES ( '5', '1', 'desert', 'Test02', '2018-04-02', 'normal' );
INSERT INTO `world`(`id`,`id_seed`,`type_world`,`name`,`date`,`size`) VALUES ( '6', '1', 'desert', 'Test03', '2018-04-02', 'large' );
INSERT INTO `world`(`id`,`id_seed`,`type_world`,`name`,`date`,`size`) VALUES ( '7', '3', 'tundra', 'Test11', '2018-04-02', 'small' );
INSERT INTO `world`(`id`,`id_seed`,`type_world`,`name`,`date`,`size`) VALUES ( '8', '3', 'tundra', 'Test12', '2018-04-02', 'normal' );
INSERT INTO `world`(`id`,`id_seed`,`type_world`,`name`,`date`,`size`) VALUES ( '9', '3', 'tundra', 'Test13', '2018-04-02', 'large' );
-- ---------------------------------------------------------


-- CREATE INDEX "lnk_boss_user_world" ----------------------
-- CREATE INDEX "lnk_boss_user_world" --------------------------
CREATE INDEX `lnk_boss_user_world` USING BTREE ON `user_world`( `id_boss` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "lnk_boss_user_world" -----------------------
-- CREATE LINK "lnk_boss_user_world" ---------------------------
ALTER TABLE `user_world`
	ADD CONSTRAINT `lnk_boss_user_world` FOREIGN KEY ( `id_boss` )
	REFERENCES `boss`( `id` )
	ON DELETE Cascade
	ON UPDATE Cascade;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


