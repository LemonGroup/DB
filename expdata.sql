-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 7.1.31.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 20.11.2016 4:11:33
-- Версия сервера: 5.7.16
-- Версия клиента: 4.1

USE LEMON_STAT;

SET NAMES 'utf8';

INSERT INTO groups(id, groupname) VALUES
(5, 'testuser');

INSERT INTO accounts(id, username, password, email, groupid, privilege) VALUES
(10, 'testuser', 'testpass','testuser@mail.ru',5,2);

INSERT INTO tokens(id, token, accountid) VALUES
(1, 'this-is-fake-token', 10);

INSERT INTO persons(id, name, groupid) VALUES
(1, 'Жириновский', 5);
INSERT INTO persons(id, name, groupid) VALUES
(2, 'Медведев', 5);

INSERT INTO keywords(id, name, personid) VALUES
(1, 'Жириновский', 1);
INSERT INTO keywords(id, name, personid) VALUES
(2, 'Жириновскому', 1);
INSERT INTO keywords(id, name, personid) VALUES
(3, 'Медведев', 2);
INSERT INTO keywords(id, name, personid) VALUES
(4, 'Медведеву', 2);

INSERT INTO sites(id, name, groupid) VALUES
(9, 'lenta.ru', 5);
INSERT INTO sites(id, name, groupid) VALUES
(11, 'rbc.ru', 5);

INSERT INTO pages(id, founddatetime, lastscandate, url, siteid) VALUES
(1, '2016-11-20 03:32:20', NULL, 'http://www.lenta.ru.ru/talk/forum/list.php?f=130', 9);
INSERT INTO pages(id, founddatetime, lastscandate, url, siteid) VALUES
(2, '2016-11-20 03:32:20', NULL, 'http://www.lenta.ru.ru/talk/forum/list.php?f=131', 9);
INSERT INTO pages(id, founddatetime, lastscandate, url, siteid) VALUES
(3, '2016-11-20 03:32:20', '2016-11-20 04:02:05', 'http://www.lenta.ru.ru/news/spool/section_id-73.html', 9);
INSERT INTO pages(id, founddatetime, lastscandate, url, siteid) VALUES
(4, '2016-11-20 03:32:20', '2016-11-21 04:02:06', 'http://www.lenta.ru.ru/news/spool/section_id-87.html', 9);
INSERT INTO pages(id, founddatetime, lastscandate, url, siteid) VALUES
(5, '2016-11-20 03:32:20', '2016-11-20 04:02:07', 'http://www.rbc.ru.ru/articles/testdrive/', 11);
INSERT INTO pages(id, founddatetime, lastscandate, url, siteid) VALUES
(6, '2016-11-20 03:32:20', '2016-11-21 04:02:09', 'http://www.rbc.ru.ru/auto/sale/', 11);
INSERT INTO pages(id, founddatetime, lastscandate, url, siteid) VALUES
(7, '2016-11-20 03:32:20', '2016-11-22 04:02:10', 'http://www.rbc.ru.ru/info/citymap/', 11);
INSERT INTO pages(id, founddatetime, lastscandate, url, siteid) VALUES
(8, '2016-11-20 03:32:20', '2016-11-23 04:03:03', 'http://www.rbc.ru.ru/talk/forum/list.php?f=123', 11);
INSERT INTO pages(id, founddatetime, lastscandate, url, siteid) VALUES
(9, '2016-11-20 03:32:20', NULL, 'http://www.rbc.ru.ru/talk/forum/list.php?f=121', 11);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 1, 3);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 1, 4);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 1, 5);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 1, 6);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 1, 7);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 1, 8);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 2, 3);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 2, 4);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 2, 5);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 2, 7);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 2, 8);
