# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Dino\Desktop\EdunovaRepository\Vjezba2\vjezba3.sql
drop database if exists vjezba3;
create database vjezba3 default charset utf8mb4;
use vjezba3;

create table rok(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    broj_rokova  varchar(50)
);

create table kolokvij(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    datum_pocetka datetime not null,
    datum_kraja datetime
);

create table student(
    sifra int not null primary key auto_increment,
    kolokvij int not null,
    rok int not null,
    datum_pocetka datetime not null,
    datum_kraja datetime
);

alter table student add foreign key (rok) references rok(sifra);
alter table student add foreign key (kolokvij) references kolokvij(sifra);

insert into rok (naziv)
values ('zimski');

insert into rok (naziv)
values ('ljetni');

insert into kolokvij (ime, datum_pocetka)
values ('matematika', '2022-02-03');
insert into kolokvij(ime, datum_pocetka)
values ('fizika', '2022-02-04');
insert into kolokvij(ime, datum_pocetka)
values ('kemija', '2022-02-05');
insert into kolokvij(ime, datum_pocetka)
values ('povijest', '2022-02-06');


insert into student (rok,kolokvij, datum_pocetka)
values (1, 1, '2022-02-03');
insert into student (rok,kolokvij, datum_pocetka)
values (1, 4, '2022-02-04');
insert into student (rok,kolokvij, datum_pocetka)
values (2,2, '2022-02-05');
insert into student (rok,kolokvij, datum_pocetka)
values (2, 3, '2022-02-05');
insert into student (rok,kolokvij, datum_pocetka)
values (2, 4, '2022-02-05');


