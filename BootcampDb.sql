--creating our own database and entering in our own values

use master;
create database Bootcamp;
use Bootcamp;
create table Students (
	Id int primary key identity(1,1),
	Firstname varchar(30) not null,
	Lastname varchar(30) not null,
	Address varchar(50) not null,
	City varchar(50) not null,
	State char(2) not null,
	Zip varchar(10) not null, 
	AssessmentScore int not null);

Create table Assessment (
	Id int primary key identity(1,1),
	StudentId int not null foreign key references Students(Id),
	Topic varchar(30) not null, 
	Score int not null);


Begin Transaction;

	Insert Students (Firstname, Lastname, Address, City, State, Zip, AssessmentScore)
		Values ('Sarah', 'George', '10110 Hawthrone Place Dr Apt 204', 'Riverview', 'FL', '33578', '82')

Commit

Begin Transaction;

	Insert Assessment (StudentId, Topic, Score)
		values ((Select id from Students), 'Git/GitHub', '100')

	Commit

Select * from Students s
	join Assessment a on a.StudentId = s.Id