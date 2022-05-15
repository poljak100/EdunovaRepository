# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Dino\Desktop\EdunovaRepository\tjedan2\zupanija\zupanije.sql

drop database if exists zupanije;
create database zupanije default charset utf8mb4;
use zupanije;

create table zupanija (
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
zupan int not null
);

create table zupan (
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null
);

create table opcina (
sifra int not null primary key auto_increment,
zupanija int not null,
naziv varchar(50) not null
);

create table mjesto (
sifra int not null primary key auto_increment,
opcina int not null,
naziv  varchar(50) not null
);
--zamjena mjesto
alter table zupanija add foreign key (zupan) references zupan (sifra);
alter table opcina add foreign key (zupanija) references zupanija (sifra);
alter table mjesto add foreign key (opcina) references opcina (sifra);


insert into zupan (ime, prezime)
values  ('Roko', 'Poko') ,
        ('Tomislav', 'Hodak') ,
        ('Pero', 'Medo'),
        ('Zdena', 'Pjena');

insert into zupanija (naziv, zupan)
values  ('Vukovarko-srijemska',1),
        ('Osječko-baranjska',2),
        ('Brodsko-posavska',3),
        ('Istarska',4);

insert into opcina (naziv, zupanija)
values  ('Trpinja',1),
        ('Cerna',1),
        ('Čepin',2),
        ('Erdut',2),
        ('Vrpolje',3),
        ('Cernik',3);

insert into mjesto (naziv, opcina)
values  ('Vera',1),
        ('Ćelije',1),
        ('Pačetin',1),
        ('Lipovača',1);

insert into mjesto (naziv, opcina)
values  ('Tenja', 2),
        ('Brijest', 2),
        ('Antunovac', 2),
        ('Vuka', 2);

insert into mjesto (naziv, opcina)
values  ('Okučani', 3),
        ('Sibinj', 3),
        ('Vrpolje', 3),
        ('Štivica', 3);

--Promijeniti mjesta

update mjesto set naziv='Bilje' where sifra=1;
update mjesto set naziv='Bizovac' where sifra=2;
update mjesto set naziv='Samatovci' where sifra=3;
update mjesto set naziv='Čokadinci' where sifra=4;
update mjesto set naziv='Poganovci' where sifra=5;
update mjesto set naziv='Ivanovci' where sifra=6;

--obrisati 2 opcine
 --Cannot delete or update a parent row: a foreign key constraint fails (`zupanije`.`mjesto`, CONSTRAINT `mjesto_ibfk_1` FOREIGN KEY (`opcina`) REFERENCES `opcina` (`sifra`))






