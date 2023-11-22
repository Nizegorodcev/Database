/*
Created: 22.11.2023
Modified: 22.11.2023
Model: Logical model
Database: MS SQL Server 2012
*/


-- Create tables section -------------------------------------------------

-- Table ����

CREATE TABLE [����]
(
 [ID_colour] Bigint NOT NULL,
 [����] Char(100) NULL
)
go

-- Add keys for table ����

ALTER TABLE [����] ADD CONSTRAINT [Unique_Identifier1] PRIMARY KEY ([ID_colour])
go

-- Table ������

CREATE TABLE [������]
(
 [ID_������] Bigint NOT NULL,
 [������] Char(100) NULL
)
go

-- Add keys for table ������

ALTER TABLE [������] ADD CONSTRAINT [Unique_Identifier2] PRIMARY KEY ([ID_������])
go

-- Table ����� ����������

CREATE TABLE [����� ����������]
(
 [ID_M] Bigint NOT NULL,
 [�����] Char(100) NULL
)
go

-- Add keys for table ����� ����������

ALTER TABLE [����� ����������] ADD CONSTRAINT [Unique_Identifier3] PRIMARY KEY ([ID_M])
go

-- Table ��� ���������

CREATE TABLE [��� ���������]
(
 [ID_Engine] Bigint NOT NULL,
 [���_���������] Char(100) NULL
)
go

-- Add keys for table ��� ���������

ALTER TABLE [��� ���������] ADD CONSTRAINT [Unique_Identifier4] PRIMARY KEY ([ID_Engine])
go

-- Table ��� ���

CREATE TABLE [��� ���]
(
 [ID_���] Bigint NOT NULL,
 [���] Char(100) NULL
)
go

-- Add keys for table ��� ���

ALTER TABLE [��� ���] ADD CONSTRAINT [Unique_Identifier5] PRIMARY KEY ([ID_���])
go

-- Table ����. ���-�� ����������

CREATE TABLE [����. ���-�� ����������]
(
 [���] Bigint NOT NULL,
 [�����] Bigint NULL,
 [����� ���������] Float NULL,
 [��������] Float NULL,
 [������] Bigint NULL,
 [����] Money NULL,
 [ID_colour] Bigint NOT NULL,
 [ID_������] Bigint NOT NULL,
 [ID_M] Bigint NOT NULL,
 [ID_Engine] Bigint NOT NULL,
 [ID_���] Bigint NOT NULL,
 [ID_���-��] Bigint NOT NULL
)
go

-- Create indexes for table ����. ���-�� ����������

CREATE INDEX [IX_Relationship1] ON [����. ���-�� ����������] ([ID_colour])
go

CREATE INDEX [IX_Relationship3] ON [����. ���-�� ����������] ([ID_������])
go

CREATE INDEX [IX_Relationship5] ON [����. ���-�� ����������] ([ID_Engine])
go

CREATE INDEX [IX_Relationship6] ON [����. ���-�� ����������] ([ID_���])
go

-- Add keys for table ����. ���-�� ����������

ALTER TABLE [����. ���-�� ����������] ADD CONSTRAINT [Unique_Identifier6] PRIMARY KEY ([ID_M],[ID_���-��])
go

-- Table ������

CREATE TABLE [������]
(
 [ID_C] Bigint NOT NULL,
 [������] Char(100) NULL
)
go

-- Add keys for table ������

ALTER TABLE [������] ADD CONSTRAINT [Unique_Identifier7] PRIMARY KEY ([ID_C])
go

-- Table ����������� ���������

CREATE TABLE [����������� ���������]
(
 [ID_condition] Bigint NOT NULL,
 [���������] Char(100) NULL
)
go

-- Add keys for table ����������� ���������

ALTER TABLE [����������� ���������] ADD CONSTRAINT [Unique_Identifier8] PRIMARY KEY ([ID_condition])
go

-- Table ���

CREATE TABLE [���]
(
 [ID_���] Bigint NOT NULL,
 [���] Char(100) NULL
)
go

-- Add keys for table ���

ALTER TABLE [���] ADD CONSTRAINT [Unique_Identifier9] PRIMARY KEY ([ID_���])
go

-- Table ����������

