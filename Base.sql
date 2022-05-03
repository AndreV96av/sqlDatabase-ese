1.
select programmatore.codice
from autore join programmatore on programmatore.codice = autore.codice
    join programma on programma.id = autore.id
where programma.anno > 2000 and programma.linguaggio = "Java"

2.
select programmatore.nome, programmatore.categoria
from autore join programmatore on programmatore.codice = autore.codice
    join programma on programma.id = autore.id
where programma.linguaggio != "Python"
order by programmatore.nome

3.
select distinct programmatore.codice, programma.anno
from programmatore join autore on programmatore.codice = autore.codice
    join programma on programma.id = autore.id
where programmatore.categoria = 10 and programma.linguaggio != "Java"