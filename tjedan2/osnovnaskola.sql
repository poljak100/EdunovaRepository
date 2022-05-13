# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Dino\Desktop\EdunovaRepository\tjedan2\osnovnaskola.sql

drop database if exists osnovnaskola;
create database osnovnaskola default charset utf8mb4;
use osnovnaskola;

create table radionice(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
datum_pocetka datetime not null
);

create table djeca(
sifra int not null primary key auto_increment,
ime varchar(100) not null, 
prezime varchar(100) not null,
datum_rodenja datetime 
);

create table uciteljica(
sifra int not null primary key auto_increment,
djeca int  not null,
radionice int  not null,
datum_pocetka datetime not null
);

alter table uciteljica add foreign key (radionice) references radionice (sifra);

alter table uciteljica add foreign key (djeca) references djeca (sifra);

insert into radionice (naziv)
values ('plava');

insert into radionice (naziv)
values ('crvena');


insert into djeca (ime, prezime)
values ('Ivana','Moros' );

insert into djeca (ime, prezime)
values ('Ivan','Horvat' );

insert into djeca (ime, prezime)
values ('Dea','Zec'  );

insert into uciteljica (radionice,djeca,datum_pocetka)
values (2,2,'2022-04-22');
insert into uciteljica (radionice,djeca,datum_pocetka)
values (1,1,'2022-04-22');
insert into uciteljica (radionice,djeca,datum_pocetka)
values (1,3,'2022-04-22');


