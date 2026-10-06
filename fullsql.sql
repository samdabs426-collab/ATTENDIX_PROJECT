create database mohammed4;

use mohammed4;

CREATE TABLE student(
    regno varchar(30) primary key,
    name varchar(20) not null,
    dept varchar(20) not null,
    dob date not null,
    email varchar(50) unique
);
insert into student (regno, name, dept, dob) values('bca01', 'Aasif', 'BCA', '2025-10-22');
insert into student (regno, name, dept, dob) values('bca02', 'Bharath', 'BCA', '2005-10-22');
insert into student (regno, name, dept, dob) values('bca03', 'Chandru', 'BCA', '2005-10-23');
insert into student (regno, name, dept, dob) values('bca04', 'Dinesh', 'BCA', '2005-10-24');
insert into student (regno, name, dept, dob) values('bca05', 'Eshwaran ', 'BCA', '2005-10-25');
insert into student (regno, name, dept, dob) values('bca06', 'Fahim', 'BCA', '2005-10-26');
insert into student (regno, name, dept, dob) values('bca07', 'Gokul', 'BCA', '2005-10-27');
insert into student (regno, name, dept, dob) values('bca08', 'kishore', 'BCA', '2005-10-28');
INSERT INTO student (regno, name, dept, dob) VALUES('bca09', 'Lokesh', 'BCA', '2005-10-29');
insert into student (regno, name, dept, dob) values('bca10', 'Mohammed', 'BCA', '2005-10-30');
insert into student (regno, name, dept, dob) values('bca11', 'Nishar', 'BCA', '2005-10-31');
insert into student (regno, name, dept, dob) values('bca12', 'vinoth', 'BCA', '2005-10-02');
insert into student (regno, name, dept, dob) values('cs01', 'anbu', 'CS', '2006-11-21');
insert into student (regno, name, dept, dob) values('cs02', 'bala', 'CS', '2006-11-22');
insert into student (regno, name, dept, dob) values('cs03', 'dhamo', 'CS', '2006-11-23');
insert into student (regno, name, dept, dob) values('cs04', 'ismail', 'CS', '2006-11-24');
insert into student (regno, name, dept, dob) values('cs05', 'sachin', 'CS', '2006-11-25');
insert into student (regno, name, dept, dob) values('cs06', 'samuyil', 'CS', '2006-11-26');
insert into student (regno, name, dept, dob) values('cs07', 'suresh', 'CS', '2006-11-27');
insert into student (regno, name, dept, dob) values('cs08', 'vijay', 'CS', '2006-11-28');
insert into student (regno, name, dept, dob) values('cs09', 'yakesh', 'CS', '2006-11-29');
insert into student (regno, name, dept, dob) values('cs10', 'zab', 'CS', '2006-11-30');



CREATE TABLE staff(
    regno int primary key,
    password varchar(20) not null,
    name varchar(20)
);
insert into staff values(101,'786','Aasif');
insert into staff values(102,'786','Bharath');

CREATE TABLE stat (
    regno VARCHAR(30) NOT NULL,
    name VARCHAR(20) NOT NULL,
    dept VARCHAR(20) NOT NULL,
    dt DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    percentage FLOAT,
    FOREIGN KEY (regno) REFERENCES student(regno) 
        ON DELETE CASCADE,
    UNIQUE (regno,dt)
);



CREATE TABLE admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Insert default admin (username: aasif, password: 786)
INSERT INTO admin (username, password) VALUES ('aasif', '786');

