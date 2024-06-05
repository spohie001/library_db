INSERT INTO wydawnictwo VALUES ('Iskry');

INSERT INTO ksiazka VALUES ('Hobbit', 'fantazy');
INSERT INTO autor VALUES ('John', 'Tolkien', 'Literatura Wspolczesna', 'angielska');
INSERT INTO napisac VALUES (IDENT_CURRENT ('ksiazka'), IDENT_CURRENT ('autor'));
INSERT INTO wydanie VALUES  ('978-83-811-6264-7', 3, 2011, IDENT_CURRENT ('ksiazka'),'Iskry' );
INSERT INTO grafik VALUES('Alan', 'Lee', 12 );
INSERT INTO ilustrowac VALUES ('978-83-811-6264-7', IDENT_CURRENT ('grafik'));

INSERT INTO wydanie VALUES  ('978-83-445-3487-1', 2, 2007, IDENT_CURRENT ('ksiazka'),'Iskry' );
INSERT INTO grafik VALUES('Thomas', 'Smith', 12 );
INSERT INTO ilustrowac VALUES ('978-83-445-3487-1', IDENT_CURRENT ('grafik'));

------------------------------------------------------------------------------------------
INSERT INTO wydawnictwo VALUES  ('znak');

INSERT INTO ksiazka VALUES ('Madame Pylinska i sekret Chopina', 'obyczajowa');
INSERT INTO autor VALUES ('Éric-Emmanuel', 'Schmitt', 'Literatura Współczesna', 'francuska');
INSERT INTO napisac VALUES (IDENT_CURRENT ('ksiazka'), IDENT_CURRENT ('autor'));
INSERT INTO wydanie VALUES  ('978-83-240-4853-3', 1, 2019, IDENT_CURRENT ('ksiazka'),'znak');
INSERT INTO grafik VALUES('Katarzyna', 'Borkowska', 1 );
INSERT INTO ilustrowac VALUES ('978-83-240-4853-3', IDENT_CURRENT ('grafik'));


INSERT INTO ksiazka VALUES ('Nowe przygody Mikołajka', 'dziecięca');
INSERT INTO autor VALUES ('René', 'Goscinny','Literatura Współczesna', 'francuska');
INSERT INTO napisac VALUES (IDENT_CURRENT ('ksiazka'), IDENT_CURRENT ('autor'));
INSERT INTO autor VALUES ('Jean-Jacques', 'Sempé','Literatura Współczesna', 'francuska');
INSERT INTO napisac(R_ksiazka,R_autor) VALUES  (IDENT_CURRENT ('ksiazka'), IDENT_CURRENT ('autor'));
INSERT INTO wydanie VALUES  ('978-83-240-0608-3', 1, 2010, IDENT_CURRENT ('ksiazka'),'znak');
INSERT INTO grafik VALUES('Jean-Jacques', 'Sempé', 12 );
INSERT INTO ilustrowac VALUES ('978-83-240-0608-3', IDENT_CURRENT ('grafik'));

-------------------------------------------------------------------------------------------
INSERT INTO wydawnictwo VALUES ('Akurat');
INSERT INTO ksiazka VALUES ('Ewangelia według Lokiego', 'fantazy');
INSERT INTO autor VALUES ('Joanne', 'Harris','Literatura Współczesna', 'angielska');
INSERT INTO napisac VALUES (IDENT_CURRENT ('ksiazka'), IDENT_CURRENT ('autor'));
INSERT INTO wydanie VALUES  ('978-83-287-0090-1', 1, 2015, IDENT_CURRENT ('ksiazka'),'Akurat' );
INSERT INTO grafik VALUES('Wojciech', 'Chomiński', 1 );
INSERT INTO ilustrowac VALUES ('978-83-287-0090-1', IDENT_CURRENT ('grafik'));



------------------------------------------------------------------------------------------
INSERT INTO wydawnictwo VALUES  ('Papierowy księżyc');

INSERT INTO ksiazka VALUES ('Kod gorączki', 'science fiction');
INSERT INTO autor VALUES ('James', 'Dashner','Literatura Współczesna', 'amerykańska');
INSERT INTO napisac VALUES (IDENT_CURRENT ('ksiazka'), IDENT_CURRENT ('autor'));
INSERT INTO wydanie VALUES  ('978-83-665-6820-5', 1, 2016, IDENT_CURRENT ('ksiazka'),'Papierowy księżyc' );
INSERT INTO grafik VALUES('Krzysztof', 'Krawiec', 1 );
INSERT INTO ilustrowac VALUES ('978-83-665-6820-5', IDENT_CURRENT ('grafik'));

