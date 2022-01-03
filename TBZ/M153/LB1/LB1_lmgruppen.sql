create table lmgruppen
(
    GruppenNr   int         not null
        primary key,
    GruppenName varchar(50) not null
)
    collate = latin1_general_ci;

INSERT INTO LB1.lmgruppen (GruppenNr, GruppenName) VALUES (1, 'Getreide');
INSERT INTO LB1.lmgruppen (GruppenNr, GruppenName) VALUES (2, 'Kartoffeln und Stärke');
INSERT INTO LB1.lmgruppen (GruppenNr, GruppenName) VALUES (3, 'Zucker, Sirup, Honig');
INSERT INTO LB1.lmgruppen (GruppenNr, GruppenName) VALUES (4, 'Hülsenfrüchte, Nüsse, Kastanien, Kakao');
INSERT INTO LB1.lmgruppen (GruppenNr, GruppenName) VALUES (5, 'Gemüse');
INSERT INTO LB1.lmgruppen (GruppenNr, GruppenName) VALUES (6, 'Obst');
INSERT INTO LB1.lmgruppen (GruppenNr, GruppenName) VALUES (7, 'Fleisch');
INSERT INTO LB1.lmgruppen (GruppenNr, GruppenName) VALUES (8, 'Eier und Eikonserven');
INSERT INTO LB1.lmgruppen (GruppenNr, GruppenName) VALUES (9, 'Fische und Schaltiere');
INSERT INTO LB1.lmgruppen (GruppenNr, GruppenName) VALUES (10, 'Milch und -erzeugnisse  (ohne Butter)');
INSERT INTO LB1.lmgruppen (GruppenNr, GruppenName) VALUES (11, 'Öle und Fette');
INSERT INTO LB1.lmgruppen (GruppenNr, GruppenName) VALUES (12, 'alkoholische Getränke');
INSERT INTO LB1.lmgruppen (GruppenNr, GruppenName) VALUES (13, 'alkoholfreie Getränke');