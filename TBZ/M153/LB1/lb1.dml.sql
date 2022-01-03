INSERT INTO Abteilung(Kennnummer, Name) values(0, 'CEO'), (1, 'Marketing'), (2, 'Verkauf'),(3, 'Service');
INSERT INTO Beruf(Kennnummer, Name) values(0, 'Elektro Ingenieur'),(1, 'Marketing Fachperson'),
                               (2, 'Eidg. Salesfachmann'), (3, 'KV'), (4, 'Elektroinstallateur'),
                               (5, 'Elektroniker');
INSERT INTO Mitarbeiter(Personalnummer, Nachname, Vorname, Vorgesetzter, Abteilung, Beruf) values
('123.456.001', 'Kundert', 'Rolf', NULL, 0, 0),
('123.300.001', 'Wunderli', 'Rosa', '123.456.001',1 ,1 ),
('123.200.001', 'Eigenherr', 'Rita', '123.456.001',2 ,2),
('123.200.002', 'Kernen', 'Urs', '123.200.001', 2,2),
('123.500.001', 'Wyss', 'Albert','123.456.001', 3, 4),
('123.300.002','Kunz','Erich','123.456.001',1 , NULL),
('123.500.002' ,'Hediger', 'Ulrich', '123.500.001', 3, 5),
('123.500.003', 'Breitenmoser', 'Urs', '123.500.001', 3,5),
('123.456.002', 'Häfliger', 'Rita', '123.500.001', 3, 3);