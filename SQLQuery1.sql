select tytul as "tytuly ksiazek danego grafika" from ksiazka  
	where id_Ks in (
		select R_ksiazka from wydanie
			where ISBN in (
				select R_wydanie from ilustrowac 
					where R_grafik in (
						select id_Gr from grafik
							where imie = 'Ernest' and nazwisko = 'Sheperd')))
	and gatunek = 'dziecięca'
	order by tytul;




