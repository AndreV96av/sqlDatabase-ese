1.
select persona.Nome, città.Regione
from persona join città on persona.CittàNascita = città.Nome
where persona.Età >= 18

2.
select pf.Nome as nome_figlio, pg.Nome as nome_genitore
from Persona pf join Genia on pf.Nome = Genia.Figlio 
    join Persona pg on pg.Nome = Genia.Genitore
where pf.CittàNascita = pg.CittàNascita

3.
select distinct Genia.Genitore
from Persona, Genia
where Persona.Nome = Genia.Genitore and Persona.Età > 50 

4.
select distinct f.Genitore
from genia f join genia g on f.Figlio = g.Genitore