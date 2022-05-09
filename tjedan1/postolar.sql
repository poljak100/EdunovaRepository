drop database if exists postolar;
create database postolar;
use postolar;

create table postolar(
    ime varchar(50),
    prezime varchar(50),
    adresa varchar(50),
    oib varchar(50)
);

create table korisnik(
    ime varchar(50),
    prezime varchar(50),
    broj varchar(50)
);

create table segrt_pomagac(
    bojanje varchar(50),
    uredivanje varchar(50),
    popravljanje varchar(50)
);