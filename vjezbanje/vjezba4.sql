--C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 <C:\Users\Dino\Desktop\EdunovaRepository\vjezbanje\vjezba4.sql

drop database if exists vjezba4;
create database vjezba4 default charset utf8mb4;
use vjezba4;

create table prijatelj(
sifra int not null primary key auto_increment,
eura decimal(16, 9) null,
prstena int not null,
gustoca decimal(16, 5) null,
jmbag char(11) not null,
suknja varchar(47) not null,
becar int not null
);

create table becar(
sifra int not null primary key auto_increment,
novcica decimal(14, 8) null,
kratkamajica varchar(48) not null,
bojaociju varchar(36) not null,
snasa int not null
);

create table snasa(
sifra int not null primary key auto_increment,
introvertno bit null,
treciputa datetime null,
haljina varchar(44) not null,
zena int not null
);

create table zena(
sifra int not null primary key auto_increment,
suknja varchar(39) not null,
lipa decimal(18, 7) null,
prstena int not null
);

create table zena_mladic(
sifra int not null primary key auto_increment,
zena int not null,
mladic int not null
);

create table mladic(
sifra int not null primary key auto_increment,
kuna decimal(15, 9) null,
lipa decimal(18, 5) null,
nausnica int null,
stilfrizura varchar(49) null,
vesta varchar(34) not null
);

create table punac(
sifra int not null primary key auto_increment,
treciputa datetime null,
majica varchar(46) null,
jmbag char(11) not null,
novcica decimal(18, 7) not null,
maraka decimal(12, 6) not null,
ostavljen int not null
);

create table ostavljen(
sifra int not null primary key auto_increment,
modelnaocala varchar(43) null,
introvertno bit null,
kuna decimal(14, 10) null
);


alter table prijatelj add foreign key (becar) references becar(sifra);
alter table becar add foreign key (snasa) references snasa (sifra);
alter table snasa add foreign key (zena) references zena (sifra);
alter table zena_mladic add foreign key (zena) references zena (sifra);
alter table zena_mladic add foreign key (mladic) references mladic (sifra);
alter table punac add foreign key (ostavljen) references ostavljen (sifra);

--U tablice becar, snasa i zena_mladic unesite po 3 retka. (7)

insert into mladic(sifra, kuna, lipa, nausnica, stilfrizura, vesta )
values      (1,15.9,18.5,1,'frizura1','vesta1'),
            (2,15.9,18.5,2,'frizura2','vesta2'),
            (3,15.9,18.5,3,'frizura3','vesta3');

insert into zena(sifra, suknja, lipa, prstena)
values      (1,'suknja1',18.7,1),
            (2,'suknja2',18.7,2),
            (3,'suknja3',18.7,3);

insert into zena_mladic(sifra,zena,mladic)
values      (1,1,2),
            (2,3,2),
            (3,3,1);

insert into snasa(sifra,introvertno, treciputa, haljina, zena )
values      (1,2,'2020-01-01','haljina1',1),
            (2,4,'2020-01-02','haljina2',2),
            (3,6,'2020-01-03','haljina3',2);

insert into becar(sifra, novcica, kratkamajica, bojaociju,snasa )
values      (1,14.8,'majica1','zelena',1),
            (2,14.8,'majica2','plava',2),
            (3,14.8,'majica3','smeđa',3);

insert into prijatelj(sifra, eura, prstena, gustoca, jmbag, suknja, becar)
values      (1,16.9,2,16.5,'73829374564','suknja1',1),
            (2,16.9,2,16.5,'83927362512','suknja2',2),
            (3,16.9,2,16.5,'93872634567','suknja3',2);

update punac set majica='Osijek';

delete from prijatelj where prstena >17;
select haljina from snasa where treciputa=null;


select a.nausnica, f.jmbag, e.kratkamajica
from
mladic a inner join zena_mladic b
on a.sifra = b.mladic 
inner join zena c
on b.zena = c.sifra
inner join snasa d
on c.sifra = d.zena
inner join becar e
on d.sifra = e.snasa 
inner join prijatelj f
on e.sifra = f.becar
where d.treciputa is not null and c.lipa <>29
order by e.kratkamajica;
--Prikažite kolone lipa i prstena iz tablice zena čiji se primarni ključ 
--ne nalaze u tablici zena_mladic. 


select  c.lipa , c.prstena 
from becar a inner join snasa b 
on a.snasa=b.sifra
inner join zena c 
on b.zena=c.sifra;
