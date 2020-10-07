create database mitarbeiter;
use mitarbeiter;
create table mitarbeiter 
(
	Mitarbeiter_ID int not null,
    Vorname varchar(255) not null,
    Nachname varchar(255) not null,
    Benutzername varchar(255) not null,
    primary key (Mitarbeiter_ID)
);

insert into mitarbeiter values (1, "Peter", "Müller", "PETMUE");
insert into mitarbeiter values (2, "Markus", "Wagner", "MARWAG");
insert into mitarbeiter values (3, "Hans", "Schmidt", "HANSCH");
insert into mitarbeiter values (4, "Anna", "Schneider", "ANNSCH");