------------------------------------------------------------------------------------------
INSERT INTO wydawnictwo VALUES  ('Albatros');

INSERT INTO ksiazka VALUES ('W sieci umysłów. Doktryna śmiertelności', 'science fiction');
INSERT INTO napisac VALUES (IDENT_CURRENT ('ksiazka'), IDENT_CURRENT ('autor'));
INSERT INTO wydanie VALUES  ('978-83-798-5660-2', 1, 2015, IDENT_CURRENT ('ksiazka'),'Albatros' );
INSERT INTO grafik VALUES('Kekai', 'Kotaki', 1 );
INSERT INTO ilustrowac VALUES ('978-83-798-5660-2', IDENT_CURRENT ('grafik'));


------------------------------------------------------------------------------------------
INSERT INTO wydawnictwo VALUES  ('Helion');

INSERT INTO ksiazka VALUES ('Czysty kod. Podręcznik dobrego programisty', 'samorozwój');
INSERT INTO autor VALUES ('Robert', 'Martin','Literatura Współczesna', 'amerykańska');
INSERT INTO napisac VALUES (IDENT_CURRENT ('ksiazka'), IDENT_CURRENT ('autor'));
INSERT INTO wydanie VALUES  ('978-83-283-0234-1', 1, 2014, IDENT_CURRENT ('ksiazka'),'Helion' );
INSERT INTO grafik VALUES('Mateusz', 'Obarek', 1 );
INSERT INTO ilustrowac VALUES ('978-83-283-0234-1', IDENT_CURRENT ('grafik'));
INSERT INTO grafik VALUES('Maciej', 'Poloński', 1 );
INSERT INTO ilustrowac VALUES ('978-83-283-0234-1', IDENT_CURRENT ('grafik'));


------------------------------------------------------------------------------------------
INSERT INTO wydawnictwo VALUES  ('Zysk i S-ka');

INSERT INTO ksiazka VALUES ('Ilustrowana krótka historia czasu', 'naukowa');
INSERT INTO autor VALUES ('Stephen', 'Hawking','Literatura Współczesna', 'angielska');
INSERT INTO napisac VALUES (IDENT_CURRENT ('ksiazka'), IDENT_CURRENT ('autor'));
INSERT INTO wydanie VALUES  ('978-83-778-5992-6', 1, 2016, IDENT_CURRENT ('ksiazka'),'Zysk i S-ka' );
INSERT INTO grafik VALUES('Malcolm', 'Godwin', 1 );
INSERT INTO ilustrowac VALUES ('978-83-778-5992-6', IDENT_CURRENT ('grafik'));
INSERT INTO grafik VALUES('Jerome', 'Grasdijk', 2 );
INSERT INTO ilustrowac VALUES ('978-83-778-5992-6', IDENT_CURRENT ('grafik'));

------------------------------------------------------------------------------------------
INSERT INTO wydawnictwo VALUES  ('Insignis');

INSERT INTO ksiazka VALUES ('Astrofizyka dla zabieganych', 'naukowa');
INSERT INTO autor VALUES ('Neil', 'de Grasse Tyson','Literatura Współczesna', 'amerykańska');
INSERT INTO napisac VALUES (IDENT_CURRENT ('ksiazka'), IDENT_CURRENT ('autor'));
INSERT INTO wydanie VALUES  ('978-83-657-4353-4', 1, 2017, IDENT_CURRENT ('ksiazka'),'Insignis' );
INSERT INTO grafik VALUES('Pete', 'Garceau', 1 );
INSERT INTO ilustrowac VALUES ('978-83-657-4353-4', IDENT_CURRENT ('grafik'));


------------------------------------------------------------------------------------------
INSERT INTO wydawnictwo VALUES  ('Nasza kięgarnia');

