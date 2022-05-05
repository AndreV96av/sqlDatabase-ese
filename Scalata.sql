1.
select distinct s.scalatore as A, n.continente as B
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

6.
select sc.cf, n2.nome as nascita, n.continente, s.nazione
from scalata s left join nazione n on s.nazione = n.nome
    join scalatore sc on s.scalatore = sc.CF
    join nazione n2 on n2.nome = sc.nazioneNascita
where n2.continente != "America"

7.
select nazione.continente, count(*) as numeroScalate, scalata.anno
from scalata join nazione on nazione.nome = scalata.nazione
group by nazione.continente, scalata.anno
 having count(*) > 1
order by scalata.anno

8.
select sc.nazione, count(*)/count(distinct sc.anno) as "scalate effettuate in media"
from scalatore s join scalata sc on s.cf = sc.scalatore
where s.nazioneNascita != sc.nazione
group by sc.nazione