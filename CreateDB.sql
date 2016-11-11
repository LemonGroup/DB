--
-- Create DB "geekbrains"
--
CREATE DATABASE geekbrains
	CHARACTER SET utf8
	COLLATE utf8_general_ci;

CREATE TABLE geekbrains.Sites (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX Sites_uName (name)
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

CREATE TABLE geekbrains.Pages (
  id int(11) NOT NULL AUTO_INCREMENT,
  founddatetime date DEFAULT NULL,
  lastscandate date DEFAULT NULL,
  url varchar(255) NOT NULL,
  siteid int(11) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX Pages_uUrl_uSiteId (url, siteid),
  CONSTRAINT Pages_fSiteId FOREIGN KEY (siteid)
  REFERENCES geekbrains.Sites (id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

CREATE TABLE geekbrains.Persons (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX Persons_uName (name)
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

CREATE TABLE geekbrains.Keywords (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  personid int(11) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX Keywords_uName_uPersonId (name, personid),
  CONSTRAINT Keywords_fPersonId FOREIGN KEY (personid)
  REFERENCES geekbrains.Persons (id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

CREATE TABLE geekbrains.PersonPageRank (
  rank int(11) DEFAULT NULL,
  personid int(11) NOT NULL,
  pageid int(11) NOT NULL,
  PRIMARY KEY (personid, pageid),
  CONSTRAINT PPR_fPageId FOREIGN KEY (pageid)
  REFERENCES geekbrains.Pages (id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT PPR_fPersonId FOREIGN KEY (personid)
  REFERENCES geekbrains.Persons (id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;