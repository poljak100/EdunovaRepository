--C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 <C:\Users\Dino\Desktop\EdunovaRepository\vjezbanje\vjezba2.sql

drop database if exists vjezba2;
create database vjezba2 default charset utf8mb4;
use vjezba2;

create table brat(
    sifra int not null primary key auto_increment,
    suknja varchar(47) null,
    ogrlica int,
    asocijalno bit,
    neprijatelj int not null
);

create table neprijatelj(
    sifra int not null primary key auto_increment,
    majica varchar(52) null,
    haljina varchar(47) not null,
    lipa decimal (11) null,
    modelnaocala varchar(48),
    kuna decimal (13),
    jmbag char (11) null,
    cura int null  
);

create table cura (
    sifra int not null primary key auto_increment,
    haljina varchar(50) not null,
    drugiputa datetime not null,
    suknja varchar(50) null,
    narukvica int null,
    introvertno bit null,
    majica varchar(60) not null,
    decko int null
);

create table decko(
    sifra int not null  primary key auto_increment,
    indiferentno bit null,
    vesta varchar(50) null,
    asocijalno bit not null
);

create table decko_zarucnica(
    sifra int not null  primary key auto_increment,
    decko int not null,
    zarucnica int not null
);

create table zarucnica(
    sifra int not null  primary key auto_increment,
    narukvica int null,
    bojakose varchar(37) not null,
    novcica decimal (15.9) null,
    lipa decimal (15.8) not null,
    indiferentno bit not null
);

create table prijatelj(
    sifra int not null  primary key auto_increment,
    modelnaocala varchar(37) null,
    treciputa datetime not null,
    ekstroventno bit not null,
    prviputa datetime null,
    svekar int not null
);

create table svekar(
    sifra int not null  primary key auto_increment,
    stilfrizura varchar(58) null,
    ogrlica int not null,
    asocijalno bit not null
);




alter table decko_zarucnica add foreign key (decko) references decko(sifra);
alter table decko_zarucnica add foreign key (zarucnica) references zarucnica(sifra);
alter table neprijatelj add foreign key (cura) references cura(sifra);
alter table prijatelj add foreign key (svekar) references svekar(sifra);
alter table cura add foreign key (decko) references decko(sifra);
alter table brat add foreign key (neprijatelj) references neprijatelj(sifra);


insert into decko (sifra, indiferentno, vesta, asocijalno )
        values  (1,6,'vesta1',6),
                (2,4,'vesta2',7),
                (3,7,'vesta3',8);

insert into zarucnica (sifra, narukvica, bojakose, novcica, lipa,indiferentno)   
    values  (1,2,'crna',15.2,15.3,2),
            (2,3,'plava',15.3,15.1,3),
            (3,4,'zelena',15.5,15.4,4);

insert into decko_zarucnica(sifra,decko, zarucnica) 
values      (1,2,3),
            (2,3,1), 
            (3,2,2);  

insert into cura (sifra, haljina, drugiputa, suknja, narukvica, introvertno ,majica, decko ) 
values      (1 ,'haljina1','2020-02-03','suknja1',1,2,'majica1',1),
            (2 ,'haljina2','2020-02-04','suknja2',2,5,'majica1',2),
            (3 ,'haljina3','2020-02-05','suknja3',3,6,'majica1',2);  
            ;

insert into neprijatelj(sifra, majica, haljina, lipa, modelnaocala, kuna,jmbag, cura 
)  
values      (1,'majica1','haljina1',15.8,'naocale1',15.8,'74938294832',1),        
            (2,'majica2','haljina2',15.9,'naocale2',15.2,'30293845743',2),
            (3,'majica3','haljina3',15.2,'naocale3',15.4,'85746273645',2);

insert into brat (sifra, ogrlica, asocijalno, neprijatelj)
values      (1, 32, 1, 1);

insert into svekar (sifra, stilfrizura ,ogrlica, asocijalno ) 
values      (1,'frizura1',2,3),
            (2,'frizura2',2,3),
            (3,'frizura3',2,3);


insert into prijatelj (sifra, modelnaocala, treciputa, ekstroventno, prviputa, svekar )
values      (1,'naocale1','2020-02-03',1,'2020-04-05',2);

update prijatelj set treciputa='2020-04-03';

select a.novcica, f.neprijatelj,
'ba' as vesta
from 
zarucnica a inner join decko_zarucnica b
on a.sifra = b.zarucnica 
inner join decko c
on b.decko =c.sifra 
inner join cura d
on c.sifra = d.decko 
inner join neprijatelj e 
on d.sifra = e.cura
left join brat f 
on e.sifra = f.neprijatelj
;









