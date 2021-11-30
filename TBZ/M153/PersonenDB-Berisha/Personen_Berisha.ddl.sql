create schema `m153-db` collate utf8mb4_0900_ai_ci;
use `m153-db`;
create table hobbies
(
	ID int not null
		primary key,
	Hobby varchar(50) null
);

create table orte
(
	PLZ varchar(4) not null
		primary key,
	Ort varchar(30) null
);

create table personen
(
	Email varchar(50) not null
		primary key,
	Wohnort_PLZ varchar(4) null,
	Arbeitsort_PLZ varchar(4) null,
	Heimatort_PLZ varchar(4) null,
	Hobbies int null,
	firstname varchar(50),
	constraint Heimatort
		foreign key (Heimatort_PLZ) references orte (PLZ),
	constraint fk_Arbeitsort
		foreign key (Arbeitsort_PLZ) references orte (PLZ),
	constraint fk_Wohnort
		foreign key (Wohnort_PLZ) references orte (PLZ)
);

create table pers_hobbies
(
	ID int not null
		primary key,
	person_id varchar(50) null,
	hobby_id int null,
	constraint fk_hobby_id
		foreign key (hobby_id) references hobbies (ID),
	constraint fk_person_id
		foreign key (person_id) references personen (Email)
);
ALTER TABLE pers_hobbies modify ID int auto_increment;