-- Create DB "lemon_stat"

CREATE DATABASE lemon_stat
	CHARACTER SET utf8
	COLLATE utf8_general_ci;
    
CREATE TABLE lemon_stat.groups (
  id int(11) NOT NULL AUTO_INCREMENT,
  groupname varchar(255) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX groups_uName (groupname)
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

CREATE TABLE lemon_stat.sites (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  groupid int(11) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX sites_uName (name,groupid),
  CONSTRAINT groups_f3id FOREIGN KEY (groupid)
  REFERENCES lemon_stat.groups (id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

CREATE TABLE lemon_stat.pages (
  id int(11) NOT NULL AUTO_INCREMENT,
  founddatetime datetime DEFAULT NULL,
  lastscandate datetime DEFAULT NULL,
  url varchar(255) NOT NULL,
  siteid int(11) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX Pages_uUrl_uSiteId (url, siteid),
  CONSTRAINT Pages_fSiteId FOREIGN KEY (siteid)
  REFERENCES lemon_stat.sites (id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

CREATE TABLE lemon_stat.persons (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  groupid int(11) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX persons_uName (name,groupid),
  CONSTRAINT groups_f2Id FOREIGN KEY (groupid)
  REFERENCES lemon_stat.groups (id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

CREATE TABLE lemon_stat.keywords (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  personid int(11) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX Keywords_uName_uPersonId (name, personid),
  CONSTRAINT Keywords_fPersonId FOREIGN KEY (personid)
  REFERENCES lemon_stat.persons (id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

CREATE TABLE lemon_stat.person_page_rank (
  rank int(11) DEFAULT NULL,
  personid int(11) NOT NULL,
  pageid int(11) NOT NULL,
  PRIMARY KEY (personid, pageid),
  CONSTRAINT PPR_fPageId FOREIGN KEY (pageid)
  REFERENCES lemon_stat.pages (id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT PPR_fPersonId FOREIGN KEY (personid)
  REFERENCES lemon_stat.persons (id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

CREATE TABLE lemon_stat.accounts (
  id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  groupid int(11) NOT NULL,
  privilege int(11) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX Account_uName (username),
  CONSTRAINT groups_fId FOREIGN KEY (groupid)
  REFERENCES lemon_stat.groups (id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

CREATE TABLE lemon_stat.tokens (
  id int(11) NOT NULL AUTO_INCREMENT,
  token varchar(255) NOT NULL,
  accountid int(11) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX tokens_uName (token),
  CONSTRAINT PPR_fAccountId FOREIGN KEY (accountid)
  REFERENCES lemon_stat.accounts (id) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;
