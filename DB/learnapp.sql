-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema learnapp
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `learnapp` ;

-- -----------------------------------------------------
-- Schema learnapp
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `learnapp` DEFAULT CHARACTER SET utf8 ;
USE `learnapp` ;

-- -----------------------------------------------------
-- Table `resource`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `resource` ;

CREATE TABLE IF NOT EXISTS `resource` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  `url` VARCHAR(1000) NULL,
  `image_url` VARCHAR(1000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS learnappuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'learnappuser'@'localhost' IDENTIFIED BY 'learnappuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'learnappuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `resource`
-- -----------------------------------------------------
START TRANSACTION;
USE `learnapp`;
INSERT INTO `resource` (`id`, `name`, `url`, `image_url`) VALUES (1, 'Khan Academy', NULL, NULL);

COMMIT;

