/* creez baza de date*/
create database Varan;

/*folosesc baza de date*/
use Varan;

/*creez tabela Categorii*/
create table categorii
(DenumireCategorie VARCHAR(25) NOT NULL
);

/*adaug o coloana la tabela*/
alter table categorii
add column utilizare VARCHAR (25) NOT null;

/*sterg o coloana*/
alter table categorii drop utilizare;

/*modific proprietatile unei coloane*/
alter table categorii modify DenumireCategorie CHAR(25) Not null;

/*vad structura tabelei*/
desc categorii;

/*modific numele coloanei*/
alter table categorii change DenumireCategorie NumeCategorie char(25) not null;

/*modific numele tabelei*/
alter table categorii rename to Categorii;

/*sterg tabelul Categorii*/
drop table categorii;

CREATE TABLE produse (
  IDprodus int NOT NULL AUTO_INCREMENT,
  NumeProdus varchar(25) NOT NULL,
  PretProdus decimal(10,0) NOT NULL,
  GramajProdus int NOT NULL,
  Categorie varchar(25) NOT NULL,
  PRIMARY KEY (IDprodus)
);

insert into produse (NumeProdus, PretProdus, GramajProdus, Categorie)
values ('Clearhead', 15, 100, 'Par Matasos'), ('Indian Blend', 12, 80, 'Par Matasos'), ('Rapunzel', 25, 100, 'Par Matasos'), ('Scufita Verde', 15, 100, 'Par Matasos');

insert into produse (NumeProdus, PretProdus, GramajProdus, Categorie)
values ('Atinge-ma', 15, 100, 'Sapun Lichid&Solid'), ('Beezy', 15, 100, 'Sapun Lichid&Solid'), ('BioChar(m)', 20, 100, 'Sapun Lichid&Solid'), ('Delicate Love', 12, 80, 'Sapun Lichid&Solid'), ('Hop', 15, 100, 'Sapun Lichid&Solid'), ('Love is in the Air', 15, 100, 'Sapun Lichid&Solid'),
('Micul Print', 15, 100, 'Sapun Lichid&Solid'), ('Milky Way', 25, 200, 'Sapun Lichid&Solid'), ('Rhassoul', 15, 100, 'Sapun Lichid&Solid');

insert into produse (NumeProdus, PretProdus, GramajProdus, Categorie)
values ('Perfect Man', 35, 45, 'Deodorante'), ('Perfect Woman', 35, 45, 'Deodorante'), ('Senzatie Unica', 20, 100, 'Deodorante'), ('Smoothie', 25, 50, 'Deodorante');

insert into produse (NumeProdus, PretProdus, GramajProdus, Categorie)
values ('4 Anotimpuri', 50, 100, 'Copii Fericiti'), ('Happy Teeth', 18, 30, 'Copii Fericiti'), ('Dus Magic', 25, 200, 'Copii Fericiti'), 
('Bebe Pufos', 20, 50, 'Copii Fericiti'), ('Catifea', 20, 50, 'Copii Fericiti');

create table Clienti (
IDclient int not null auto_increment, 
Nume varchar (25) not null, 
Prenume varchar (25) not null, 
Adresa varchar (50) not null, 
Telefon int not null, 
email varchar (25) not null,
primary key (IDclient)
);

desc clienti;

create table Comenzi (
IDcomanda int not null auto_increment,
IDclient int not null,
DataComanda date not null,
primary key (IDComanda),
constraint fk_Comenzi_Clienti foreign key (IDclient) references Clienti(IDclient)
); 

desc Comenzi;

create table ProduseComandate (
IDcomanda int not null,
IDprodus int not null,
Cantitate int not null,
constraint fk_ProduseComandate_Comenzi foreign key (IDcomanda) references Comenzi(IDcomanda),
constraint fk_ProduseComandate_Produse foreign key (IDprodus) references Produse(IDprodus),
constraint LinieUnica unique (IDcomanda, IDprodus),
primary key (IDcomanda, IDprodus)
); 

desc ProduseComandate;