INSERT INTO ksiazka VALUES ('Pippi na Południowym Pacyfiku', 'dziecięca');
INSERT INTO autor VALUES ('Astrid', 'Lindgren','Literatura Współczesna', 'szwedzka');
INSERT INTO napisac VALUES (IDENT_CURRENT ('ksiazka'), IDENT_CURRENT ('autor'));
INSERT INTO wydanie VALUES  ('978-83-109-9750-0', 1, 1960, IDENT_CURRENT ('ksiazka'),'Nasza kięgarnia' );
INSERT INTO grafik VALUES('Ingrid', 'Vang-Nyman', 12 );
INSERT INTO ilustrowac VALUES ('978-83-109-9750-0', IDENT_CURRENT ('grafik'));


INSERT INTO ksiazka VALUES ('Kubuś Puchatek. Chatka Puchatka', 'dziecięca');
INSERT INTO autor VALUES ('Alan', 'Milne','Literatura Współczesna', 'angielska');
INSERT INTO napisac VALUES (IDENT_CURRENT ('ksiazka'), IDENT_CURRENT ('autor'));
INSERT INTO wydanie VALUES  ('978-83-101-0976-2', 2, 1995, IDENT_CURRENT ('ksiazka'),'Nasza kięgarnia' );
INSERT INTO grafik VALUES('Ernest', 'Sheperd', 12 );
INSERT INTO ilustrowac VALUES ('978-83-101-0976-2', IDENT_CURRENT ('grafik'));


INSERT INTO ksiazka VALUES ('Przygody w magicznej krainie', 'dziecięca');
INSERT INTO autor VALUES ('Suzanne', 'Laureen','Literatura Współczesna', 'angielska');
INSERT INTO napisac VALUES (IDENT_CURRENT ('ksiazka'), IDENT_CURRENT ('autor'));
INSERT INTO wydanie VALUES  ('978-83-331-0912-6', 1, 1999, IDENT_CURRENT ('ksiazka'),'Nasza kięgarnia' );
INSERT INTO ilustrowac VALUES ('978-83-331-0912-6', IDENT_CURRENT ('grafik'));




INSERT INTO ksiazka VALUES ('Puszka Pandory', 'fantazy');
INSERT INTO napisac VALUES (IDENT_CURRENT ('ksiazka'), IDENT_CURRENT ('autor'));
INSERT INTO wydanie VALUES  ('978-83-322-4562-2', 1, 2006, IDENT_CURRENT ('ksiazka'),'Nasza kięgarnia' );
INSERT INTO ilustrowac VALUES ('978-83-322-4562-2', IDENT_CURRENT ('grafik'));


------------------------------------------------------------------------------------------
INSERT INTO wydawnictwo VALUES  ('Zielona Sowa');

INSERT INTO ksiazka VALUES ('Dziady', 'obyczajowa');
INSERT INTO autor VALUES ('Adam', 'Mickiewicz','romantyzm', 'polska');
INSERT INTO napisac VALUES (IDENT_CURRENT ('ksiazka'), IDENT_CURRENT ('autor'));
INSERT INTO wydanie VALUES  ('978-83-738-6823-1', 3, 2004, IDENT_CURRENT ('ksiazka'),'Zielona Sowa' );
INSERT INTO grafik VALUES('Piotr', 'Iwaszko', 1 );
INSERT INTO ilustrowac VALUES ('978-83-738-6823-1', IDENT_CURRENT ('grafik'));


INSERT INTO wypozyczajacy VALUES ('000001','Jan', 'Kowalski', 8);
INSERT INTO wypozyczajacy VALUES ('000002','Janina', 'Nowak', 21);
INSERT INTO wypozyczajacy VALUES ('000003','Hanna', 'Dziupla', 16);
INSERT INTO wypozyczajacy VALUES ('000004','Stefan', 'Adamowicz', 45);
INSERT INTO wypozyczajacy VALUES ('000005','Alicja', 'Zajad', 56);
INSERT INTO wypozyczajacy VALUES ('000006','Tomasz', 'Tuwim', 10);
INSERT INTO wypozyczajacy VALUES ('000007','Zuzanna', 'Hula', 78);
INSERT INTO wypozyczajacy VALUES ('000008','Robert', 'Pukszta', 34);
INSERT INTO wypozyczajacy VALUES ('000009','Karol', 'Wilk', 65);
INSERT INTO wypozyczajacy VALUES ('000010','Anna', 'Stopa', 23);

