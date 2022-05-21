--C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Dino\Desktop\EdunovaRepository\zavrsni\tvrtka.sql

drop database if exists tvrtka;
create database tvrtka default charset utf8mb4;
use tvrtka;

create table poslovnica (
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    mjesto varchar(50),
    email varchar(50)
);

create table proizvodi (
    sifra int not null primary key auto_increment,
    naziv_proizvoda varchar(50) not null,
    rok_trajanja datetime ,
    cijena_proizvoda dec,
    proizvodac varchar(50) not null,
    poslovnica int not null
);

create table distribucija (
    sifra int not null primary key auto_increment,
    mjesto varchar(50),
    vrijeme datetime,
    kolicina dec,
    proizvodi int not null,
    putnik int not null
);

create table putnik (
    sifra int not null primary key auto_increment,
    naziv_terena varchar(50),
    osoba int not null,
    smjena varchar(50),
    radno_vrijeme datetime
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    mjesto varchar(50),
    oib char (11),
    datum_rodenja datetime,
    putnik int not null
);


alter table osoba add foreign key (putnik) references putnik (sifra);

alter table distribucija  add foreign key (putnik) references putnik (sifra);

alter table distribucija add foreign key (proizvodi)
references proizvodi (sifra);

alter table proizvodi add foreign key (poslovnica) references poslovnica (sifra);




