create database hospital;
use hospital;
create table patient(
	Patient_ID int,
    Patient_NAME varchar(50),
    Patient_MOBILE varchar(25),
    Patient_Email varchar(25),
	Appointment_date varchar(10)
);

insert into patient values
(0612,'Subhash Jain','620452874','jainshubh@gmail.com','2022-11-16'),
(0613,'Jagdish Bhagat','9012552874','bhagjag@gmail.com','2022-11-16'),
(0614,'Vinay Sharma','9955580866','sharmavinay@gmail.com','2022-11-20'),
(0615,'Mohit Pradhan','9014526874','mohitcbse@gmail.com','2022-11-21');

select * from patient;

delete  from patient ;

