1.
select s.scalatore as A, n.nome as B
from scalata s join nazione n on s.nazione = n.nome
order by scalatore