--hobbit
INSERT INTO egzemplarz VALUES ('978-83-811-6264-7');
INSERT INTO wypozyczenie VALUES ('2019-01-20', '2019-02-01','000005',IDENT_CURRENT ('egzemplarz'));
INSERT INTO wypozyczenie VALUES ('2018-05-23', '2018-08-01','000008',IDENT_CURRENT ('egzemplarz')); --kara zgubienie+termin
INSERT INTO kara VALUES ('przekroczenie terminu', 25,'2018-06-23','2018-07-23',10, '2018-08-01',IDENT_CURRENT ('wypozyczenie'));
INSERT INTO kara VALUES ('zgubienie', 50,'2018-08-01','2018-09-01',NULL, '2018-08-01',IDENT_CURRENT ('wypozyczenie'));

INSERT INTO egzemplarz VALUES ('978-83-445-3487-1');
INSERT INTO wypozyczenie VALUES ('2020-02-14', '2020-02-16','000005',IDENT_CURRENT ('egzemplarz'));

INSERT INTO egzemplarz VALUES ('978-83-445-3487-1');
INSERT INTO wypozyczenie VALUES ('2021-09-12', '2021-09-30','000005',IDENT_CURRENT ('egzemplarz'));


INSERT INTO egzemplarz VALUES ('978-83-811-6264-7');

--Madame Pylinska i sekret Chopina
INSERT INTO egzemplarz VALUES ('978-83-240-4853-3');
INSERT INTO wypozyczenie VALUES ('2021-11-24', NULL,'000005',IDENT_CURRENT ('egzemplarz'));

INSERT INTO egzemplarz VALUES ('978-83-240-4853-3');
INSERT INTO wypozyczenie VALUES ('2020-08-04', '2020-08-14','000010',IDENT_CURRENT ('egzemplarz'));
INSERT INTO wypozyczenie VALUES ('2021-12-02', NULL,'000003',IDENT_CURRENT ('egzemplarz'));

--Nowe przygody Mikołajka
INSERT INTO egzemplarz VALUES ('978-83-240-0608-3');
INSERT INTO wypozyczenie VALUES ('2021-01-15', '2021-02-10','000006',IDENT_CURRENT ('egzemplarz'));

INSERT INTO egzemplarz VALUES ('978-83-240-0608-3');
INSERT INTO wypozyczenie VALUES ('2020-07-05', '2020-12-10','000001',IDENT_CURRENT ('egzemplarz')); --kara termin
INSERT INTO kara VALUES ('przekroczenie terminu', 25,'2020-08-05','2020-09-05',30, '2020-12-10',IDENT_CURRENT ('wypozyczenie'));

INSERT INTO wypozyczenie VALUES ('2021-04-20', NULL,'000006',IDENT_CURRENT ('egzemplarz')); --kara termin
INSERT INTO kara VALUES ('przekroczenie terminu', 25,'2021-05-20','2021-06-20',60, NULL,IDENT_CURRENT ('wypozyczenie')); 

--Ewangelia według Lokiego
INSERT INTO egzemplarz VALUES ('978-83-287-0090-1');
INSERT INTO wypozyczenie VALUES ('2020-10-24', '2020-11-05','000010',IDENT_CURRENT ('egzemplarz'));

INSERT INTO egzemplarz VALUES ('978-83-287-0090-1');
INSERT INTO wypozyczenie VALUES ('2021-10-20', '2021-11-09','000005',IDENT_CURRENT ('egzemplarz'));
INSERT INTO wypozyczenie VALUES ('2021-11-10', NULL,'000003',IDENT_CURRENT ('egzemplarz')); --kara termin
INSERT INTO kara VALUES ('przekroczenie terminu', 25,'2021-12-10','2022-01-10',NULL, NULL,IDENT_CURRENT ('wypozyczenie')); 

--Kod gorączki
INSERT INTO egzemplarz VALUES ('978-83-665-6820-5');
INSERT INTO wypozyczenie VALUES ('2018-02-04', '2018-03-04','000010',IDENT_CURRENT ('egzemplarz'));
INSERT INTO wypozyczenie VALUES ('2021-11-30', '2021-12-14','000010',IDENT_CURRENT ('egzemplarz'));

INSERT INTO egzemplarz VALUES ('978-83-665-6820-5');

