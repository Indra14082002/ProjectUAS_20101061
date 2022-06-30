/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.18-MariaDB : Database - mahasiswa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mahasiswa` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mahasiswa`;

/*Table structure for table `dosen` */

DROP TABLE IF EXISTS `dosen`;

CREATE TABLE `dosen` (
  `ktp` varchar(16) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tlp` varchar(12) DEFAULT NULL,
  `bidangmengajar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ktp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dosen` */

insert  into `dosen`(`ktp`,`nama`,`alamat`,`email`,`tlp`,`bidangmengajar`) values 
('5104041209190005','ir. Made Rengkug, s.kom,s.pd','Gianyar','Rengkug11@gmail.com','081999888989','MTI'),
('510404140820005','Putu Indra Cahyadi. S.kom','Gianyar','wayanbalik@gmail.com','081999777666','SK');

/*Table structure for table `mahasiswa` */

DROP TABLE IF EXISTS `mahasiswa`;

CREATE TABLE `mahasiswa` (
  `Nim` varchar(12) NOT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `Jk` varchar(2) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mahasiswa` */

insert  into `mahasiswa`(`Nim`,`Nama`,`Jk`,`tgl`,`jurusan`) values 
('201010101','Nyoman Balik','L','1999-09-09','MTI'),
('20101061','I Ketut Rangkus','L','2000-08-12','MTI'),
('20101088','Made Balik','L','2000-02-02','MTI'),
('20105959','Wayan Balik','P','2002-09-22','MTI');

/*Table structure for table `mk` */

DROP TABLE IF EXISTS `mk`;

CREATE TABLE `mk` (
  `kode_mk` varchar(4) NOT NULL,
  `nama_mk` varchar(100) DEFAULT NULL,
  `semester_mk` varchar(5) DEFAULT NULL,
  `sks` varchar(5) DEFAULT NULL,
  `tipe` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode_mk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mk` */

insert  into `mk`(`kode_mk`,`nama_mk`,`semester_mk`,`sks`,`tipe`) values 
('012','HCI','2','3','Wajib'),
('014','Soft Skill','1','2','Wajib');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
