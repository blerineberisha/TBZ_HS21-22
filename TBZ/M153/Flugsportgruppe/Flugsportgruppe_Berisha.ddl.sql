create schema flugsportgruppe;

use `flugsportgruppe`;

create table flugart(
    id INT PRIMARY KEY,
    beschreibung VARCHAR(50) NOT NULL
);

CREATE TABLE kunde (
    kundennummer int auto_increment primary key,
    name varchar(50) not null,
    vorname varchar(50) not null,
    geb_dat date not null
);

create table flugplatz (
    id int auto_increment primary key,
    ort varchar(30) not null
);

create table flugzeug (
    flugzeug_kennung varchar(10) not null primary key,
    flugzeugbezeichnung varchar(20) not null
);

create table flugrapport (
    flugrapportnummer int auto_increment primary key,
    kundennummer int not null,
    flugart_id int not null,
    flugplatz_abflug int not null,
    flugplatz_ziel int not null,
    startzeit datetime not null,
    landezeit datetime not null,
    flugdauer_min int not null,
    flugzeugkennung varchar(10) not null,
    stoerungen varchar(255),
    constraint fk_kundennummer foreign key (kundennummer) references kunde (kundennummer),
    constraint fk_flugart_id foreign key (flugart_id) references flugart (id),
    constraint fk_flugplatz_abflug foreign key (flugplatz_abflug) references flugplatz (id),
    constraint fk_flugplatz_ziel foreign key (flugplatz_ziel) references flugplatz (id),
    constraint fk_flugzeugkennung foreign key (flugzeugkennung) references flugzeug (flugzeug_kennung)
);