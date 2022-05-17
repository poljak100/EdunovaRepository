--C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Dino\Desktop\EdunovaRepository\zavrsni\djecijivrtic.sql

drop database if exists djeciji_vrtic;
create database djeciji_vrtic default charset utf8mb4;
use djeciji_vrtic;

create table djecija_igraonica(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena varchar(50),
    mjesto varchar(50),
    certifikat boolean 
);

create table skupina (
    sifra int not null primary key auto_increment,
    datumpocetka datetime,
    naziv  int not null,
    maksimalnodjece varchar(50) not null,
    teta int not null,
    djeca int not null,
    djecija_igraonica int not null
    
);

create table djeca(
    sifra int not null primary key auto_increment,
    osoba int not null,
    skupina int not null
);

create table teta(
    sifra int not null primary key auto_increment,
    osoba int not null,
    iban varchar(50),
    broj_mobitela varchar(50),
    skupina int not null
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null ,
    prezime varchar(50) not null,
    oib char(11),
    spol varchar(50)
    
);

alter table teta  add foreign key (osoba) references osoba  (sifra);
alter table djeca  add foreign key (osoba) references osoba  (sifra);

alter table skupina  add foreign key (djeca) references djeca  (sifra);
alter table skupina  add foreign key (teta) references teta  (sifra);

alter table skupina add foreign key (djecija_igraonica) references djecija_igraonica (sifra);
