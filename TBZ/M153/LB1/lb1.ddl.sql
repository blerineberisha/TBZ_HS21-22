create table db_Company.Abteilung
(
	Kennnummer int not null
		primary key,
	Name varchar(50) not null
);

create table db_Company.Beruf
(
	Kennnummer int not null
		primary key,
	Name varchar(50) not null
);

create table db_Company.Mitarbeiter
(
	Personalnummer varchar(12) not null
		primary key,
	Nachname varchar(50) not null,
	Vorname varchar(50) not null,
	Vorgesetzter varchar(12) null,
	Abteilung int null,
	Beruf int null,
	constraint fk_abteilung
		foreign key (Abteilung) references db_Company.Abteilung (Kennnummer),
	constraint fk_beruf
		foreign key (Beruf) references db_Company.Beruf (Kennnummer),
	constraint fk_vorgesetzter
		foreign key (Vorgesetzter) references db_Company.Mitarbeiter (Personalnummer)
);
