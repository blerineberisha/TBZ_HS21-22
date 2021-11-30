use `m153-db`;
INSERT INTO orte(PLZ, Ort) value (8048, 'Altstetten');
INSERT INTO hobbies(ID, Hobby) value (0, 'programming');

INSERT INTO personen(email, wohnort_plz, arbeitsort_plz, heimatort_plz, hobbies)
values ('blerineberisha@gmail.com', 8954, 8048, 8954, 0);

INSERT INTO personen(email, wohnort_plz, arbeitsort_plz, heimatort_plz, hobbies)
values ('person@gmail.com', 8954, 8048, 8954, 0);

UPDATE personen SET firstname='Blerinë' WHERE Email = 'blerineberisha@gmail.com';
UPDATE personen SET firstname='Milena' WHERE Email = 'milenablaser@gmail.com';
INSERT INTO orte(PLZ,Ort) value (8005, 'Hardbrücke');
INSERT INTO hobbies(ID, Hobby) value(1, 'baking');

INSERT INTO personen(email, wohnort_plz, arbeitsort_plz, heimatort_plz, hobbies, firstname)
values ('andysamberg@gmail.com', 8953, 8005, 8005, null, 'Andy');

SELECT firstname,
       Email,
       Wohnort_PLZ as 'Wohnort',
       Heimatort_PLZ as 'Heimatort',
       Arbeitsort_PLZ as 'Arbeitsort',
       h.Hobby
from personen
         left join orte o on Heimatort_PLZ = o.PLZ AND Arbeitsort_PLZ = o.PLZ
    AND Wohnort_PLZ = o.PLZ left join hobbies h on Hobbies = h.ID;

INSERT INTO pers_hobbies(person_id, hobby_id) SELECT Email, Hobbies from personen;