drop database sotrudnik;
create database if not exists sotrudnik;
use sotrudnik;

CREATE TABLE IF NOT EXISTS dep (
    dep_id INT,
    dep_name VARCHAR(50),
    PRIMARY KEY (dep_id)
);

create table if not exists sotr(
id int,
fio varchar(50),
post varchar(50),
dep_id int,
foreign key(dep_id) 
	references dep(dep_id) 
ON DELETE set null ON UPDATE CASCADE,
primary key(id)
);

CREATE TABLE IF NOT EXISTS kvalif_list (
    name VARCHAR(50),
    PRIMARY KEY (name)
);


CREATE TABLE IF NOT EXISTS kvalif (
    sotr_id INT,
    kval_name VARCHAR(50),
    FOREIGN KEY (sotr_id)
        REFERENCES sotr (id)
        ON DELETE cascade ON UPDATE CASCADE,
    FOREIGN KEY (kval_name)
        REFERENCES kvalif_list (name)
	ON DELETE cascade ON UPDATE CASCADE,
    PRIMARY KEY (sotr_id , kval_name)
);




insert kvalif_list(name)
values
('C'),
('Java'),
('DB2'),
('Windows'),
('Linux'),
('VB');

insert dep(dep_id,dep_name)
values
(128,'Отдел проектирования'),
(42,'Финансовый отдел');


insert sotr(id,fio,post,dep_id)
values 
(7513,'Иванов Иван Иванович','Программист',128),
(9842,'Сергеева Светлана Сергеевна','Администратор БД',42),
(6651,'Петров Петр Петрович','Программист',128),
(9006,'Николаев Николай Николаевич','Системный администратор',128);


insert kvalif(sotr_id,kval_name)
values
(7513,'C'),
(7513,'Java'),
(9842,'DB2'),
(6651,'VB'),
(6651,'Java'),
(9006,'Windows'),
(9006,'Linux');



select* from sotr;
select* from dep;
select* from kvalif;
select* from kvalif_list;