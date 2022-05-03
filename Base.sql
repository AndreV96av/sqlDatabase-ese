1.
select programmatore.codice
from autore join programmatore on programmatore.codice = autore.codice
    join programma on programma.id = autore.id
where programma.anno > 2000 and programma.linguaggio = "Java"