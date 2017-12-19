SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS  `course`;
CREATE TABLE `course` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` char(20) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into `course`(`cname`) values
('math'),
('physics'),
('chemistry');
DROP TABLE IF EXISTS  `mark`;
CREATE TABLE `mark` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `score` int(4) DEFAULT NULL,
  PRIMARY KEY (`mid`),
  KEY `msid` (`sid`),
  KEY `mcid` (`cid`),
  CONSTRAINT `mcid` FOREIGN KEY (`cid`) REFERENCES `course` (`cid`),
  CONSTRAINT `msid` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into `mark`(`sid`,`cid`,`score`) values
('1','1','80'),
('2','1','85'),
('3','1','90'),
('1','2','60'),
('2','2','90'),
('3','2','75'),
('1','3','95'),
('2','3','75'),
('3','3','85');
DROP TABLE IF EXISTS  `student`;
CREATE TABLE `student` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` char(20) NOT NULL,
  `gender` char(10) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into `student`(`sname`,`gender`) values
('Tom','male'),
('Jack','male'),
('Rose','female');
SET FOREIGN_KEY_CHECKS = 1;

