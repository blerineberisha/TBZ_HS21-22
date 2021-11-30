INSERT INTO Mitarbeiter values(lastname, firstname, chef) as ('Sanchez', 'Ken', NULL, 1000);
INSERT INTO Mitarbeiter values(lastname, firstname, chef) as ('Brian', 'Welcker', 10000, 1001);
INSERT INTO Mitarbeiter values(lastname, firstname, chef) as ('David', 'Bradley', 10001, 1002);
INSERT INTO Mitarbeiter values(lastname, firstname, chef) as ('Mary', 'Gibson', 10002, 1003);
INSERT INTO Mitarbeiter values(lastname, firstname, chef) as ('Syed', 'Abbas', 10001, 1004);
INSERT INTO Mitarbeiter values(lastname, firstname, chef) as ('Lynn', 'Tsoflias', 10005, 1005);
INSERT INTO Mitarbeiter values(lastname, firstname, chef) as ('Stephan', 'Jiang', 10001, 1006);
INSERT INTO Mitarbeiter values(lastname, firstname, chef) as ('Linda', 'Mitchell', 10006, 1005);
INSERT INTO Mitarbeiter values(lastname, firstname, chef) as ('Michael', 'Blythe', 10006, 1005);

INSERT INTO Titel values (titelname) as ('CEO');
INSERT INTO Titel values (titelname) as ('Sales');
INSERT INTO Titel values (titelname) as ('Marketing Manager');
INSERT INTO Titel values (titelname) as ('Marketing Specialist');
INSERT INTO Titel values (titelname) as ('Pacific Sales');
INSERT INTO Titel values (titelname) as ('Sales Representative');
INSERT INTO Titel values (titelname) as ('North America Sales');

INSERT INTO Mitarbeiter_chefs values(lastname, firstname, chef) as ('Sanchez', 'Ken', NULL);
INSERT INTO Mitarbeiter_chefs values(lastname, firstname, chef) as ('Brian', 'Welcker', 10000);
INSERT INTO Mitarbeiter_chefs values(lastname, firstname, chef) as ('David', 'Bradley', 10001);
INSERT INTO Mitarbeiter_chefs values(lastname, firstname, chef) as ('Mary', 'Gibson', 10002);
INSERT INTO Mitarbeiter_chefs values(lastname, firstname, chef) as ('Syed', 'Abbas', 10001);
INSERT INTO Mitarbeiter_chefs values(lastname, firstname, chef) as ('Lynn', 'Tsoflias', 10005);
INSERT INTO Mitarbeiter_chefs values(lastname, firstname, chef) as ('Stephan', 'Jiang', 10001);
INSERT INTO Mitarbeiter_chefs values(lastname, firstname, chef) as ('Linda', 'Mitchell', 10006);
INSERT INTO Mitarbeiter_chefs values(lastname, firstname, chef) as ('Michael', 'Blythe', 10006);

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