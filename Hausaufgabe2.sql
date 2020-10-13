use Projekt;

create table Projektstatus( 
	StatusID int not null,
    Projektstatus varchar(100),      
    primary key (StatusID)
);

create table Stadt(
	StadtID int not null,
    Stadtname varchar(100),
    primary key (StadtID)
);

create table Resort(
	ResortID int not null,
    Bezeichung varchar(250),
    StadtID int not null,
    primary key (ResortID),
    foreign key (StadtID) references Stadt(StadtID)
);

create table Mitarbeiterstatus(
	MitarbeiterstatusID int not null,
    Mitarbeiterstatus varchar(250),
    primary key (MitarbeiterstatusID)
);

create table Mitarbeiterposition(
	PositionID int not null,
    Mitarbeiterposition varchar(250),		
    primary key (PositionID)
);

create table Mitarbeiter(
	Personalnummer int not null,
    Vorname varchar(25),
    Nachname varchar(25),
    ResortID int not null,
    PositionID int not null,
    MitarbeiterstatusID int not null,
    primary key (Personalnummer),
    foreign key (ResortID) references Resort(ResortID),
    foreign key (PositionID) references Mitarbeiterposition(PositionID),
    foreign key (MitarbeiterstatusID) references Mitarbeiterstatus(MitarbeiterstatusID)
);

create table Projekt(
	ProjektID int not null,
    Projektbezeichnung varchar(250),
    Kurzbeschreibung varchar(250),
    Startdatum date,
    Abschlussdatum date,
    Projektstatus int not null,
    Personalnummer int not null,
    primary key (ProjektID),
    foreign key (Projektstatus) references Projektstatus(StatusID),
    foreign key (Personalnummer) references Mitarbeiter(Personalnummer)
);

