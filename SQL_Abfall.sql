create database WBAbfall
use WBAbfall


create table Ueberlagerte_Ware(

UW_ID int primary key identity NOT NULL,
UW_Produkt nvarchar(max) NOT NULL,
UW_Charge nvarchar(max) NOT NULL,
UW_Grund nvarchar(max) NOT NULL,
UW_Gebindeinhalt float  NOT NULL,
UW_AnzahlGebinde nvarchar(max) NOT NULL,
UW_Menge float NOT NULL,
UW_Abfallart nvarchar(max) NOT NULL,
UW_Save_Time DateTime default getdate() Null

);

create table Reklamationen(

R_ID int primary key identity NOT NULL,
R_Produkt nvarchar(max) NOT NULL,
R_Charge nvarchar(max) NOT NULL,
R_Grund nvarchar(max) NOT NULL,
R_Gebindeinhalt float  NOT NULL,
R_AnzahlGebinde nvarchar(max) NOT NULL,
R_Menge float NOT NULL,
R_Abfallart nvarchar(max) NOT NULL,
R_Save_Time DateTime default getdate() Null

);

select * from Ueberlagerte_Ware

select top 5 UW_Produkt,UW_Charge,UW_Grund,UW_Gebindeinhalt,UW_AnzahlGebinde,UW_Menge,UW_Abfallart from Ueberlagerte_Ware order by UW_Save_Time desc

select sum(UW_Menge) from Ueberlagerte_Ware where UW_Abfallart='Rohstoffe'

select * from Reklamationen

select sum(UW_Menge) from Ueberlagerte_Ware where UW_Abfallart='Isocyanate'

select sum(R_Menge) from Reklamationen where R_Abfallart='Isocyanate'

SELECT (select sum(UW_Menge) from Ueberlagerte_Ware where UW_Abfallart='Isocyanate') + (select sum(R_Menge) from Reklamationen where R_Abfallart='Isocyanate') as result