insert into Clienti (Nume, Prenume, Adresa, Telefon, email)
values ('Lupascu', 'Giorgiana', 'strada Muncii nr. 22, Lupeni', 0722568945, 'giorgi@gmail.com'), 
('Cardea', 'Loredana', 'aleea Stiintei nr. 14, Cluj', 0745123456, 'lore12@gmail.com'),
('Lelea', 'Flavius', 'strada Stelei nr. 11, Lugoj', 0736142536, 'flavius_l@yahoo.com'),
('Mutu', 'Cosmin', 'strada Pacii nr. 3, Timisoara', 0356425626, 'cosmimutu@yahoo.com');

insert into Comenzi (IDclient, DataComanda)
values (1, '2023-01-12'), (2, '2022-11-11'), (3, '2022-05-16'), (1, '2022-12-25');

insert into ProduseComandate (IDcomanda, IDprodus, Cantitate)
values (1, 3, 1), (1, 6, 1), (1, 8, 2), (2, 1, 3), (2, 5, 1), (2, 7, 1), (3, 2, 1), (3, 5, 1), (3, 4, 2), (3, 3, 3), (4, 8, 1), (4, 2, 3), (4, 9, 1);

insert into ProduseComandate (IDcomanda, IDprodus, Cantitate)
values (1, 15, 1), (1, 19, 1), (2, 22, 1), (2, 16, 1), (3, 20, 1), (3, 21, 1), (4, 22, 2), (4, 16, 1);

/*vizualizez tabelul produse*/
select * from produse;

/*vizualizez tabelul clienti*/
select * from clienti;

/*vizualizez tabelul comenzi*/
select * from comenzi;

/*vizualizez tabelul produseComandate*/
select * from produsecomandate;

/*creez filtre - scot o coloana din tabel*/
select NumeProdus from produse;

/*creez filtru dupa pret produs*/
select * from produse where PretProdus>=20;
select * from produse where PretProdus<=25;
select * from produse where PretProdus=35;

/*creez filtru dupa pret produs si categorie*/
select * from produse where PretProdus>=20 and Categorie='Copii Fericiti';

/*creez filtru dupa gramaj produs si nume produs*/
select * from produse where GramajProdus>=100 and NumeProdus like'D%';

/*creez filtru dupa pret maxim*/
select max(PretProdus) from produse;

/*vizualizez toate produsele comandate*/
select * from produse inner join ProduseComandate on produse.IDprodus = ProduseComandate.IDprodus;

/*vizualizez toate produsele care nu au fost deloc comandate*/
select * from produse left join ProduseComandate on produse.IDprodus = ProduseComandate.IDprodus where ProduseComandate.IDprodus is null;

/*vizualizez toate produsele comandate in cantitate mai mare decat 2 bucati*/
select * from produse right join ProduseComandate on produse.IDprodus = ProduseComandate.IDprodus where cantitate>2;

/*vizualizez clientii care au plasat comenzi*/
select * from clienti left join comenzi on clienti.IDclient = comenzi.IDclient;

/*vizualizez clientii care nu au plasat comenzi*/
select * from clienti left join comenzi on clienti.IDclient = comenzi.IDclient where comenzi.IDclient is null;

/*ordonez produsele descrescator dupa pret, afisand primele 5 produse*/
select * from produse order by PretProdus desc limit 5;

/*grupez informatii din 3 tabele, folosind alias-uri si afisand numele produselor comandate si insumand cantitatile, ordonate descrescator*/
select p.NumeProdus, sum(pc.Cantitate)
from produse p 
inner join produsecomandate pc on p.IDprodus = pc.IDprodus
inner join comenzi c on c.IDcomanda = pc.IDcomanda
group by p.NumeProdus
order by sum(pc.Cantitate) desc;

/*adaug coloana DataLivrare in tabela Comenzi*/
alter table comenzi
add column DataLivrare date not null;

/*adaug date in colana DataLivrare*/
update comenzi set DataLivrare = ('2023-01-15') where idcomanda = 1;
update comenzi set DataLivrare = ('2022-11-13') where idcomanda = 2;
update comenzi set DataLivrare = ('2022-05-19') where idcomanda = 3;
update comenzi set DataLivrare = ('2022-12-29') where idcomanda = 4;

/* adaug si alte comenzi*/
insert into Comenzi (IDclient, DataComanda, DataLivrare)
values (1, '2023-01-12'), (2, '2022-11-11'), (3, '2022-05-16'), (1, '2022-12-25');

/*pregateste produsele comandate care au termen de livrare in luna decembrie 2022*/
