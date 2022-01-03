create table schutzalter
(
    Kennnr       int         not null
        primary key,
    Schutzalter  int         null,
    Beschreibung varchar(50) null
);

INSERT INTO LB1.schutzalter (Kennnr, Schutzalter, Beschreibung) VALUES (0, 0, 'kein Schutzalter');
INSERT INTO LB1.schutzalter (Kennnr, Schutzalter, Beschreibung) VALUES (1, 16, 'Wein/Bier');
INSERT INTO LB1.schutzalter (Kennnr, Schutzalter, Beschreibung) VALUES (2, 18, 'Spirituosen');