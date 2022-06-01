
drop database if exists vjezba1;
create database vjezba1 default charset utf8mb4;
use vjezba1;

--C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 <C:\Users\Dino\Desktop\EdunovaRepository\vjezbanje\vjezba1.sql

create table punac(
    sifra int not null primary key auto_increment,
    ogrlica int,
    gustoca decimal (14,9),
    hlace varchar(50) not null 
);

create table cura(
    sifra int not null primary key auto_increment,
    novcica decimal (16,5) not null,
    gustoca decimal (18,6) not null,
    lipa decimal (13,10) null,
    ogrlica int not null,
    bojakose varchar(59),
    suknja varchar(59),
    punac int null
);

create table sestra(
    sifra int not null primary key auto_increment,
    introverno bit,
    haljina varchar(50),
    maraka varchar(50),
    hlace varchar(50),
    narukvica int
);

create table zena(
    sifra int not null primary key auto_increment,
    treciputa datetime null,
    hlace varchar(50) null,
    kratkamajica varchar(50) null,
    jmbag char(11) not null,
    bojaociju varchar(50) null,
    haljina varchar(50) null,
    sestra int not null
);

create table muskarac(
    sifra int not null primary key auto_increment,
    bojaociju  varchar(50) not null,
    hlace varchar(50) null,
    modelnaocala varchar(50) null,
    marka decimal(14,5) not null,
    zena int not null
);

create table mladic(
    sifra int not null primary key auto_increment,
    suknja varchar(50) not null,
    kuna decimal (16,8) not null,
    drugiputa datetime null,
    asocijalno bit null,
    ekstroventno bit not null,
    dukserica varchar(50) not null,
    muskarac int not null
);

create table sestra_svekar(
    sifra int not null primary key auto_increment,
    sestra int not null,
    svekar int not null
);

create table svekar(
    sifra int not null primary key auto_increment,
    bojaociju varchar(50) not null,
    prstena int null,
    dukserica varchar(50) null,
    lipa decimal(13,8),
    eura decimal(12,7),
    majica varchar(50) null
);

alter table cura add foreign key (punac) references punac (sifra);

alter table sestra_svekar add foreign key (svekar) references svekar (sifra);
alter table sestra_svekar add foreign key (sestra) references sestra (sifra);

alter table mladic add foreign key (muskarac) references muskarac (sifra);
alter table muskarac add foreign key (zena) references zena (sifra);
alter table zena add foreign key (sestra) references sestra(sifra);

insert into sestra
values  (1, null, 'haljina1', 10, 'hlace1', 2),
        (2, null, 'haljina2', 12, 'hlace2', 4),
        (3, null, 'haljina3', 14, 'hlace3', 6);

insert into zena
values  (1, '2020-02-03', 'hlace1', 'kratkamajica1', '64839209345', 'plava', 'haljina1',1),
        (2, '2020-03-03', 'hlace2', 'kratkamajica2', '82930463821', 'zelena', 'haljina3',3),
        (3, '2020-04-04', 'hlace3', 'kratkamajica2', '24839209832', 'smeđa', 'haljina3',3);   

insert into muskarac
values  (1,'plava', 'hlace1', 'naocale1', 15, 1),
        (2,'smeđa', 'hlace2', 'naocale2', 15, 2),
        (3,'zelena', 'hlace3', 'naocale3', 15, 3);

insert into svekar
values  (1,'zelena', 77, 'dukserica1', 25,321, 'majica1'),
        (2,'smeđa', 74, 'dukserica2', 32,213, 'majica2'),
        (3,'plava', 54, 'dukserica3', 43,341, 'majica3');

insert into sestra_svekar
values  (1,1,2),
        (2,3,1),
        (3,3,3);

insert into punac
values  (1, 32, 13,'hlace1'),
        (2, 42, 43,'hlace2'),
        (3, 43, 32,'hlace3');

insert into cura
values (1, 123, 145, 13, 43, 'smeđa', 'suknja1',2);


update cura
set gustoca=15.77;


insert into mladic
values  (1, 'suknja1', 15,'2020-02-03', 14, 15, 'dukserica1', 1);

delete from mladic where kuna > 15.78;







