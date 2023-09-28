-- -----------------------------------------------------
-- Country
-- -----------------------------------------------------
INSERT INTO `Country` VALUES('Италия');
INSERT INTO `Country` VALUES('Япония');
INSERT INTO `Country` VALUES('Тайвань');
INSERT INTO `Country` VALUES('Германия');
INSERT INTO `Country` VALUES('Китай');
INSERT INTO `Country` VALUES('Корея');
INSERT INTO `Country` VALUES('Беларусь');
INSERT INTO `Country` VALUES('Турция');
INSERT INTO `Country` VALUES('Россия');
INSERT INTO `Country` VALUES('Великобритания');
INSERT INTO `Country` VALUES('Нидерланды');
INSERT INTO `Country` VALUES('Франция');
INSERT INTO `Country` VALUES('США');
INSERT INTO `Country` VALUES('Польша');
INSERT INTO `Country` VALUES('Испания');
INSERT INTO `Country` VALUES('Литва');
INSERT INTO `Country` VALUES('Швеция');
INSERT INTO `Country` VALUES('Австрия');

-- -----------------------------------------------------
-- Manufacturer
-- -----------------------------------------------------
INSERT INTO `Manufacturer` VALUES('Toyota','Япония');
INSERT INTO `Manufacturer` VALUES('Koyo','Япония');
INSERT INTO `Manufacturer` VALUES('Denso','Япония');
INSERT INTO `Manufacturer` VALUES('SAT','Китай');
INSERT INTO `Manufacturer` VALUES('Honda', 'Япония');
INSERT INTO `Manufacturer` VALUES('Kixx GS Oil', 'Корея');
-- -----------------------------------------------------
-- Brand
-- -----------------------------------------------------
INSERT INTO `Brand` VALUES('Toyota', 'Япония');
INSERT INTO `Brand` VALUES('Honda', 'Япония');

-- -----------------------------------------------------
-- Model
-- -----------------------------------------------------
INSERT INTO `Model` VALUES('Toyota','Vitz');
INSERT INTO `Model` VALUES('Toyota','Belta');
INSERT INTO `Model` VALUES('Honda','Fit');

-- -----------------------------------------------------
-- Unit
-- -----------------------------------------------------
INSERT INTO `Unit` VALUES('Выхлопная система');
INSERT INTO `Unit` VALUES('Двигатель и элементы двигателя');
INSERT INTO `Unit` VALUES('Детали кузова');
INSERT INTO `Unit` VALUES('Дополнительное оборудование');
INSERT INTO `Unit` VALUES('Интерьер');
INSERT INTO `Unit` VALUES('Оптика');
INSERT INTO `Unit` VALUES('Расходники и комплектующие');
INSERT INTO `Unit` VALUES('Система отопления и кондиционирования');
INSERT INTO `Unit` VALUES('Система подачи воздуха');
INSERT INTO `Unit` VALUES('Топливная система');
INSERT INTO `Unit` VALUES('Тормозная система');
INSERT INTO `Unit` VALUES('Трансмиссия');
INSERT INTO `Unit` VALUES('Ходовая часть');
INSERT INTO `Unit` VALUES('Электрика');

-- -----------------------------------------------------
-- Node
-- -----------------------------------------------------
INSERT INTO `Node` VALUES(1,'Коллектор','Двигатель и элементы двигателя');
INSERT INTO `Node` VALUES(2,'ГРМ','Двигатель и элементы двигателя');
INSERT INTO `Node` VALUES(3,'Система зажигания','Двигатель и элементы двигателя');
INSERT INTO `Node` VALUES(4,'Катализатор','Выхлопная система');
INSERT INTO `Node` VALUES(5,'Бампера','Детали кузова');
INSERT INTO `Node` VALUES(6,'Фары передние','Оптика');
INSERT INTO `Node` VALUES(7,'Сиденья передние','Интерьер');
INSERT INTO `Node` VALUES(8,'ГСМ','Расходники и комплектующие');
INSERT INTO `Node` VALUES(9,'Фильтры','Расходники и комплектующие'); -- НЕ ИСПОЛЬЗОВАНО!!!

