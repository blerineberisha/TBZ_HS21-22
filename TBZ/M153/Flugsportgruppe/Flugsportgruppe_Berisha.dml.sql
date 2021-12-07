use `flugsportgruppe`;

insert into
    flugart(id, beschreibung)
values
    (10, 'Privat'),
    (20, 'Grundschulung DC'),
    (30, 'Grundschulung Solo'),
    (40, 'Weiterbildung DC'),
    (50, 'Weiterbildung Solo'),
    (44, 'Gletscher DC'),
    (55, 'Gletscher Solo'),
    (15, 'Gletscher Privat'),
    (11, 'Gewerbsmässige Flüge');

insert into
    kunde(name, vorname, geb_dat) value ('Berisha', 'Blerinë', DATE('2002-06-23'));

insert into
    kunde(name, vorname, geb_dat) value ('Blaser', 'Milena', DATE('1998-06-28'));

insert into
    kunde(name, vorname, geb_dat) value ('Esteban', 'Janna', DATE('2004-02-18'));

insert into
    flugplatz(ort) value(('Zürich'));

insert into
    flugplatz(ort) value(('Schwyz'));

insert into
    flugplatz(ort) value(('Zug'));

insert into
    flugplatz(ort) value(('Brig'));

insert into
    flugzeug(flugzeug_kennung, flugzeugbezeichnung) value('HBI-XWOW', 'coolest plane');

insert into
    flugzeug(flugzeug_kennung, flugzeugbezeichnung) value('HBX-ZWDO', 'nvm this is cooler');

insert into
    flugzeug(flugzeug_kennung, flugzeugbezeichnung) value('HBJ-UWID', 'hmm not as cool');

insert into
    flugzeug(flugzeug_kennung, flugzeugbezeichnung) value('HBD-QISD', 'ok this is uncool');

INSERT INTO
    flugzeug(flugzeug_kennung, flugzeugbezeichnung) value ('NX-67-34a', 'vorgegeben');

INSERT INTO
    flugrapport(
        kundennummer,
        flugart_id,
        flugplatz_abflug,
        flugplatz_ziel,
        startzeit,
        landezeit,
        flugdauer_min,
        flugzeugkennung,
        stoerungen
    ) value(
        1,
        40,
        2,
        4,
        '2021-06-13 8:30:00',
        '2021-06-13 9:30:00',
        60,
        'NX-67-34a',
        'Steuerung funktioniert nicht sehr gut'
    );

insert into
    flugrapport(
        kundennummer,
        flugart_id,
        flugplatz_abflug,
        flugplatz_ziel,
        startzeit,
        landezeit,
        flugdauer_min,
        flugzeugkennung,
        stoerungen
    ) value(
        2,
        55,
        2,
        3,
        '2021-02-13 17:00:00',
        '2021-02-13 17:30:00',
        30,
        'HBI-XWOW',
        'Motor ausgefallen'
    );

insert into
    flugrapport(
        kundennummer,
        flugart_id,
        flugplatz_abflug,
        flugplatz_ziel,
        startzeit,
        landezeit,
        flugdauer_min,
        flugzeugkennung,
        stoerungen
    ) value(
        3,
        10,
        4,
        2,
        '2021-02-13 10:00:00',
        '2021-02-13 10:10:00',
        10,
        'HBD-QISD',
        ''
    );

insert into
    flugrapport(
        kundennummer,
        flugart_id,
        flugplatz_abflug,
        flugplatz_ziel,
        startzeit,
        landezeit,
        flugdauer_min,
        flugzeugkennung,
        stoerungen
    ) value(
        1,
        40,
        3,
        1,
        '2021-12-02 13:00:00',
        '2021-02-13 14:30:00',
        90,
        'HBJ-UWID',
        'Tank musste aufgefüllt werden.'
    );

INSERT INTO
    flugrapport(
        kundennummer,
        flugart_id,
        flugplatz_abflug,
        flugplatz_ziel,
        startzeit,
        landezeit,
        flugdauer_min,
        flugzeugkennung,
        stoerungen
    ) value(
        2,
        10,
        4,
        4,
        '2021-09-13 8:30:00',
        '2021-09-13 9:30:00',
        60,
        'HBX-ZWDO',
        ''
    );