CREATE TABLE [����������]
(
 [vin] Char(256) NULL,
 [���. �������. �����] Char(100) NULL,
 [���������� �� ���] Bigint NULL,
 [ID_C] Bigint NOT NULL,
 [ID_condition] Bigint NOT NULL,
 [ID_���] Bigint NOT NULL,
 [ID_M] Bigint NOT NULL,
 [ID_���-��] Bigint NOT NULL,
 [ID_����������] Bigint NOT NULL
)
go

-- Create indexes for table ����������

CREATE INDEX [IX_Relationship7] ON [����������] ([ID_C])
go

-- Add keys for table ����������

ALTER TABLE [����������] ADD CONSTRAINT [Unique_Identifier10] PRIMARY KEY ([ID_condition],[ID_���],[ID_M],[ID_���-��],[ID_����������])
go

-- Table �������

CREATE TABLE [�������]
(
 [����] Money NULL,
 [��������] Bigint NULL,
 [���] Money NULL,
 [ID_condition] Bigint NOT NULL,
 [ID_���] Bigint NOT NULL,
 [ID_M] Bigint NOT NULL,
 [ID_Client] Bigint NOT NULL,
 [ID_������] Bigint NOT NULL,
 [ID_�������] Bigint NOT NULL,
 [ID_���-��] Bigint NOT NULL,
 [ID_����������] Bigint NOT NULL
)
go

-- Add keys for table �������

ALTER TABLE [�������] ADD CONSTRAINT [Unique_Identifier11] PRIMARY KEY ([ID_condition],[ID_���],[ID_M],[ID_Client],[ID_������],[ID_�������],[ID_���-��],[ID_����������])
go

-- Table ������

CREATE TABLE [������]
(
 [ID_Client] Bigint NOT NULL,
 [�������] Char(100) NULL,
 [���] Char(100) NULL,
 [��������] Char(100) NULL
)
go

-- Add keys for table ������

ALTER TABLE [������] ADD CONSTRAINT [Unique_Identifier12] PRIMARY KEY ([ID_Client])
go

-- Table ��� ������

CREATE TABLE [��� ������]
(
 [ID_������] Bigint NOT NULL,
 [��� ������] Char(100) NULL
)
go

-- Add keys for table ��� ������

ALTER TABLE [��� ������] ADD CONSTRAINT [Unique_Identifier13] PRIMARY KEY ([ID_������])
go

-- Create foreign keys (relationships) section ------------------------------------------------- 


ALTER TABLE [����. ���-�� ����������] ADD CONSTRAINT [Relationship1] FOREIGN KEY ([ID_colour]) REFERENCES [����] ([ID_colour]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [����. ���-�� ����������] ADD CONSTRAINT [Relationship3] FOREIGN KEY ([ID_������]) REFERENCES [������] ([ID_������]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [����. ���-�� ����������] ADD CONSTRAINT [Relationship4] FOREIGN KEY ([ID_M]) REFERENCES [����� ����������] ([ID_M]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [����. ���-�� ����������] ADD CONSTRAINT [Relationship5] FOREIGN KEY ([ID_Engine]) REFERENCES [��� ���������] ([ID_Engine]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [����. ���-�� ����������] ADD CONSTRAINT [Relationship6] FOREIGN KEY ([ID_���]) REFERENCES [��� ���] ([ID_���]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [����������] ADD CONSTRAINT [Relationship7] FOREIGN KEY ([ID_C]) REFERENCES [������] ([ID_C]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [����������] ADD CONSTRAINT [Relationship8] FOREIGN KEY ([ID_condition]) REFERENCES [����������� ���������] ([ID_condition]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [����������] ADD CONSTRAINT [Relationship9] FOREIGN KEY ([ID_���]) REFERENCES [���] ([ID_���]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [����������] ADD CONSTRAINT [Relationship10] FOREIGN KEY ([ID_M], [ID_���-��]) REFERENCES [����. ���-�� ����������] ([ID_M], [ID_���-��]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [�������] ADD CONSTRAINT [Relationship11] FOREIGN KEY ([ID_condition], [ID_���], [ID_M], [ID_���-��], [ID_����������]) REFERENCES [����������] ([ID_condition], [ID_���], [ID_M], [ID_���-��], [ID_����������]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [�������] ADD CONSTRAINT [Relationship12] FOREIGN KEY ([ID_Client]) REFERENCES [������] ([ID_Client]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [�������] ADD CONSTRAINT [Relationship13] FOREIGN KEY ([ID_������]) REFERENCES [��� ������] ([ID_������]) ON UPDATE NO ACTION ON DELETE NO ACTION
go




