#Task 1
SELECT mitarbeiter.vorname, mitarbeiter.nachname as Mitarbeiter, mb.nachname as Vorgesetzter from mitarbeiter
left join mitarbeiter mb on mitarbeiter.vorgesetzter_id = mb.mitarbeiter_id;

#Task 2
SELECT mitarbeiter.vorname, mitarbeiter.nachname as Mitarbeiter, mb.nachname as Vorgesetzter from mitarbeiter
left join mitarbeiter mb on mitarbeiter.vorgesetzter_id = mb.mitarbeiter_id;


#Task 3
SELECT Mitarbeiter.firstname as 'Vorname',
       Mitarbeiter.lastname  as 'Nachname',
       C.titelname           as 'Titel',
       mb.firstname          as 'V.Vorname',
       mb.lastname           as 'V.Vorgesetzter',
       T.titelname           as 'V.Titel'
from Mitarbeiter
         left join Mitarbeiter mb on Mitarbeiter.chef = mb.id
         left join Titel T on T.id = mb.titel
         left join Titel C on C.id = Mitarbeiter.titel;