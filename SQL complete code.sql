---------1.Admin---------------------


---------2.Vehicle---------------------


---------3.Customer---------------------


--------4.Reservation---------------------


-------5.Driver---------------------
create table Driver
(
Driver_ID varchar(15),
Driver_licence_id varchar(15),
F_name varchar(20),
L_name varchar(20),
Dob date,
Age int,
Gender varchar(10),
House_no varchar(10),
Lane varchar(30),
City varchar(30),
NIC varchar(12) not null,
constraint driver_PK primary key (Driver_id),
constraint driver_FK foreign key(NIC) references Admin (NIC),
);

---------6.Payments---------------------


---------7.Feedback---------------------


---------8.Insurance---------------------


---------9.Admin_phone-----------------


---------10.Admin_mail---------------------


---------11.Driver_phone---------------------
create table Driver_phone
(
Phone_number varchar(15),
Driver_ID varchar(15),
--constraint Driver_phone_PK primary key (Phone_number,Driver_ID),
constraint Driver_phone_FK foreign key (Driver_ID) references Driver (Driver_ID),
constraint checkDriverPhone check (Phone_number like '[0-9][0-9][0-9][0-9][0-9][0-
9][0-9][0-9][0-9][0-9]'),
);

---------12.Driver_mail---------------------
create table Driver_mail
(
Email varchar(30),
Driver_ID varchar(15) not null,
constraint Driver_mail_PK primary key (Email,Driver_ID),
constraint Driver_mail_FK foreign key (Driver_ID) references Driver (Driver_ID),
);

---------13.Customer_phone---------------------


---------14.Customer_mail---------------------


---------15.Customer_Vehicle---------------------


---------16.Driver_Vehicle---------------------
create table Driver_Vehicle
(
Vehicle_ID varchar(15),
Driver_ID varchar(15),
constraint Vehicle_id_PK11 primary key (Driver_ID,Vehicle_ID),
constraint Vehicle_id_FK11 foreign key (Vehicle_ID) references Vehicle
(Vehicle_ID),
constraint Driver_id_FK11 foreign key (Driver_ID) references Driver (Driver_ID),
);

---------17.insert in to Admin---------------------


---------18.insert in to Vehicle---------------------


---------19.insert in to Customer---------------------


---------20.insert in to Reservation---------------------


---------21.insert in to Driver---------------------
insert into Driver values('DID1234567','SL1234567','Lal','Jayasena','1980-09-
13',40,'Male','06','Samagipura','Kalutara','901234567V')
insert into Driver values('DID9876543','SL0987654','Nimal','Yapa','1975-10-
26',45,'Male','12/C','Isuru Mawatha','Gampaha','921234567V')
insert into Driver values('DID3456789','SL1029387','Chandana','Sirikumara','1985-11-
22',35,'Male','08','Gonamaditt a road','Seeduwa','881234567V')
insert into Driver values('DID7263549','SL3456789','Kasun','Danushka','1992-07-
09',28,'Male','29/A','Gadabuwana road','Ragama','861234567V')
insert into Driver values('DID1029384','SL2837456','Gamini','Fernando','1979-02-
12',42,'Male','12','Siripura Mawatha','Malabe','951234567V')

---------22.insert in to Payments---------------------


---------23.insert in to Feedback---------------------



---------24.insert in to Insurance---------------------



---------25.insert in to Admin_phone---------------------



---------26.insert in to Admin_mail---------------------



---------27.insert in to Driver_phone---------------------
insert into Driver_phone values('0772234567','DID1234567')
insert into Driver_phone values('0709878893','DID9876543')
insert into Driver_phone values('0778294382','DID3456789')
insert into Driver_phone values('0709853209','DID7263549')
insert into Driver_phone values('0772098897','DID1029384')

---------28.insert in to Driver_mail---------------------
insert into Driver_mail values('lal123@gmail.com','DID1234567')
insert into Driver_mail values('nimal_n@gmail.com','DID9876543')
insert into Driver_mail values('chandra452@gmail.com','DID3456789')
insert into Driver_mail values('kasun_f@gmail.com','DID7263549')
insert into Driver_mail values('Gamini000@gmail.com','DID1029384')

---------29.insert in to Customer_phone---------------------



---------30.insert in to Customer_mail---------------------



---------31.insert in to Customer_Vehicle ---------------------


---------32.insert in to Driver_Vehicle ---------------------
