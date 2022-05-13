---UC1 Create database Address Book -------
CREATE database AddressBookMSSQL;
use AddressBookMSSQL;

---UC2 Add Address Book table data ---------
Create table AddressBook(
FirstName varchar(100),
LastName varchar(100),
Address varchar(100),
City varchar(100),
State varchar (100),
Zip bigint,
PhoneNumber bigint,
Email varchar(100)
);

SELECT * FROM AddressBook;

--UC-3-Insert-Contact-Details-Into-Table--
insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
values('Arun','Kumar','Ranchi','Ranchi','Jharkhand',842002,7896837990,'arunxyz@gmail.com'),
('Ashish','Jain','Kila Gate','Gwlior','MP',472002,9584858998,'aj123@gmail.com'),
('Dilip','Kushwah','Baunapur','Gwalior','MP',474004,8819096553,'dilipxp@gmail.com'),
('Anuj','Singh','Agra','Agra','UP',474400,7894561234,'anuj123@gmail.com');

insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
values('Rahul','Singh','Lalpur','Ranchi','Jharkhand',842002,9424727909,'rahul432@gmail.com');

select * from AddressBook;

--UC-4-Edit-Contact-By-Person's-Name--
update AddressBook set PhoneNumber=9678923184 where FirstName='Rahul';

select * from AddressBook;

--UC-5-Delete-Existing-Contact-Using-Name--
delete AddressBook where FirstName='Rahul';

select * from AddressBook;

--UC-6-Retrieve-Person-Belonging-To-City-Or-State--
select * from AddressBook where City = 'Gwalior' or State = 'MP';

--UC-7-Size-Of-Addressbook--
select COUNT(*) as StateCount, State from AddressBook group by State;
select COUNT(*) as StateCount, City from AddressBook group by City; 

--UC-8-Sort-Entries-By-Name-Alphabetically--
select * from AddressBook order by FirstName;

--UC-9-Identify-Each-Addressbook-With-Name-And-Type--
alter table Addressbook add ContactType varchar(100) not null default 'Friend';
update AddressBook set ContactType = 'Family' where FirstName = 'Anuj';
select * from AddressBook;

--UC-10-Get-Contact-Count-By-Type--
select COUNT(*) as Type, ContactType from AddressBook group by ContactType;

--UC-11-Add-Person-To-Both-Family-And-Friend--
insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email,ContactType)
values('Arun','Kumar','SSC OFFICE','Ranchi','JH',842002,8885837990,'arun123@gmail.com','Friend'),
('Arun','Kumar','SSC OFFICE','Ranchi','JH',842002,8885837990,'arun123@gmail.com','Family');

select * from AddressBook;

