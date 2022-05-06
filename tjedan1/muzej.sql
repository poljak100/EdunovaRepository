drop database if exists muzej;
create database muzej;
use muzej;

create table izlozba(
    ime varchar(50),
    vrijeme_izlozbe varchar(50),
    mjesto varchar(50),
    adresa varchar(50)
);

create table djela(
    ime_djela varchar(50),
    vlasnik varchar(50),
    datum_djela varchar(50)
);
 
create table kustos(
    ime varchar(50),
    prezime varchar(50),
    email varchar(50),
    broj_telefona varchar(50)

);