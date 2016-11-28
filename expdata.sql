-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 7.1.31.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 20.11.2016 4:11:33
-- Версия сервера: 5.7.16
-- Версия клиента: 4.1

USE LEMON_STAT;

SET NAMES 'utf8';

INSERT INTO groups(id, groupname) VALUES
(1, 'LemonGroup');
INSERT INTO groups(id, groupname) VALUES
(2, 'InvestAgents');
INSERT INTO groups(id, groupname) VALUES
(3, 'GoodMoneyCorp');

INSERT INTO accounts(id, username, password, groupid, privilege) VALUES
(1, 'sasha', 'qwerty',1,1);
INSERT INTO accounts(id, username, password, groupid, privilege) VALUES
(2, 'tanya', 'qwerty',1,2);
INSERT INTO accounts(id, username, password, groupid, privilege) VALUES
(3, 'vitaliy', 'qwerty',2,1);
INSERT INTO accounts(id, username, password, groupid, privilege) VALUES
(4, 'oleg', 'qwerty',2,2);
INSERT INTO accounts(id, username, password, groupid, privilege) VALUES
(5, 'anton', 'qwerty',3,1);
INSERT INTO accounts(id, username, password, groupid, privilege) VALUES
(6, 'muslim', 'qwerty',3,2);

INSERT INTO tokens(id, token, accountid) VALUES
(1, 'fake-token1', 1);
INSERT INTO tokens(id, token, accountid) VALUES
(2, 'fake-token2', 2);

INSERT INTO persons(id, name, groupid) VALUES
(1, 'Жириновский', 1);
INSERT INTO persons(id, name, groupid) VALUES
(2, 'Медведев', 1);
INSERT INTO persons(id, name, groupid) VALUES
(3, 'Навальный', 1);
INSERT INTO persons(id, name, groupid) VALUES
(4, 'Путин', 2);
INSERT INTO persons(id, name, groupid) VALUES
(5, 'Жириновский', 2);
INSERT INTO persons(id, name, groupid) VALUES
(6, 'Зюганов', 3);
INSERT INTO persons(id, name, groupid) VALUES
(7, 'Явлинский', 3);

INSERT INTO keywords(id, name, personid) VALUES
(1, 'Жириновский', 1);
INSERT INTO keywords(id, name, personid) VALUES
(2, 'Жириновскому', 5);
INSERT INTO keywords(id, name, personid) VALUES
(3, 'Медведев', 2);
INSERT INTO keywords(id, name, personid) VALUES
(4, 'Медведеву', 2);
INSERT INTO keywords(id, name, personid) VALUES
(5, 'Навальный', 3);
INSERT INTO keywords(id, name, personid) VALUES
(6, 'Навального', 3);
INSERT INTO keywords(id, name, personid) VALUES
(7, 'Навальному', 3);
INSERT INTO keywords(id, name, personid) VALUES
(8, 'Путин', 4);
INSERT INTO keywords(id, name, personid) VALUES
(9, 'Путину', 4);
INSERT INTO keywords(id, name, personid) VALUES
(10, 'Путиным', 4);
INSERT INTO keywords(id, name, personid) VALUES
(11, 'Зюганов', 6);
INSERT INTO keywords(id, name, personid) VALUES
(12, 'Зюганову', 6);
INSERT INTO keywords(id, name, personid) VALUES
(13, 'Явлинский', 7);
INSERT INTO keywords(id, name, personid) VALUES
(14, 'Явлинскому', 7);

INSERT INTO sites(id, name, groupid) VALUES
(1, 'e1.ru', 1);
INSERT INTO sites(id, name, groupid) VALUES
(2, 'lenta.ru', 1);
INSERT INTO sites(id, name, groupid) VALUES
(3, 'ria.ru', 2);
INSERT INTO sites(id, name, groupid) VALUES
(4, 'e1.ru', 2);
INSERT INTO sites(id, name, groupid) VALUES
(5, 'rbc.ru', 3);
INSERT INTO sites(id, name, groupid) VALUES
(6, 'mail.ru', 3);

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
(1, 9, 3);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 9, 4);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 9, 5);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 9, 6);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 9, 7);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 9, 8);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 10, 3);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 10, 4);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 10, 5);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 10, 7);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 10, 7);
INSERT INTO person_page_rank(rank, personid, pageid) VALUES
(1, 10, 8);