#task 1
create view task1 as
SELECT
    DISTINCT k.name,
    k.Vorname,
    flugzeugkennung,
    f.flugzeugbezeichnung
from
    flugrapport
    left join kunde k on flugrapport.kundennummer = k.kundennummer
    left join flugzeug f on flugrapport.flugzeugkennung = f.flugzeug_kennung;

#task 2
create view task2 as
SELECT
    DATE(startzeit),
    f.ort AS 'Flugplatz'
from
    flugrapport
    join flugplatz f on f.id = flugrapport.flugplatz_abflug
WHERE
    flugplatz_abflug = flugplatz_ziel;

#task 3
create view task3 as
SELECT
    k.name,
    k.vorname,
    flugdauer_min,
    f.flugzeugbezeichnung
from
    flugrapport
    join kunde k on flugrapport.kundennummer = k.kundennummer
    join flugzeug f on f.flugzeug_kennung = flugrapport.flugzeugkennung;

#task 4
create view task4 as
SELECT
    flugzeugkennung,
    startzeit,
    landezeit,
    f.ort as 'Startplatz',
    fl.ort as 'Landeplatz'
from
    flugrapport
    join flugplatz f on flugrapport.flugplatz_abflug = f.id
    join flugplatz fl on flugrapport.flugplatz_ziel = fl.id
where
    flugart_id = 55
    OR flugart_id = 44
    OR flugart_id = 15;

#task 5
create view task5 as
SELECT
    flugdauer_min as 'Flugdauer[Min]',
    flugplatz_abflug as 'Startort',
    flugplatz_ziel as 'Landeplatz',
    DATE(startzeit) as 'Datum',
    k.name,
    k.vorname
from
    flugrapport
    join kunde k on flugrapport.kundennummer = k.kundennummer
WHERE
    flugdauer_min = (
        SELECT
            max(flugdauer_min)
        from
            flugrapport
    );

#task 6
create view task6 as
SELECT
    k.vorname as 'Vorname',
    k.name as 'Nachname',
    flugdauer_min as 'Flugdauer in Min'
from
    flugrapport
    join kunde k on flugrapport.kundennummer = k.kundennummer
ORDER BY
    flugdauer_min DESC;

#task 7
create view task7 as
SELECT
    stoerungen,
    flugzeugkennung
from
    flugrapport
WHERE
    stoerungen != ''
LIMIT
    3;

#task 8
create view task8 as
select
    count(*) as 'Anzahl Flüge',
    o.ort as 'Flugplatz'
from
    flugrapport
    join flugplatz o on flugrapport.flugplatz_abflug = o.id
where
    flugplatz_abflug = flugplatz_ziel
group by
    flugplatz_abflug;

#task 9
create view task9 as
SELECT
    flugzeugkennung as 'Flugzeug',
    ROUND((flugdauer_min / 60), 2) as 'Flugdauer in h',
    k.vorname,
    k.name
from
    flugrapport
    join kunde k on flugrapport.kundennummer = k.kundennummer;

#task 10
create view task10 as
SELECT
    k.vorname,
    k.name,
    count(*)
from
    flugrapport
    join kunde k on flugrapport.kundennummer = k.kundennummer
group by
    k.kundennummer
order by
    count(*) desc;

#task 11
create view task11 as
select flugzeugkennung, k.vorname, k.name, DATE(startzeit), flugdauer_min, o.ort from flugrapport
join kunde k on flugrapport.kundennummer = k.kundennummer
join flugplatz o on flugrapport.flugplatz_abflug = o.id
where flugzeugkennung='NX-67-34a';

#task12
create view task12 as
select f.flugzeugbezeichnung, stoerungen, DATE(startzeit), flugplatz_abflug as 'Startflugplatz',
       flugplatz_ziel as 'Landeflugplatz' from flugrapport
join flugzeug f on f.flugzeug_kennung = flugrapport.flugzeugkennung;