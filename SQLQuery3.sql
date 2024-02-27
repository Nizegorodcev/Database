CREATE TABLE Test(
ID INT NOT NULL PRIMARY KEY,
FIO CHAR(20) NOT NULL
)
ALTER TABLE Test
ADD AGE INT NOT NULL
DROP TABLE Test
CREATE TABLE Цвет(
ID_colour BIGINT NOT NULL PRIMARY KEY,
colour CHAR(100) NOT NULL
)
CREATE TABLE Марка_автомобиля(
ID_M BIGINT NOT NULL PRIMARY KEY,
Марка char(100) NOT NULL
)
CREATE TABLE Тип_двигателя(
ID_engine BIGINT NOT NULL PRIMARY KEY,
Тип_двигателя CHAR(100) NOT NULL
)
CREATE TABLE Привод(
ID_привод BIGINT NOT NULL PRIMARY KEY,
Привод CHAR(100) NOT NULL
)
CREATE TABLE Тип_КПП(
ID_КПП BIGINT NOT NULL PRIMARY KEY,
КПП CHAR(100) NOT NULL
)
CREATE TABLE Тех_характеристики_автомобиля(
ID_характеристики BIGINT NOT NULL PRIMARY KEY,
Год BIGINT NOT NULL,
Масса BIGINT NOT NULL,
Объём_двигателя FLOAT NOT NULL,
Мощность FLOAT NOT NULL,
Пробег BIGINT NOT NULL,
Цена MONEY NOT NULL,
ID_colour BIGINT NOT NULL,
ID_привод BIGINT NOT NULL,
ID_M BIGINT NOT NULL,
ID_engine BIGINT NOT NULL,
ID_КПП BIGINT NOT NULL
)
CREATE TABLE Страны(
ID_C BIGINT NOT NULL PRIMARY KEY,
Страна CHAR(100) NOT NULL
)
CREATE TABLE Тех_состояние(
ID_condition BIGINT NOT NULL PRIMARY KEY,
Состояние CHAR(100) NOT NULL
)
CREATE TABLE ПТС(
ID_ПТС BIGINT NOT NULL PRIMARY KEY,
ПТС CHAR(100) NOT NULL
)
CREATE TABLE Автомобиль(
ID_автомобиля BIGINT NOT NULL PRIMARY KEY,
vin CHAR(100) NOT NULL,
гос_регистр_номер CHAR(100) NOT NULL,
Владельцев_по_ПТС BIGINT,
ID_C BIGINT NOT NULL,
ID_condition BIGINT NOT NULL,
ID_ПТС BIGINT NOT NULL,
ID_M BIGINT NOT NULL,
ID_характеристики BIGINT NOT NULL
)
CREATE TABLE Клиент(
ID_Client BIGINT NOT NULL PRIMARY KEY,
Фамилия CHAR(100) NOT NULL,
Имя CHAR(100) NOT NULL,
Отчество CHAR(100) NOT NULL
)
CREATE TABLE Вид_оплаты(
ID_Оплаты BIGINT NOT NULL PRIMARY KEY,
Вид_оплаты CHAR(100) NOT NULL
)
CREATE TABLE Договор(
ID_договор  BIGINT NOT NULL PRIMARY KEY,
Цена MONEY NOT NULL,
Гарантия BIGINT NOT NULL,
НДС MONEY NOT NULL,
ID_condition BIGINT NOT NULL FOREIGN KEY REFERENCES Тех_состояние(ID_condition),
ID_ПТС BIGINT NOT NULL FOREIGN KEY REFERENCES ПТС(ID_ПТС),
ID_M BIGINT NOT NULL FOREIGN KEY REFERENCES Марка_автомобиля(ID_M),
ID_Client BIGINT NOT NULL FOREIGN KEY REFERENCES Клиент (ID_Client),
ID_Оплаты BIGINT NOT NULL FOREIGN KEY REFERENCES Вид_Оплаты (ID_Оплаты),
ID_характеристики BIGINT NOT NULL FOREIGN KEY REFERENCES Тех_характеристики_автомобиля (ID_характеристики),
ID_автомобиля BIGINT NOT NULL FOREIGN KEY REFERENCES Автомобиль (ID_автомобиля)
)
INSERT INTO Марка_автомобиля(ID_M,Марка) Values(1,'Renault');--Добавление записи
INSERT INTO Марка_автомобиля(ID_M,Марка) Values(2,'Lada');
INSERT INTO Марка_автомобиля(ID_M,Марка) Values(3,'Mercedes');
INSERT INTO Марка_автомобиля(ID_M,Марка) Values(4,'BMW');
UPDATE  Марка_автомобиля SET Марка='Renault_Logan' WHERE ID_M=1;
UPDATE  Марка_автомобиля SET Марка='Lada_Granta' WHERE ID_M=2;
DELETE FROM Марка_автомобиля WHERE ID_M=4;
DELETE FROM Марка_автомобиля WHERE ID_M=3;

INSERT INTO Марка_автомобиля(ID_M,Марка) Values(3,'Mercedes');
INSERT INTO Марка_автомобиля(ID_M,Марка) Values(4,'BMW');
TRUNCATE TABLE Марка_автомобиля;

