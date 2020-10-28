#a
select
	s.name as Schuelername,
    o.name as Wohnort
from
	schueler s,
    smartphones sp,
    orte o
where
	s.idOrte = o.id
    and s.idSmartphones = sp.id
    and sp.marke = 'Apple'
;

#b1
select
	l.name as Lehrername,
    s.name as Schuelername
from
	lehrer_hat_schueler ls,
    lehrer l,
    schueler s
where
	ls.idLehrer = l.id
    and ls.idSchueler = s.id
;

#b2
select 
	s.name as Schuelername,
    o.name as Wohnort
from
	lehrer_hat_schueler ls,
    lehrer l,
    schueler s,
    orte o
where 
	s.idOrte = o.id
	and ls.idLehrer = l.id
    and ls.idSchueler = s.id
    and l.name = 'Maier'
;

#c
select
	s.name as Schuelername,
    o.name as Wohnort,
    sp.marke as Smartphonemarke
from
	schueler s,
    orte o,
    smartphones sp
where 
	s.idSmartphones = sp.id
    and s.idOrte = o.id
    and o.name = 'Emmendingen'
;

#d
select
	s.name as Schuelername,
    o.name as Wohnort,
    l.name as Lehrername
from 
	lehrer_hat_schueler ls,
    lehrer l,
    schueler s,
    orte o
where
	ls.idLehrer = l.id
    and ls.idSchueler = s.id
    and s.idOrte = o.id
    and o.name = 'Emmendingen'
    and l.name = 'Huber'
;