-- -----------------------------------------------------
-- Role
-- -----------------------------------------------------
INSERT INTO `Role` VALUES('Работник автосервиса');
INSERT INTO `Role` VALUES('Работник магазина автозапчастей');
INSERT INTO `Role` VALUES('Поставщик-оптовик');

-- -----------------------------------------------------
-- User
-- -----------------------------------------------------
INSERT INTO `User` VALUES(1, 'Пупкин Василий Иванович','Работник автосервиса','79147273881',
'pupkin@mail.ru','Владивосток','Баляева 50, 4');
INSERT INTO `User` VALUES(2, 'Марков Андрей Дмитриевич','Поставщик-оптовик','79147273881',
'pupkin@mail.ru','Владивосток','Баляева 50, 4');
INSERT INTO `User` VALUES(3, 'Пупкин Василий Иванович','Работник магазина автозапчастей','79147273881',
'pupkin@mail.ru','Владивосток','Баляева 50, 4');
INSERT INTO `User` VALUES(4, 'Ким Сок Джин','Поставщик-оптовик','79147273881',
'pupkin@mail.ru','Владивосток','Баляева 50, 4');
INSERT INTO `User` VALUES(5, 'Рзаев Андрей Анатольевич','Работник автосервиса','79147273881',
'pupkin@mail.ru','Владивосток','Баляева 50, 4');



-- -----------------------------------------------------
-- Engine
-- -----------------------------------------------------
INSERT INTO `Engine` VALUES('2NZ-FE', 1.3, 87, 'Бензин');
INSERT INTO `Engine` VALUES('1NZ-FE', 1.5, 119, 'Бензин');
INSERT INTO `Engine` VALUES('L13B', 1.3, 100, 'Бензин');

-- -----------------------------------------------------
-- Car
-- -----------------------------------------------------
INSERT INTO `Car` VALUES('NCP96','Toyota','Belta','2NZ-FE','2009','AT','4WD');
INSERT INTO `Car` VALUES('NCP95','Toyota','Vitz','2NZ-FE','2009','AT','4WD');
INSERT INTO `Car` VALUES('NCP91','Toyota','Vitz','1NZ-FE','2009','MT','FF');
INSERT INTO `Car` VALUES('GK3','Honda','Fit','L13B','2017','CVT','FF');

-- -----------------------------------------------------
-- Part
-- -----------------------------------------------------
INSERT INTO `Part` VALUES(1,'17101-21090','Коллектор впускной',1500,'Toyota',1);
INSERT INTO `Part` VALUES(2,'13568-79025','Комплект ГРМ ременной',6500,'Koyo',2);
INSERT INTO `Part` VALUES(3,'IKH16','Комплект свечей зажигания',3200,'Denso',3);
INSERT INTO `Part` VALUES(4,'17140-21040','Катализатор в сборе',14000,'Toyota',4);
INSERT INTO `Part` VALUES(5,'521195-2410B0','Бампер передний',9000,'Toyota',5);
INSERT INTO `Part` VALUES(6,'52119-52530','Бампер передний',30000,'Toyota',5);
INSERT INTO `Part` VALUES(7,'STTYA20000','Бампер передний',4700,'SAT',5);
INSERT INTO `Part` VALUES(8,'52159-52620','Бампер задний',19500,'Toyota',5);
INSERT INTO `Part` VALUES(9,'W3674','Фара левая LED',48000,'Honda',6);
INSERT INTO `Part` VALUES(10,'52183','Комплект фар ксенон',8000,'Toyota',6);
INSERT INTO `Part` VALUES(11,'52163','Фара левая галоген',7500,'Toyota',6);
INSERT INTO `Part` VALUES(12,'51172, 44674','Комплект сидений RS',34999,'Toyota',7);
INSERT INTO `Part` VALUES(13,'71110-52450','Комплект сидений',14240,'Toyota',7);
INSERT INTO `Part` VALUES(14,'15742','Комплект сидений',5000,'Honda',7);
INSERT INTO `Part` VALUES(15,'L2100440E1','Масло моторное Kixx G1 5W20 SN/GF-5 4л',2050,'Kixx GS Oil',8);

