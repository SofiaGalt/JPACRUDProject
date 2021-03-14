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
  `name` VARCHAR(100) NOT NULL,
  `url` VARCHAR(1000) NULL,
  `subject` VARCHAR(10000) NULL,
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
INSERT INTO `resource` (`id`, `name`, `url`, `subject`) VALUES (1, 'Skill Distillery', 'https://skilldistillery.com/', 'Java JavaScript SQL MYSQLWorkbench  Gradel Maven AngularJS Object-Oriented Programming OOP JSP Servlets Spring Spring MVC HTML CSS  RESTful web');
INSERT INTO `resource` (`id`, `name`, `url`, `subject`) VALUES (2, 'Codecademy', 'https://www.codecademy.com/', 'JavaScript');
INSERT INTO `resource` (`id`, `name`, `url`, `subject`) VALUES (3, 'Khan Academy', 'https://www.khanacademy.org/', 'Math  Science  Computing  JavaScript HTML CSS Computer Science  Arts  Humanities');
INSERT INTO `resource` (`id`, `name`, `url`, `subject`) VALUES (4, 'w3schools', 'https://www.w3schools.com/', 'HTML CSS JavaScript Web Building Python Java C++ C# R Bootstrap XML AI Machine Learning');
INSERT INTO `resource` (`id`, `name`, `url`, `subject`) VALUES (5, 'MDN Web Docs', 'https://developer.mozilla.org/en-US/', 'Java JavaScript HTML CSS');
INSERT INTO `resource` (`id`, `name`, `url`, `subject`) VALUES (6, 'Wikipedia', 'https://en.wikipedia.org/wiki/Main_Page', 'Math Science History Geography');
INSERT INTO `resource` (`id`, `name`, `url`, `subject`) VALUES (7, 'Computerphile on Youtube', 'https://www.youtube.com/channel/UC9-y-6csu5WGm29I7JiwpnA', 'Computer Science');
INSERT INTO `resource` (`id`, `name`, `url`, `subject`) VALUES (8, 'leetcode.com', 'https://leetcode.com/', 'Computer Science');
INSERT INTO `resource` (`id`, `name`, `url`, `subject`) VALUES (9, 'Duolingo', 'https://www.duolingo.com/', 'Spanish French German Italian Portuguese Dutch Japanese Arabic Czech Welsh Danish Greek Esperanto Finnish Irish Scottish Gaelic Hebrew Hindi Hungarians');
INSERT INTO `resource` (`id`, `name`, `url`, `subject`) VALUES (10, 'Merriam-Webster', 'https://www.merriam-webster.com/', 'English Dictionary');
INSERT INTO `resource` (`id`, `name`, `url`, `subject`) VALUES (11, 'Oracle Docs', 'https://docs.oracle.com/en/', 'Cloud Applications Cloud Infrastructure Java Database');
INSERT INTO `resource` (`id`, `name`, `url`, `subject`) VALUES (12, 'Amazon AWS EC2 Documentation', 'https://docs.aws.amazon.com/ec2/index.html?nc2=h_ql_doc_ec2', 'Amazon Elastic Compute Cloud Documentation EC2');

COMMIT;

