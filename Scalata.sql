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

3.
select n.nome, n.continente
from scalata s join nazione n on s.nazione = n.nome
    join scalatore sc on s.scalatore = sc.CF
where (s.anno - sc.annoNascita) < 18

4.
select count(*) as numeroScalate, n.nome
from scalata s join nazione n on s.nazione = n.nome
    join scalatore sc on s.scalatore = sc.CF
where sc.nazioneNascita = s.nazione
group by n.nome