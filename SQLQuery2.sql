select  id_Aut, imie, nazwisko, tytul from ksiazka, autor
where (id_Aut in (select R_autor from napisac where R_ksiazka = id_Ks) )
order by imie;


--wypisz ilosc napisanych ksaizek przez autora
select imie, nazwisko, count(tytul) as "ilosc ksiazek" 
from autor left join napisac on (R_autor=id_Aut) left join ksiazka on  (R_ksiazka = id_Ks)
group by imie, nazwisko
;


--select id_Egz, count(id_Wypoz) as "ilosc wypozyczen" 
--from egzemplarz, wypozyczenie, wydanie
--where (R_egzemplarz = id_Egz)
--group by id_Egz;

--select nazwa, ISBN from wydawnictwo left join wydanie on R_wydawnictwo = nazwa;

--select count(ISBN)from wydawnictwo left join wydanie on R_wydawnictwo = nazwa
--group by nazwa;




--select count(id_Egz) as "iloœæ", nr_wydania, tytul
--from egzemplarz, wydanie, ksiazka
--where (R_wydanie = ISBN) and (wydanie.R_ksiazka =id_Ks)
--and (tytul = 'Hobbit') and (nr_wydania=2)
--group by tytul, nr_wydania
--order by tytul
;
--powtarzaj¹ sie tytu³y które nie powinny 
CREATE VIEW abc as select  nr_wydania, tytul,STRING_AGG (CONCAT(imie,' ', nazwisko), ',') as 'autor/autorzy'
from egzemplarz left join wydanie on (R_wydanie = ISBN) left join ksiazka on (wydanie.R_ksiazka =id_Ks) left join napisac on (napisac.R_ksiazka = id_Ks) left join autor on (id_Aut=R_autor) 
--and (tytul = 'Hobbit') and (nr_wydania=2)
group by tytul, nr_wydania
;

--powtarzaj¹ sie tytu³y które nie powinny 
CREATE VIEW abc as select count(id_Egz) as "iloœæ", nr_wydania, tytul, imie, nazwisko
from egzemplarz, wydanie, ksiazka, autor, napisac 
where (R_wydanie = ISBN) and (wydanie.R_ksiazka =id_Ks) and (id_Aut=R_autor) and (napisac.R_ksiazka = id_Ks)
--and (tytul = 'Hobbit') and (nr_wydania=2)
group by tytul, nr_wydania, imie, nazwisko
;


--powtarzaj¹ sie tytu³y które nie powinny 
CREATE VIEW abc as select count(id_Egz) as "iloœæ", nr_wydania, tytul,STRING_AGG (CONCAT(imie,' ', nazwisko), ',') as 'autor/autorzy'
from egzemplarz, wydanie, ksiazka, autor, napisac 
where (R_wydanie = ISBN) and (wydanie.R_ksiazka =id_Ks) and (id_Aut=R_autor) and (napisac.R_ksiazka = id_Ks)
--and (tytul = 'Hobbit') and (nr_wydania=2)
group by tytul, nr_wydania
;

--powtarzaj¹ sie tytu³y które nie powinny 
CREATE VIEW abc 
as select  nr_wydania, tytul,STRING_AGG (CONCAT(imie,' ', nazwisko), ',') as 'autor/autorzy'
from egzemplarz left join wydanie on (R_wydanie = ISBN) left join ksiazka on (wydanie.R_ksiazka =id_Ks) left join napisac on (napisac.R_ksiazka = id_Ks) left join autor on (id_Aut=R_autor) 
--and (tytul = 'Hobbit') and (nr_wydania=2)
group by tytul, nr_wydania
;



--zestaw wszystkie ksi¹¿ki w bibl i poka¿ czy s¹ wypo¿yczone
--poka¿ niewypozyczone ksia¿ki o takim tytule
--pokaz ksiazki tego autora

CREATE VIEW wszystkie_egzemplarze 
as select  id_Egz, tytul,STRING_AGG (CONCAT(imie,' ', nazwisko), ',') as 'autor/autorzy', R_wypozyczajacy
from egzemplarz 
 left join wydanie on (R_wydanie = ISBN) 
 left join ksiazka on (wydanie.R_ksiazka =id_Ks) 
 left join napisac on (napisac.R_ksiazka = id_Ks) 
 left join autor on (id_Aut=R_autor)
 left join wypozyczenie on R_egzemlarz = id_Egz
 where data_zwrotu IS NULL
 group by id_Egz, tytul, R_wypozyczajacy
;


CREATE VIEW wszystkie_egzemplarze 
as select  id_Egz, nr_wydania, tytul,STRING_AGG (CONCAT(imie,' ', nazwisko), ',') as 'autor/autorzy'
from egzemplarz 
 left join wydanie on (R_wydanie = ISBN) 
 left join ksiazka on (wydanie.R_ksiazka =id_Ks) 
 left join napisac on (napisac.R_ksiazka = id_Ks) 
 left join autor on (id_Aut=R_autor)
 group by id_Egz, tytul, nr_wydania
;


select * from wszystkie_egzemplarze;

--jakie ksiazki danego autora mamy w ksiegarni
select distinct tytul as 'ksia¿ki danego autora'
from wszystkie_egzemplarze
where [autor/autorzy]='James Dashner'
;

--ile jest egzemplarzy danej ksiazki
select [autor/autorzy] ,tytul, count(tytul) as 'iloœæ ksi¹¿ek w bibliotece'
from wszystkie_egzemplarze
--where [autor/autorzy]='James Dashner'
group by tytul, [autor/autorzy]
;

--jakie wydania danej ksi¹¿ki mamy?
select STRING_AGG (nr_wydania, ',') as 'wydania', tytul, [autor/autorzy]
from wszystkie_egzemplarze
group by tytul, [autor/autorzy];

DROP VIEW wszystkie_egzemplarze;


--pytania:
--czy jest ju¿ kolejka do oddawania?
--widok? ile dostane jak
-- czy te selekty w selektach s¹ ok?
