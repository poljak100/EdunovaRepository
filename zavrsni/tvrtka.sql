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
    sirovine varchar(50),
    ime_proizvoda varchar(50) not null,
    cijena_proizvoda dec,
    proizvodac varchar(50) not null,
    certifikat boolean,
    poslovnica int not null
);

create table distribucija (
    sifra int not null primary key auto_increment,
    mjesto varchar(50),
    vrijeme datetime,
    kolicina dec,
    proizvodi int not null
);

create table vozac_kamiona (
    sifra int not null primary key auto_increment,
    naziv_terena varchar(50),
    osoba int not null,
    distribucija int not null,
    smjena varchar(50),
    radno_vrijeme datetime
);

create table putnik (
    sifra int not null primary key auto_increment,
    naziv_terena varchar(50),
    osoba int not null,
    distribucija int not null,
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
    vozac_kamiona int not null,
    putnik int not null
);

alter table osoba add foreign key (vozac_kamiona) references vozac_kamiona (sifra);
alter table osoba add foreign key (putnik) references putnik (sifra);

alter table vozac_kamiona add foreign key (distribucija) references distribucija (sifra);
alter table putnik add foreign key (distribucija) references distribucija (sifra);

alter table distribucija add foreign key (proizvodi)
references proizvodi (sifra);

alter table proizvodi add foreign key (poslovnica) references poslovnica (sifra);



