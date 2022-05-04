1.
select s.scalatore as A, n.nome as B
from scalata s join nazione n on s.nazione = n.nome
order by scalatore

2.
select n.continente, sc.cf
from scalata s join nazione n on s.nazione = n.nome
    join scalatore sc on s.scalatore = sc.CF
where sc.annoNascita < 1980
order by sc.cf , n.continente