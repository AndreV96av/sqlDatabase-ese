1.
select persona.Nome, città.Regione
from persona join città on persona.CittàNascita = città.Nome
where persona.Età >= 18

2.
select pf.Nome as nome_figlio, pg.Nome as nome_genitore
from Persona pf join Genia on pf.Nome = Genia.Figlio 
    join Persona pg on pg.Nome = Genia.Genitore
where pf.CittàNascita = pg.CittàNascita
