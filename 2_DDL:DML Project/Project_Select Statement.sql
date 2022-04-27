use Project_Entreprise;
#1
SELECT * FROM Workers order by W_Name desc; 
#2
select count(Id_Entreprise) as 'Total Entreprises' from Entreprise;
#3
select W_Name as ' Youngest Worker' from Workers order by Age asc limit 1;
#4
Select City.C_Name as 'City Name', count(Workers.W_Name) as 'Number of Workers'  from Workers inner join City where Workers.Id_City=City.Id_City group by City.C_Name;
#5
Select City.C_Name as 'City Name', Workers.W_Name as 'Worker' from City left join Workers on City.Id_City=Workers.Id_City;
#6
#Select Workers.W_Name from Workers, EntrepriseWorkersCalendar where  Workers.Id_Workers=EntrepriseWorkersCalendar.Id_Workers and Calendar.Id_Calendar=EntrepriseWorkersCalendar.Id_Calendar and (Calendar.D_Day>=21 and Calendar.D_Day<=23); 
#7

#8
Select Entreprise.E_Name as 'Entreprise Name' from Entreprise inner join EntrepriseWorkersCalendar on Entreprise.Id_Entreprise=EntrepriseWorkersCalendar.Id_Entreprise group by Entreprise.E_Name having count(Id_Workers)<5;
#9
Select Workers.W_Name as ' Worker', count(EntrepriseWorkersCalendar.Id_Calendar) as 'Days Worked' from Workers inner join EntrepriseWorkersCalendar on Workers.Id_Workers=EntrepriseWorkersCalendar.Id_Workers group by Workers.W_Name;
#10
Select avg(Age) as 'Average Age'  from Workers;
#11
Select City.C_Name as 'City Name starting with B' from City where City.C_Name like "B%";
#12
Select City.C_Name as 'City Name', Workers.W_Name as 'Worker Name', Entreprise.E_Name as 'Entreprise Name' from City inner join Workers on City.Id_City=Workers.Id_City inner join EntrepriseWorkersCalendar on Workers.Id_Workers=EntrepriseWorkersCalendar.Id_Workers inner join Entreprise on EntrepriseWorkersCalendar.Id_Entreprise=Entreprise.Id_Entreprise order by City.C_Name;


