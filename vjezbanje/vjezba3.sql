--C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 <C:\Users\Dino\Desktop\EdunovaRepository\vjezbanje\vjezba3.sql

drop database if exists vjezba3;
create database vjezba3 default charset utf8mb4;
use vjezba3;

create  table brat(
sifra int not null primary key auto_increment, 
jmbag char(11),
ogrlica int,
ekstroventno bit 
);

create table prijatelj_brat (
sifra int not null primary key auto_increment,
prijatelj int not null,
brat int not null
);

create table prijatelj(
sifra int Not null primary key auto_increment,
kuna decimal(16, 10) null,
haljina varchar(37)null,
lipa decimal(13, 10) null,
dukserica varchar(31) null ,
indiferentno bit
);

create table ostavljena (
sifra int not null primary key auto_increment,
kuna decimal(17, 5) null,
lipa decimal(15, 6) null,
majica varchar(36) null,
modelnaocala varchar(31) not null,
prijatelj int null
);

create table snasa (
sifra int not null primary key auto_increment,
introvertno bit null,
kuna decimal(15, 6) not null,
eura decimal(12, 9) not null,
treciputa datetime null,
ostavljena int not null   
);

create table punica(
sifra int not null primary key auto_increment,
asocijalno bit null,
kratkamajica varchar(44) null,
kuna decimal(13, 8) not null,
vesta varchar(32) not null,
snasa int  null    
);

create table svekar(
sifra int not null primary key auto_increment,
novcica decimal(16, 8) not null,
suknja varchar(44) not null,
bojakose varchar(36) null,
prstena int null,
narukvica int not null,
cura int not null
);

create table cura(
sifra int not null primary key auto_increment,
dukserica varchar(49) null,
maraka decimal(13, 7) null,
drugiputa datetime null,
majica varchar(49) null,
novcica decimal(15, 8) null,
ogrlica int not null
);

--U tablice snasa, ostavljena i prijatelj_brat unesite po 3 retka. (7)

alter table prijatelj_brat add foreign key (brat) references brat (sifra);
alter table prijatelj_brat add foreign key (prijatelj) references prijatelj (sifra);
alter table ostavljena add foreign key (prijatelj) references prijatelj (sifra);
alter table snasa add foreign key (ostavljena) references ostavljena (sifra);
alter table punica add foreign key (snasa) references snasa (sifra);
alter table svekar add foreign key (cura) references cura (sifra);

--U tablice snasa, ostavljena i prijatelj_brat unesite po 3 retka. (7)

insert into brat (sifra, jmbag, ogrlica, ekstroventno )
values      (1,'83928345643',2,3),
            (2,'23458345643',3,5),
            (3,'56445672113',4,7);

insert into prijatelj (sifra, kuna, haljina, lipa, dukserica, indiferentno )
values      (1,15.5,'haljina1',15.7,'duskerica1',2),
            (2,12.5,'haljina2',13.7,'duskerica2',3),
            (3,13.5,'haljina3',11.7,'duskerica3',2);

insert into prijatelj_brat(sifra,prijatelj,brat) 
values      (1,2,3),        
            (2,1,3),
            (3,3,2);

insert into ostavljena(sifra, kuna, lipa, majica, modelnaocala, prijatelj)
values      (1,17.5,15.6,'majica1','naocale1',1),
            (2,17.5,15.6,'majica2','naocale2',3),
            (3,17.5,15.6,'majica3','naocale3',2);

insert into snasa(sifra, introvertno, kuna, eura, treciputa, ostavljena )
values      (1,2,15.6,12.9,'2020-02-03',1),
            (2,3,15.6,12.9,'2020-02-04',3),
            (3,4,15.6,12.9,'2020-02-05',2);  


insert into cura(sifra, dukserica, maraka, drugiputa, majica, novcica, ogrlica ) 
values      (1,'dukserica1',13.7,'2021-03-04','majica1',15.8,2),
            (2,'dukserica2',13.7,'2021-03-02','majica2',15.8,3),
            (3,'dukserica3',13.7,'2021-03-03','majica3',15.8,4);
            
insert into svekar(sifra, novcica, suknja, bojakose, prstena, narukvica, cura )
values      (1,16.8,'suknja1','bojakose1',2,3,1),
            (2,16.8,'suknja2','bojakose2',3,4,3),
            (3,16.8,'suknja3','bojakose3',4,5,2);

update svekar set suknja='Osijek';


delete from punica where kratkamajica='AB';
select majica from ostavljena where lipa !=9 and lipa != 10 and lipa != 20 and lipa != 30 and lipa != 35;

--
select a.ekstroventno, f.vesta, e.kuna 
from
brat a right join prijatelj_brat b
on a.sifra = b.brat 
inner join prijatelj c
on b.prijatelj = c.sifra 
inner join ostavljena d 
on c.sifra = d.prijatelj 
left join snasa e
on d.sifra = e.ostavljena 
left join punica f
on e.sifra = f.snasa;

select b.haljina, b.lipa
from 
prijatelj_brat a right join prijatelj b 
on a.prijatelj =b.sifra;

