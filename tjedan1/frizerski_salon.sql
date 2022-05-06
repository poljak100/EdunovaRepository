drop database if exists frizerski_salon;
create database frizerski_salon;
use frizerski_salon;

create table radnik(
    ime varchar(50),
    prezime varchar(50),
    broj varchar(50),
    oib varchar(50)
);

create table korisnik0(
    ime varchar(50),
    prezime varchar(50),
    broj varchar(50)
);

create table usluga(
    sisanje varchar(50),
    brijanje varchar(50)
);