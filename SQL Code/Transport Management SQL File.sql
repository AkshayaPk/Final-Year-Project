/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.10 : Database - jeppiaartransport
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jeppiaartransport` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jeppiaartransport`;

/*Table structure for table `admin_login` */

DROP TABLE IF EXISTS `admin_login`;

CREATE TABLE `admin_login` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(200) NOT NULL,
  `PASSWORD` varchar(200) NOT NULL,
  `EMAILID` varchar(200) NOT NULL,
  `PHONE` bigint(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `admin_login` */

insert  into `admin_login`(`ID`,`USERNAME`,`PASSWORD`,`EMAILID`,`PHONE`) values (1,'Ajay','demo','ashpeekay23@gmail.com',8056284108);

/*Table structure for table `points` */

DROP TABLE IF EXISTS `points`;

CREATE TABLE `points` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `student_count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `points` */

insert  into `points`(`id`,`name`,`lat`,`lon`,`student_count`) values (1,'Forum Mall',13.048481,80.207479,10),(2,'Tidel Park',12.989251,80.2497045,2),(3,'GRT SCHOOL',13.039011,80.216487,3),(4,'Phoenix Mall',12.991303,80.21662,4),(5,'PVR AMPA SKYWALK',13.07359,80.221378,0),(6,'PVR Grand Mall',12.971952,80.220363,4),(7,'Jeppiaar Engineering College',12.868647,80.22109,0);

/*Table structure for table `route_details` */

DROP TABLE IF EXISTS `route_details`;

CREATE TABLE `route_details` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ROUTE_ID` bigint(20) NOT NULL,
  `IP_1` varchar(500) NOT NULL,
  `IP_2` varchar(500) NOT NULL,
  `IP_3` varchar(500) NOT NULL,
  `IP_4` varchar(500) NOT NULL,
  `IP_5` varchar(500) NOT NULL,
  `IP_6` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_route_id` (`ROUTE_ID`),
  CONSTRAINT `fk_route_id` FOREIGN KEY (`ROUTE_ID`) REFERENCES `seed_route_details` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `route_details` */

insert  into `route_details`(`ID`,`ROUTE_ID`,`IP_1`,`IP_2`,`IP_3`,`IP_4`,`IP_5`,`IP_6`) values (4,4,'a','b','c','d','e','f'),(5,5,'AMBEDKAR NAGAR','SENTHIL NAGAR','ICF','NOOR HOTEL','ESI HOSPITAL','PURASAIVAKKAM'),(6,6,'MANGADU','KUNDRATHUR','PAMMAL','NATESAN THEATRE','PONDI BAZAAR','COLLEGE CAMPUS'),(8,9,'PERUNGALATHUR ESTATE','TAMBARAM GATE','MEDAVAKKAM KUTTU ROAD','MEDAVAKKAM ATM','IRUMPULIYUR','COLLEGE CAMPUS'),(10,10,'KUMARAN THEATRE','RELIANCE','PALLAVAMRAM BYPASS','VIRUTHUNAGAR','PALLIKARANAI KULAM','JELLADAMPETTAI'),(11,11,'a','b','c','d','e','f');

/*Table structure for table `route_intermediary_points` */

DROP TABLE IF EXISTS `route_intermediary_points`;

CREATE TABLE `route_intermediary_points` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IP_NAME` varchar(500) NOT NULL,
  `IP_CODE` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `route_intermediary_points` */

/*Table structure for table `seed_route` */

DROP TABLE IF EXISTS `seed_route`;

CREATE TABLE `seed_route` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ROUTE_NAME` varchar(500) NOT NULL,
  `START_POINT` varchar(500) NOT NULL DEFAULT 'JEPPIAAR COLLEGE',
  `END_POINT` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `seed_route` */

insert  into `seed_route`(`ID`,`ROUTE_NAME`,`START_POINT`,`END_POINT`) values (4,'MOGAPPAIR','JEPPIAAR COLLEGE','MOGAPPAIR'),(5,'VILLIVAKKAM','JEPPIAAR COLLEGE','VILLIVAKKAM'),(6,'MANGADU','JEPPIAAR COLLEGE','MANGADU'),(8,'PERUNGALATHUR','JEPPIAAR COLLEGE','PERUNGALATHUR'),(9,'JAYALAKSHMI THEATRE','JEPPIAAR COLLEGE','JAYALAKSHMI THEATRE'),(10,'MADURAVAYIL','JEPPIAAR COLLEGE','MADURAVAYIL'),(11,'ANNA NAGAR','JEPPIAAR COLLEGE','ANNA NAGAR');

/*Table structure for table `seed_route_details` */

DROP TABLE IF EXISTS `seed_route_details`;

CREATE TABLE `seed_route_details` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ROUTE_ID` bigint(20) NOT NULL,
  `ROUTE_BUS_NO` bigint(20) NOT NULL,
  `DEPARTURE_DATE` date NOT NULL,
  `DEPARTURE_TIME` time NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_route` (`ROUTE_ID`),
  CONSTRAINT `fk_route` FOREIGN KEY (`ROUTE_ID`) REFERENCES `seed_route` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `seed_route_details` */

insert  into `seed_route_details`(`ID`,`ROUTE_ID`,`ROUTE_BUS_NO`,`DEPARTURE_DATE`,`DEPARTURE_TIME`) values (4,4,18,'2017-03-16','15:00:00'),(5,5,5,'2017-03-16','15:00:00'),(6,6,6,'2017-03-16','15:00:00'),(8,8,8,'2017-03-16','15:00:00'),(9,9,9,'2017-03-16','15:00:00'),(10,10,10,'2017-03-16','15:00:00'),(11,11,26,'2017-03-16','15:00:00');

/* Function  structure for function  `FN_IS_VALID_LOGIN` */

/*!50003 DROP FUNCTION IF EXISTS `FN_IS_VALID_LOGIN` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `FN_IS_VALID_LOGIN`(i_username varchar(100) , i_password varchar(100)) RETURNS tinyint(1)
BEGIN
            if exists(select username,password from admin_login where username=i_username and password=i_password) then
            return true ;
            else
            return false;
            end if;
            
    END */$$
DELIMITER ;

/* Procedure structure for procedure `PR_ADD_ROUTE` */

/*!50003 DROP PROCEDURE IF EXISTS  `PR_ADD_ROUTE` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `PR_ADD_ROUTE`(in i_routename varchar(100) , in i_endpoint varchar(100) , in i_busno int(50) ,in i_depdate date,in i_deptime time ,
    in i_ip1 varchar(100),IN i_ip2 VARCHAR(100),IN i_ip3 VARCHAR(100),IN i_ip4 VARCHAR(100),IN i_ip5 VARCHAR(100),IN i_ip6 VARCHAR(100),out errmsg varchar(100))
BEGIN
          declare routeid int;
          declare routedetailsid int;
IF NOT EXISTS(SELECT ROUTE_BUS_NO FROM `seed_route_details` WHERE ROUTE_BUS_NO=i_busno and DEPARTURE_TIME=i_deptime) THEN         
          INSERT INTO seed_route(ROUTE_NAME,END_POINT) VALUES(i_routename,i_endpoint);
          select `seed_route`.`ID` into routeid from `seed_route` where ROUTE_NAME=i_routename;
          
          INSERT INTO seed_route_details(ROUTE_ID,`ROUTE_BUS_NO`,`DEPARTURE_DATE`,`DEPARTURE_TIME`) VALUES(routeid,i_busno,i_depdate,i_deptime);
          
          select `seed_route_details`.`ID` into routedetailsid from `seed_route_details` where ROUTE_ID=routeid;
          INSERT INTO route_details(ROUTE_ID,IP_1,IP_2,IP_3,IP_4,IP_5,IP_6) VALUES(routedetailsid,i_ip1,i_ip2,i_ip3,i_ip4,i_ip5,i_ip6);
        ELSE
          set errmsg="Bus No already exists";
          END IF;  
    END */$$
DELIMITER ;

/* Procedure structure for procedure `PR_DELETE_ROUTE` */

/*!50003 DROP PROCEDURE IF EXISTS  `PR_DELETE_ROUTE` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `PR_DELETE_ROUTE`(in i_busno int,out errmsg varchar(100))
BEGIN  
    declare seedid int;
    declare seedrouteid int;
    
           select `seed_route_details`.`ID` into seedid from `seed_route_details` where ROUTE_BUS_NO=i_busno;
           select `seed_route_details`.`ROUTE_ID` into seedrouteid from `seed_route_details` where ROUTE_BUS_NO=i_busno;
           delete from `route_details` where `route_details`.`ROUTE_ID`=seedid;
           delete from `seed_route_details` where `seed_route_details`.`ID`=seedid;
           delete from `seed_route` where `seed_route`.`ID`=seedrouteid;
           
    END */$$
DELIMITER ;

/* Procedure structure for procedure `PR_UPDATE_BUS_NO` */

/*!50003 DROP PROCEDURE IF EXISTS  `PR_UPDATE_BUS_NO` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `PR_UPDATE_BUS_NO`(in i_routename varchar(100),in i_busno int,out errmsg varchar(100))
BEGIN
    declare routeid int;
          select `seed_route`.`ID` into routeid from `seed_route` where `seed_route`.`ROUTE_NAME`=i_routename;
          if not exists(select `seed_route_details`.`ROUTE_BUS_NO` from `seed_route_details` where `ROUTE_BUS_NO`=i_busno) then
          update `seed_route_details` set `seed_route_details`.`ROUTE_BUS_NO`=i_busno where `seed_route_details`.`ROUTE_ID`=routeid;
          else
          set errmsg="Bus No already exists for another route";
          end if; 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `PR_UPDATE_INTERMEDIARY` */

/*!50003 DROP PROCEDURE IF EXISTS  `PR_UPDATE_INTERMEDIARY` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `PR_UPDATE_INTERMEDIARY`(In i_busno int,in i_ip1 varchar(50),IN i_ip2 VARCHAR(50),IN i_ip3 VARCHAR(50),
    IN i_ip4 VARCHAR(50),IN i_ip5 VARCHAR(50),IN i_ip6 VARCHAR(50),out errmsg varchar(100))
BEGIN
         declare routeid int;
         select `seed_route_details`.`ID` into routeid from `seed_route_details` where `seed_route_details`.`ROUTE_BUS_NO`=i_busno;
         update `route_details` set `route_details`.`IP_1`=i_ip1 , `route_details`.`IP_2`=i_ip2 , `route_details`.`IP_3`=i_ip3 , 
         `route_details`.`IP_4`=i_ip4 , `route_details`.`IP_5`=i_ip5 , `route_details`.`IP_6`=i_ip6 where `route_details`.`ROUTE_ID`= routeid;
         
    END */$$
DELIMITER ;

/* Procedure structure for procedure `PR_UPDATE_ROUTE_NAME` */

/*!50003 DROP PROCEDURE IF EXISTS  `PR_UPDATE_ROUTE_NAME` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `PR_UPDATE_ROUTE_NAME`(In i_busno int,in i_routename varchar(100),out errmsg varchar(100))
BEGIN
    declare seedroutedetailsid int;
     
          select `seed_route_details`.`ROUTE_ID` into seedroutedetailsid from `seed_route_details` where `seed_route_details`.`ROUTE_BUS_NO`=i_busno;
          if not exists(select `seed_route`.`ROUTE_NAME` from `seed_route` where `seed_route`.`ROUTE_NAME`=i_routename) then           
          update `seed_route` set `seed_route`.`ROUTE_NAME`=i_routename where `seed_route`.`ID`=seedroutedetailsid;
          else
          set errmsg="Route Name already exists for another bus no";
          end if;
          
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
