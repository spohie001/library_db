CREATE TABLE ksiazka (
	id_Ks INT IDENTITY(1,1) PRIMARY KEY,
	tytul 	VARCHAR(50) CHECK(LEN(tytul)>=0) NOT NULL,
	gatunek VARCHAR(30) NOT NULL
);

CREATE TABLE autor (
	id_Aut INT IDENTITY(1,1) PRIMARY KEY,
	imie VARCHAR(20)NOT NULL,
	nazwisko VARCHAR(30)NOT NULL,
	epoka VARCHAR(30)NOT NULL,
	narodowosc VARCHAR(30)NOT NULL,
);

CREATE TABLE napisac ( 
	id_Napisac INT IDENTITY(1,1) PRIMARY KEY,
	R_ksiazka INT REFERENCES ksiazka(id_Ks) ON DELETE CASCADE, 
	R_autor INT REFERENCES autor (id_Aut) ON DELETE CASCADE
	);

CREATE TABLE wydawnictwo ( 
	nazwa VARCHAR(50) PRIMARY KEY
 );

CREATE TABLE wydanie ( 
	ISBN VARCHAR(17) CHECK (ISBN LIKE 
	'[0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]-[0-9]') PRIMARY KEY,
	nr_wydania INT NOT NULL,
	rok INT NOT NULL,
	R_ksiazka INT REFERENCES ksiazka(id_Ks) ON DELETE CASCADE,
	R_wydawnictwo VARCHAR(50) REFERENCES wydawnictwo(nazwa) ON DELETE CASCADE ON UPDATE CASCADE
	);


CREATE TABLE grafik ( 
	id_Gr INT IDENTITY(1,1) PRIMARY KEY, 
	imie VARCHAR(20)NOT NULL,
	nazwisko VARCHAR(30)NOT NULL,  
	ilustracje INT CHECK (ilustracje in(1,2,12)) NOT NULL
	);


CREATE TABLE ilustrowac ( 
	id_Ilustrowac INT IDENTITY(1,1) PRIMARY KEY,
	R_wydanie VARCHAR(17) REFERENCES wydanie (ISBN)ON DELETE CASCADE,  
	R_grafik INT REFERENCES grafik(id_Gr) ON DELETE CASCADE 
	);


CREATE TABLE egzemplarz ( 
	id_Egz INT IDENTITY(1,1) PRIMARY KEY, 
	R_wydanie VARCHAR(17) REFERENCES wydanie (ISBN) ON DELETE CASCADE
);

CREATE TABLE wypozyczajacy ( 
	nr_karty_bibl VARCHAR(6)CHECK (nr_karty_bibl LIKE '[0-9][0-9][0-9][0-9][0-9][0-9]') PRIMARY KEY, 
	imie VARCHAR(20)NOT NULL,
	nazwisko VARCHAR(30)NOT NULL,  
	wiek INT CHECK(wiek>0 AND wiek<121)NOT NULL
);


CREATE TABLE wypozyczenie ( 
	id_Wypoz INT IDENTITY(1,1) PRIMARY KEY,
	data_wypoz date NOT NULL,  
	data_zwrotu date NULL, 
	R_wypozyczajacy VARCHAR(6) REFERENCES wypozyczajacy(nr_karty_bibl) ON DELETE CASCADE ON UPDATE CASCADE, 
	R_egzemplarz INT REFERENCES egzemplarz(id_Egz) ON DELETE CASCADE
);


CREATE TABLE kara ( 
	id_Kara INT IDENTITY(1,1) PRIMARY KEY, 
	rodzaj VARCHAR(50) CHECK (rodzaj in('przekroczenie terminu','zniszczenie', 'zgubienie')) NOT NULL, 
	kwota MONEY NOT NULL,
	data_nalozenia DATE NOT NULL,
	ostateczny_termin DATE NOT NULL, 
	doplata MONEY NULL, 
	data_oplacenia DATE  NULL, 
	R_wypozyczenie INT REFERENCES wypozyczenie(id_Wypoz) ON DELETE CASCADE
	 );

	 