--W sieci umysłów. Doktryna śmiertelności
INSERT INTO egzemplarz VALUES ('978-83-798-5660-2');
INSERT INTO wypozyczenie VALUES ('2020-12-02', '2021-12-02','000003',IDENT_CURRENT ('egzemplarz')); --kara termin
INSERT INTO kara VALUES ('przekroczenie terminu', 25,'2021-01-02','2021-02-02',120, '2021-12-02',IDENT_CURRENT ('wypozyczenie')); 

INSERT INTO wypozyczenie VALUES ('2021-12-14', NULL,'000010',IDENT_CURRENT ('egzemplarz'));

INSERT INTO egzemplarz VALUES ('978-83-798-5660-2');

--Czysty kod. Podręcznik dobrego programisty
INSERT INTO egzemplarz VALUES ('978-83-283-0234-1');
INSERT INTO wypozyczenie VALUES ('2021-11-28', NULL,'000010',IDENT_CURRENT ('egzemplarz'));

INSERT INTO egzemplarz VALUES ('978-83-283-0234-1');
INSERT INTO wypozyczenie VALUES ('2020-03-13', '2020-03-20','000002',IDENT_CURRENT ('egzemplarz'));

--Ilustrowana krótka historia czasu
INSERT INTO egzemplarz VALUES ('978-83-778-5992-6');
INSERT INTO wypozyczenie VALUES ('2021-09-08', '2021-09-13','000007',IDENT_CURRENT ('egzemplarz')); --kara zniszczenie
INSERT INTO kara VALUES ('zniszczenie', 35,'2021-09-13','2021-10-13',NULL, '2021-10-12',IDENT_CURRENT ('wypozyczenie')); 

INSERT INTO egzemplarz VALUES ('978-83-778-5992-6');
INSERT INTO wypozyczenie VALUES ('2021-11-28', NULL,'000010',IDENT_CURRENT ('egzemplarz'));

--Astrofizyka dla zabieganych
INSERT INTO egzemplarz VALUES ('978-83-657-4353-4');
INSERT INTO wypozyczenie VALUES ('2021-12-01', '2021-12-18','000002',IDENT_CURRENT ('egzemplarz'));

INSERT INTO egzemplarz VALUES ('978-83-657-4353-4');

--Pippi na Południowym Pacyfiku
INSERT INTO egzemplarz VALUES ('978-83-109-9750-0');
INSERT INTO wypozyczenie VALUES ('2021-02-13', '2021-03-01','000006',IDENT_CURRENT ('egzemplarz'));

INSERT INTO egzemplarz VALUES ('978-83-109-9750-0');

--Kubuś Puchatek. Chatka Puchatka
INSERT INTO egzemplarz VALUES ('978-83-101-0976-2');
INSERT INTO wypozyczenie VALUES ('2021-01-15', '2021-02-13','000006',IDENT_CURRENT ('egzemplarz'));
INSERT INTO kara VALUES ('zgubienie', 50,'2021-02-13','2021-03-13',NULL, '2021-02-13',IDENT_CURRENT ('wypozyczenie'));

INSERT INTO egzemplarz VALUES ('978-83-101-0976-2');
INSERT INTO wypozyczenie VALUES ('2021-11-29', NULL,'000001',IDENT_CURRENT ('egzemplarz'));
--Dziady
INSERT INTO egzemplarz VALUES ('978-83-738-6823-1');
INSERT INTO wypozyczenie VALUES ('2019-03-05', '2019-07-15','000005',IDENT_CURRENT ('egzemplarz')); --kara zniszczenie+termin
INSERT INTO kara VALUES ('przekroczenie terminu', 25,'2019-04-05','2019-05-05',20, '2019-07-15',IDENT_CURRENT ('wypozyczenie')); 
INSERT INTO kara VALUES ('zniszczenie', 35,'2019-07-15','2019-08-15',NULL, '2019-07-15',IDENT_CURRENT ('wypozyczenie')); 

INSERT INTO wypozyczenie VALUES ('2021-12-06', NULL,'000007',IDENT_CURRENT ('egzemplarz'));

INSERT INTO egzemplarz VALUES ('978-83-738-6823-1');
INSERT INTO wypozyczenie VALUES ('2020-02-06', '2020-02-20','000007',IDENT_CURRENT ('egzemplarz'));
INSERT INTO wypozyczenie VALUES ('2020-12-10', NULL,'000009',IDENT_CURRENT ('egzemplarz'));

