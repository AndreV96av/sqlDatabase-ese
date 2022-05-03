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

4.
select distinct autore.codice as autore, a1.codice as amicoAutore
from autore join programma on programma.id = autore.id
    join autore a1 on a1.id = programma.id
where programma.linguaggio = "Python" and autore.codice != a1.codice and autore.codice < a1.codice

5.
select programmatore.nome, programmatore.codice
from autore join programmatore on programmatore.codice = autore.codice
    join programma on programma.id = autore.id
where programma.linguaggio like "Java"
group by programma.linguaggio

6.
select count(programma.id), programmatore.codice, programma.anno
from autore join programmatore on programmatore.codice = autore.codice
    join programma on programma.id = autore.id
group by programma.anno

7.
select count(programmatore.codice), programma.linguaggio
from autore join programmatore on programmatore.codice = autore.codice
    join programma on programma.id = autore.id
group by programma.linguaggio