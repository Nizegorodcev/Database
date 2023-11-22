/*
Created: 22.11.2023
Modified: 22.11.2023
Model: Logical model
Database: MS SQL Server 2012
*/


-- Create tables section -------------------------------------------------

-- Table Цвет

CREATE TABLE [Цвет]
(
 [ID_colour] Bigint NOT NULL,
 [Цвет] Char(100) NULL
)
go

-- Add keys for table Цвет

ALTER TABLE [Цвет] ADD CONSTRAINT [Unique_Identifier1] PRIMARY KEY ([ID_colour])
go

-- Table Привод

CREATE TABLE [Привод]
(
 [ID_Привод] Bigint NOT NULL,
 [Привод] Char(100) NULL
)
go

-- Add keys for table Привод

ALTER TABLE [Привод] ADD CONSTRAINT [Unique_Identifier2] PRIMARY KEY ([ID_Привод])
go

-- Table Марка автомобиля

CREATE TABLE [Марка автомобиля]
(
 [ID_M] Bigint NOT NULL,
 [Марка] Char(100) NULL
)
go

-- Add keys for table Марка автомобиля

ALTER TABLE [Марка автомобиля] ADD CONSTRAINT [Unique_Identifier3] PRIMARY KEY ([ID_M])
go

-- Table Тип двигателя

CREATE TABLE [Тип двигателя]
(
 [ID_Engine] Bigint NOT NULL,
 [Тип_двигателя] Char(100) NULL
)
go

-- Add keys for table Тип двигателя

ALTER TABLE [Тип двигателя] ADD CONSTRAINT [Unique_Identifier4] PRIMARY KEY ([ID_Engine])
go

-- Table Тип КПП

CREATE TABLE [Тип КПП]
(
 [ID_КПП] Bigint NOT NULL,
 [КПП] Char(100) NULL
)
go

-- Add keys for table Тип КПП

ALTER TABLE [Тип КПП] ADD CONSTRAINT [Unique_Identifier5] PRIMARY KEY ([ID_КПП])
go

-- Table Техн. хар-ки автомобиля

CREATE TABLE [Техн. хар-ки автомобиля]
(
 [Год] Bigint NOT NULL,
 [Масса] Bigint NULL,
 [Объём двигателя] Float NULL,
 [Мощность] Float NULL,
 [Пробег] Bigint NULL,
 [Цена] Money NULL,
 [ID_colour] Bigint NOT NULL,
 [ID_Привод] Bigint NOT NULL,
 [ID_M] Bigint NOT NULL,
 [ID_Engine] Bigint NOT NULL,
 [ID_КПП] Bigint NOT NULL,
 [ID_хар-ки] Bigint NOT NULL
)
go

-- Create indexes for table Техн. хар-ки автомобиля

CREATE INDEX [IX_Relationship1] ON [Техн. хар-ки автомобиля] ([ID_colour])
go

CREATE INDEX [IX_Relationship3] ON [Техн. хар-ки автомобиля] ([ID_Привод])
go

CREATE INDEX [IX_Relationship5] ON [Техн. хар-ки автомобиля] ([ID_Engine])
go

CREATE INDEX [IX_Relationship6] ON [Техн. хар-ки автомобиля] ([ID_КПП])
go

-- Add keys for table Техн. хар-ки автомобиля

ALTER TABLE [Техн. хар-ки автомобиля] ADD CONSTRAINT [Unique_Identifier6] PRIMARY KEY ([ID_M],[ID_хар-ки])
go

-- Table Страны

CREATE TABLE [Страны]
(
 [ID_C] Bigint NOT NULL,
 [Страна] Char(100) NULL
)
go

-- Add keys for table Страны

ALTER TABLE [Страны] ADD CONSTRAINT [Unique_Identifier7] PRIMARY KEY ([ID_C])
go

-- Table Техническое состояние

CREATE TABLE [Техническое состояние]
(
 [ID_condition] Bigint NOT NULL,
 [Состояние] Char(100) NULL
)
go

-- Add keys for table Техническое состояние

ALTER TABLE [Техническое состояние] ADD CONSTRAINT [Unique_Identifier8] PRIMARY KEY ([ID_condition])
go

-- Table ПТС

CREATE TABLE [ПТС]
(
 [ID_ПТС] Bigint NOT NULL,
 [ПТС] Char(100) NULL
)
go

-- Add keys for table ПТС

ALTER TABLE [ПТС] ADD CONSTRAINT [Unique_Identifier9] PRIMARY KEY ([ID_ПТС])
go

-- Table Автомобиль

CREATE TABLE [Автомобиль]
(
 [vin] Char(256) NULL,
 [Гос. регистр. номер] Char(100) NULL,
 [Владельцев по ПТС] Bigint NULL,
 [ID_C] Bigint NOT NULL,
 [ID_condition] Bigint NOT NULL,
 [ID_ПТС] Bigint NOT NULL,
 [ID_M] Bigint NOT NULL,
 [ID_хар-ки] Bigint NOT NULL,
 [ID_Автомобиля] Bigint NOT NULL
)
go

