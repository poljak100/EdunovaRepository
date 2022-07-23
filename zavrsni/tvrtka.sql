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

create table proizvod (
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
    osoba int not null
);

create table osoba (
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    mjesto_stanovanja varchar(50),
    oib char (11),
    datum_rodenja datetime,
    naziv_terena varchar(50),
    smjena varchar(50)   
);

create table proizvod_distribucija(
    sifra int not null primary key auto_increment,
    proizvod int not null,
    distribucija int not null
);


alter table distribucija  add foreign key (osoba) references osoba (sifra);
alter table proizvod add foreign key (poslovnica) references poslovnica (sifra);

alter table proizvod_distribucija add foreign key (proizvod) references proizvod (sifra);
alter table proizvod_distribucija add foreign key (distribucija) references distribucija (sifra);


insert into osoba (sifra ,ime ,prezime ,mjesto_stanovanja ,oib ,datum_rodenja ,naziv_terena ,smjena )
values  (1,'Marko','Perić','Osijek',283927475829,'1988-02-01','Osijek','Poslijepodne'),
        (2,'Ivana','Mandić','Osijek',81234029387,'1993-04-06','Osijek','Poslijepodne'),
        (3,'Dea','Horvat','Tenja',98210092234,'1969-07-05','Našice','Prijepodne'),
        (4,'Ivan','Hodak','Vukovar',99210036472,'1999-04-04','Vukovar','Prijepodne'),
        (5,'Matej','Kolić','Brijest',83920109384,'1995-06-06','Slatina','Poslijepodne'),
        (6,'Sonja','Galić','Višnjevac',00938741934,'1978-03-05','Osijek','Prijepodne'),
        (7,'Dino','Majer','Bilje',0394718273921,'1994-01-01','Baranja','Poslijepodne'),
        (8,'Ema','Krešo','Antunovac',938572819384,'1988-02-01','Osijek','Poslijepodne'),
        (9,'Kristijan','Karlak','Osijek',53928333847,'1971-09-04','Osijek','Prijepodne'),
        (10,'Marko','Tomić','Đakovo',19382634442,'1991-12-03','Đakovo','Poslijepodne'),
        (11,'Siniša','Modrić','Bizovac',39843029385,'1994-02-03','Osijek','Prijepodne'),
        (12,'Marta','Kazo','Tenja',7382930293845,'1998-11-04','Požega','Prijepodne');


insert into poslovnica (sifra ,naziv ,mjesto ,email )
values (1,'Ledo', 'Osijek','LedoOsijek@gmail.hr');

insert into proizvod (sifra ,naziv_proizvoda ,rok_trajanja ,cijena_proizvoda ,proizvodac ,poslovnica )




