CREATE TABLE �����_����������(
ID_M BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
����� char(100) NOT NULL
)
CREATE TABLE ���_���������(
ID_engine BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
���_��������� CHAR(100) NOT NULL
)
CREATE TABLE ������(
ID_������ BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
������ CHAR(100) NOT NULL
)
CREATE TABLE ���_���(
ID_��� BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
��� CHAR(100) NOT NULL
)
CREATE TABLE ���_��������������_����������(
ID_�������������� BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
��� BIGINT NOT NULL,
����� BIGINT NOT NULL,
�����_��������� FLOAT NOT NULL,
�������� FLOAT NOT NULL,
������ BIGINT NOT NULL,
���� MONEY NOT NULL,
ID_colour BIGINT NOT NULL,
ID_������ BIGINT NOT NULL,
ID_M BIGINT NOT NULL,
ID_engine BIGINT NOT NULL,
ID_��� BIGINT NOT NULL
)
CREATE TABLE ������(
ID_C BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
������ CHAR(100) NOT NULL
)
CREATE TABLE ���_���������(
ID_condition BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
��������� CHAR(100) NOT NULL
)
CREATE TABLE ���(
ID_��� BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
��� CHAR(100) NOT NULL
)
CREATE TABLE ����������(
ID_���������� BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
vin CHAR(100) NOT NULL,
���_�������_����� CHAR(100) NOT NULL,
����������_��_��� BIGINT,
ID_C BIGINT NOT NULL,
ID_condition BIGINT NOT NULL,
ID_��� BIGINT NOT NULL,
ID_M BIGINT NOT NULL,
ID_�������������� BIGINT NOT NULL
)
CREATE TABLE ������(
ID_Client BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
������� CHAR(100) NOT NULL,
��� CHAR(100) NOT NULL,
�������� CHAR(100) NOT NULL
)
CREATE TABLE ���_������(
ID_������ BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
���_������ CHAR(100) NOT NULL
)
CREATE TABLE �������(
ID_�������  BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
���� MONEY NOT NULL,
�������� BIGINT NOT NULL,
��� MONEY NOT NULL,
ID_condition BIGINT NOT NULL FOREIGN KEY REFERENCES ���_���������(ID_condition),
ID_��� BIGINT NOT NULL FOREIGN KEY REFERENCES ���(ID_���),
ID_M BIGINT NOT NULL FOREIGN KEY REFERENCES �����_����������(ID_M),
ID_Client BIGINT NOT NULL FOREIGN KEY REFERENCES ������ (ID_Client),
ID_������ BIGINT NOT NULL FOREIGN KEY REFERENCES ���_������ (ID_������),
ID_�������������� BIGINT NOT NULL FOREIGN KEY REFERENCES ���_��������������_���������� (ID_��������������),
ID_���������� BIGINT NOT NULL FOREIGN KEY REFERENCES ���������� (ID_����������)
)
INSERT INTO �����_����������(ID_M,�����) Values(1,'Renault');--���������� ������
INSERT INTO �����_����������(ID_M,�����) Values(2,'Lada');
INSERT INTO �����_����������(ID_M,�����) Values(3,'Mercedes');
INSERT INTO �����_����������(ID_M,�����) Values(4,'BMW');
SELECT ID_M FROM �����_���������� --select
INSERT INTO �����_����������(ID_M,�����) Values(5,'Lada');
SELECT DISTINCT ����� FROM �����_���������� --distinct
SELECT ����� FROM �����_���������� ORDER BY  ����� --order by
SELECT ����� FROM �����_���������� WHERE ID_M>=1 -- WHERE � ������� ���������
SELECT  ����� FROM �����_���������� WHERE ID_M  IS NULL -- NULL
SELECT ����� FROM �����_���������� WHERE ID_M BETWEEN 1 AND 5--AND
SELECT ����� FROM �����_���������� WHERE ID_M > 1 OR ID_M<5 --OR
SELECT ����� FROM �����_���������� WHERE  ����� LIKE '%a' --LIKE
SELECT ����� FROM �����_���������� WHERE ID_M NOT BETWEEN 1 AND 2--NOT



