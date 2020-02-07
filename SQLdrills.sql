
/*drill 1*/
select * from tbl_habitat

/*drill 2*/
select species_name from tbl_species inner join tbl_order on tbl_order.order_id = 3 and tbl_species.species_order = 3;

/*drill 3*/
select nutrition_type from tbl_nutrition where nutrition_cost < 600.00

/*drill 4*/
select species_name from tbl_species where species_nutrition >= 5002 and species_nutrition <= 5006 /*my numbering is different than video, used 5000 instead of 2200*/

/*drill 5*/
select 
	a1.species_name, a2.nutrition_type
	from tbl_species a1
	inner join tbl_nutrition a2 on a2.nutrition_id = a1.species_nutrition
	
/*drill 6*/
use db_zoo
select
a1.species_name, a2.specialist_fname, a2.specialist_lname, a2.specialist_contact
from tbl_species a1
inner join tbl_specialist a2 on a2.specialist_id = a1.species_specialist
where species_name = 'penguins'


/*drill 7*/
create database blazers 

create table tbl_roster (
Jersey_Num int primary key not null,
Lname varchar(20) not null,
Fname varchar(20) not null);

create table tbl_stats (
Player_ID int primary key not null,
FG_PPG int not null,
FG_Pct int not null
FOREIGN KEY (Player_ID) references tbl_roster(Jersey_Num)
);

insert into tbl_roster
(Jersey_Num, Lname, Fname)
Values
(0, 'Lillard', 'Damian'),
(3, 'McCollum', 'CJ'),
(8, 'Ariza', 'Trevor'),
(21, 'Whiteside', 'Hassan'),
(1, 'Simons', 'Anfernee') 

insert into tbl_stats
(Player_ID, FG_PPG, FG_Pct)
values
(0, 29.4, 46.0),
(8, 12.8, 54.1),
(3, 21.6, 45.3),
(1, 9, 40.3),
(21, 15.9, 60.9);

select a1.Lname, a2.FG_PPG, a2.FG_Pct
from tbl_roster a1
inner join tbl_stats a2 on a2.Player_ID = a1.Jersey_Num
WHERE FG_PPG > 20