create schema if not exists Project_Entreprise;

use Project_Entreprise;

drop table if exists EntrepriseWorkersCalendar;
drop table if exists Entreprise;
drop table if exists Workers;
drop table if exists City;
drop table if exists Calendar;

create table if not exists Entreprise (
	Id_Entreprise int primary key,
    E_Name varchar(100)
    ) ;
    
create table if not exists City(
	Id_City int primary key,
    C_Name varchar(100)
    );
    
create table if not exists Workers(
	Id_Workers int primary key,
    W_Name varchar(100),
    Age int,
    Id_City int,
    foreign key(Id_City) references City(Id_City)
    ) ;

create table if not exists Calendar(
	Id_Calendar int primary key,
    D_Day int,
    D_Month int,
    D_Year int
    );

create table EntrepriseWorkersCalendar(
	Id_Entreprise int,
    Id_Workers int ,
    Id_Calendar int ,
    int_time time,
    end_time time,
    primary key (Id_Entreprise, Id_Workers, Id_Calendar ),
    foreign key (Id_Entreprise) references Entreprise(Id_Entreprise),
    foreign key (Id_Workers) references Workers(Id_Workers),
    foreign key (Id_Calendar) references Calendar(Id_Calendar)
    );

insert into Entreprise (Id_Entreprise,E_Name) values (1,'Oracle'),(2,'IBM'),(3,'Sony'),(4,'Google'),(5,'Microsoft'),(6,'Apple'),(7,'Samsung'),(8,'Sony'),(9,'Amazon'),(10,'Facebook');
insert into City (Id_City, C_Name) values (1,'Bordeaux'),(2,'Paris'),(3,'Lyon'),(4,'Marseille'),(5,'Barcelona'),(6,'Madrid'),(7,'Vic'),(8,'Valencia'),(9,'Malaga'),(10,'Bayonne');
insert into Workers (Id_Workers,W_Name, Age, Id_City) values (1,'Dunn',20,1),(2,'Delage',20,2),(3,'Juliette',21,1),(4,'Yann',22,4),(5,'Raph',22,5),(6,'Marie',20,7),(7,'Liam',20,8),(8,'Ivan',40,6),(9,'Anna',21,3),(10,'Mara',20,9);
insert into Calendar (Id_Calendar,D_Day, D_Month, D_Year) values (1,2,2,2010),(2,3,4,2010),(3,6,1,2010),(4,20,7,2010),(5,14,9,2010),(6,10,12,2010),(7,27,9,2010),(8,24,5,2010),(9,21,3,2010),(10,18,8,2010);
insert into EntrepriseWorkersCalendar (Id_Entreprise,Id_Workers,Id_Calendar,int_time,end_time) values (1,9,6,'08:31:25','17:51:50'),(2,5,4,'08:13:07','17:43:09'),(3,8,5,'08:15:20','18:56:03'),(4,6,9,'08:31:25','19:57:34'),(5,7,1,'10:31:25','20:37:47'),(6,1,2,'07:25:05','17:07:57'),(7,2,7,'08:38:25','19:50:40'),(8,7,6,'09:01:09','20:30:38'),(9,4,1,'08:11:45','19:20:29'),(9,2,7,'11:48:38','22:40:21');

update Entreprise set E_Name= 'HP' where Id_Entreprise= 10;
update City  set C_Name='Toulouse' where Id_City=3;
update Workers set W_Name='Fabiola' where Id_Workers=9;
update Calendar set D_Day=9, D_Month=6, D_Year=2010 where Id_Calendar=5;
update EntrepriseWorkersCalendar set Id_Workers=9,Id_Calendar=3,int_time='09:16:18',end_time='18:53:49' where Id_Entreprise= 2;

delete from Entreprise where Id_Entreprise= 10;
delete from City where Id_City= 10;
delete from Workers where Id_Workers= 10;
delete from Calendar  where Id_Calendar = 10;
delete from EntrepriseWorkersCalendar where Id_Entreprise= 9;