-- -----------------------------------------------------
-- Car_has_Part
-- -----------------------------------------------------
-- Vitz, Belta - двигатель
INSERT INTO `Car_has_Part` VALUES('NCP95', 1);
INSERT INTO `Car_has_Part` VALUES('NCP95', 2);
INSERT INTO `Car_has_Part` VALUES('NCP95', 3);
INSERT INTO `Car_has_Part` VALUES('NCP96', 1);
INSERT INTO `Car_has_Part` VALUES('NCP96', 2);
INSERT INTO `Car_has_Part` VALUES('NCP96', 3);
INSERT INTO `Car_has_Part` VALUES('NCP91', 2);
INSERT INTO `Car_has_Part` VALUES('NCP91', 3);
-- Vitz, Belta - выхлопная система
INSERT INTO `Car_has_Part` VALUES('NCP95', 4);
INSERT INTO `Car_has_Part` VALUES('NCP96', 4);
-- Vitz - детали кузова
INSERT INTO `Car_has_Part` VALUES('NCP95', 5);
INSERT INTO `Car_has_Part` VALUES('NCP91', 5);
INSERT INTO `Car_has_Part` VALUES('NCP95', 7);
INSERT INTO `Car_has_Part` VALUES('NCP91', 7);
-- Belta - детали кузова
INSERT INTO `Car_has_Part` VALUES('NCP96', 6);
INSERT INTO `Car_has_Part` VALUES('NCP96', 8);
-- Fit - оптика
INSERT INTO `Car_has_Part` VALUES('GK3', 9);
-- Vitz - оптика 
INSERT INTO `Car_has_Part` VALUES('NCP91', 10);
INSERT INTO `Car_has_Part` VALUES('NCP95', 10);
-- Belta - оптика  
INSERT INTO `Car_has_Part` VALUES('NCP96', 11);
-- Fit - интерьер
INSERT INTO `Car_has_Part` VALUES('GK3', 14);
-- Vitz - интерьер 
INSERT INTO `Car_has_Part` VALUES('NCP91', 12);
INSERT INTO `Car_has_Part` VALUES('NCP95', 12);
-- Belta - интерьер  
INSERT INTO `Car_has_Part` VALUES('NCP96', 13);
-- All - моторное масло
INSERT INTO `Car_has_Part` VALUES('GK3', 15);
INSERT INTO `Car_has_Part` VALUES('NCP91', 15);
INSERT INTO `Car_has_Part` VALUES('NCP95', 15);
INSERT INTO `Car_has_Part` VALUES('NCP96', 15);

-- -----------------------------------------------------
-- Favourite
-- -----------------------------------------------------
INSERT INTO `Favourite` VALUES(1, 1);

-- -----------------------------------------------------
-- -----------------------------------------------------
select * from `Country`; #
select * from `Manufacturer`; 
select * from `Brand`; #
select * from `Model`; #
select * from `Role`; #
select * from `Engine`;
select * from `Car`;
select * from `User`;
select * from `Unit`; #
select * from `Node`;
select * from `Part`;
select * from `Car_has_Part`;
select * from `Favourite`;
select Car.IDCar, Car.BrandName, Car.ModelName, Part.PartNumber, Part.PartName from Car, Part, Car_has_Part
where (Car_has_Part.IDCar=Car.IDCar AND Car_has_Part.IDPart=Part.IDPart) order by Car.IDCar, Part.PartName; 