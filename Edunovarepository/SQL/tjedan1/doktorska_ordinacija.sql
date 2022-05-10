drop database if exists doktorska_ordinacija;
create database doktorska_ordinacija;
use doktorska_ordinacija;

create table doktor(
    ime varchar(50),
    prezime varchar(50),
    broj varchar(50),
    oib varchar(50)
);

create table pacijent(
    ime varchar(50),
    prezime varchar(50),
    broj varchar(50)
);

create table sestra(
    sisanje varchar(50),
    brijanje varchar(50)
);

