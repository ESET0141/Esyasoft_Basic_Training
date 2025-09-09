create database SmartMeters;

use SmartMeters;

create table Customers (CustomerId int primary key identity (1,1), Name varchar(50), Address varchar(50), Region varchar(20));

create table SmartMeterReadings (MeterId int primary key , CustomerId int, Location varchar(40), InstalledDate date, ReadingDateTime time, EnergyConsumed float, foreign key (CustomerId) references Customers(CustomerId));

insert into Customers values 
('John', 'Uk', 'South'),
('Ravi', 'UP', 'North'),
('Hari', 'Bihar', 'East'),
('Leon', 'New York', 'South'),
('Michael', 'Scrantan', 'South');

insert into SmartMeterReadings values 
(301,2, 'rooftop', '2023-02-23', '2023-02-23 12:00:00', 45.37 ),
(302,3, 'rooftop', '2024-06-08', '2024-06-08 18:00:00', 75.89 ),
(303,5, 'rooftop', '2025-03-20', '2025-03-20 23:00:00', 49.24 ),
(304,1, 'rooftop', '2025-02-10', '2025-02-10 16:00:00', 80.30 ),
(305,4, 'rooftop', '2024-02-19', '2024-02-19 09:00:00', 31.55 );

alter table SmartMeterReadings alter column ReadingDateTime datetime;

update SmartMeterReadings set ReadingDateTime = '2024-02-19 09:00:00' where CustomerID = 4;


select * from SmartMeterReadings 

/*Task 1*/

select MeterId, ReadingDateTime, EnergyConsumed from SmartMeterReadings where 
(EnergyConsumed between 10 and 50) and (ReadingDateTime between '2024-01-01' and '2024-12-31') and InstalledDate < ('2024-06-30');

/*Task 2*/

select CustomerId, avg(EnergyConsumed) as AvgEnergy, max(EnergyConsumed) as maxEnergyConsumed from SmartMeterReadings where ReadingDateTime between '2024-01-01' and '2024-12-31' group by CustomerId; 