-- Create indexes for table Автомобиль

CREATE INDEX [IX_Relationship7] ON [Автомобиль] ([ID_C])
go

-- Add keys for table Автомобиль

ALTER TABLE [Автомобиль] ADD CONSTRAINT [Unique_Identifier10] PRIMARY KEY ([ID_condition],[ID_ПТС],[ID_M],[ID_хар-ки],[ID_Автомобиля])
go

-- Table Договор

CREATE TABLE [Договор]
(
 [Цена] Money NULL,
 [Гарантия] Bigint NULL,
 [НДС] Money NULL,
 [ID_condition] Bigint NOT NULL,
 [ID_ПТС] Bigint NOT NULL,
 [ID_M] Bigint NOT NULL,
 [ID_Client] Bigint NOT NULL,
 [ID_Оплаты] Bigint NOT NULL,
 [ID_Договор] Bigint NOT NULL,
 [ID_хар-ки] Bigint NOT NULL,
 [ID_Автомобиля] Bigint NOT NULL
)
go

-- Add keys for table Договор

ALTER TABLE [Договор] ADD CONSTRAINT [Unique_Identifier11] PRIMARY KEY ([ID_condition],[ID_ПТС],[ID_M],[ID_Client],[ID_Оплаты],[ID_Договор],[ID_хар-ки],[ID_Автомобиля])
go

-- Table Клиент

CREATE TABLE [Клиент]
(
 [ID_Client] Bigint NOT NULL,
 [Фамилия] Char(100) NULL,
 [Имя] Char(100) NULL,
 [Отчество] Char(100) NULL
)
go

-- Add keys for table Клиент

ALTER TABLE [Клиент] ADD CONSTRAINT [Unique_Identifier12] PRIMARY KEY ([ID_Client])
go

-- Table Вид оплаты

CREATE TABLE [Вид оплаты]
(
 [ID_Оплаты] Bigint NOT NULL,
 [Вид оплаты] Char(100) NULL
)
go

-- Add keys for table Вид оплаты

ALTER TABLE [Вид оплаты] ADD CONSTRAINT [Unique_Identifier13] PRIMARY KEY ([ID_Оплаты])
go

-- Create foreign keys (relationships) section ------------------------------------------------- 


ALTER TABLE [Техн. хар-ки автомобиля] ADD CONSTRAINT [Relationship1] FOREIGN KEY ([ID_colour]) REFERENCES [Цвет] ([ID_colour]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Техн. хар-ки автомобиля] ADD CONSTRAINT [Relationship3] FOREIGN KEY ([ID_Привод]) REFERENCES [Привод] ([ID_Привод]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Техн. хар-ки автомобиля] ADD CONSTRAINT [Relationship4] FOREIGN KEY ([ID_M]) REFERENCES [Марка автомобиля] ([ID_M]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Техн. хар-ки автомобиля] ADD CONSTRAINT [Relationship5] FOREIGN KEY ([ID_Engine]) REFERENCES [Тип двигателя] ([ID_Engine]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Техн. хар-ки автомобиля] ADD CONSTRAINT [Relationship6] FOREIGN KEY ([ID_КПП]) REFERENCES [Тип КПП] ([ID_КПП]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Автомобиль] ADD CONSTRAINT [Relationship7] FOREIGN KEY ([ID_C]) REFERENCES [Страны] ([ID_C]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Автомобиль] ADD CONSTRAINT [Relationship8] FOREIGN KEY ([ID_condition]) REFERENCES [Техническое состояние] ([ID_condition]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Автомобиль] ADD CONSTRAINT [Relationship9] FOREIGN KEY ([ID_ПТС]) REFERENCES [ПТС] ([ID_ПТС]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Автомобиль] ADD CONSTRAINT [Relationship10] FOREIGN KEY ([ID_M], [ID_хар-ки]) REFERENCES [Техн. хар-ки автомобиля] ([ID_M], [ID_хар-ки]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Договор] ADD CONSTRAINT [Relationship11] FOREIGN KEY ([ID_condition], [ID_ПТС], [ID_M], [ID_хар-ки], [ID_Автомобиля]) REFERENCES [Автомобиль] ([ID_condition], [ID_ПТС], [ID_M], [ID_хар-ки], [ID_Автомобиля]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Договор] ADD CONSTRAINT [Relationship12] FOREIGN KEY ([ID_Client]) REFERENCES [Клиент] ([ID_Client]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Договор] ADD CONSTRAINT [Relationship13] FOREIGN KEY ([ID_Оплаты]) REFERENCES [Вид оплаты] ([ID_Оплаты]) ON UPDATE NO ACTION ON DELETE NO ACTION
go




