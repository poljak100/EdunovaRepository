drop database if exists salon;
create database salon;
use salon;

create table djelatnik(
    ime varchar(50),
    prezime varchar(50),
    broj varchar(50),
    oib varchar(50),
    email varchar(50)
);

create table korisnik(
    ime varchar(50),
    prezime varchar(50),
    broj varchar(50)
);
 
create table usluga(
    lice varchar(50),
    ruke varchar(50),
    masaza varchar(50),
    depilacija varchar(50)

);