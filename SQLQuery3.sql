CREATE TABLE Test(
ID INT NOT NULL PRIMARY KEY,
FIO CHAR(20) NOT NULL
)
ALTER TABLE Test
ADD AGE INT NOT NULL
DROP TABLE Test
CREATE TABLE ����(
ID_colour BIGINT NOT NULL PRIMARY KEY,
colour CHAR(100) NOT NULL
)
CREATE TABLE �����_����������(
ID_M BIGINT NOT NULL PRIMARY KEY,
����� char(100) NOT NULL
)
CREATE TABLE ���_���������(
ID_engine BIGINT NOT NULL PRIMARY KEY,
���_��������� CHAR(100) NOT NULL
)
CREATE TABLE ������(
ID_������ BIGINT NOT NULL PRIMARY KEY,
������ CHAR(100) NOT NULL
)
CREATE TABLE ���_���(
ID_��� BIGINT NOT NULL PRIMARY KEY,
��� CHAR(100) NOT NULL
)
CREATE TABLE ���_��������������_����������(
ID_�������������� BIGINT NOT NULL PRIMARY KEY,
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
ID_C BIGINT NOT NULL PRIMARY KEY,
������ CHAR(100) NOT NULL
)
CREATE TABLE ���_���������(
ID_condition BIGINT NOT NULL PRIMARY KEY,
��������� CHAR(100) NOT NULL
)
CREATE TABLE ���(
ID_��� BIGINT NOT NULL PRIMARY KEY,
��� CHAR(100) NOT NULL
)
CREATE TABLE ����������(
ID_���������� BIGINT NOT NULL PRIMARY KEY,
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
ID_Client BIGINT NOT NULL PRIMARY KEY,
������� CHAR(100) NOT NULL,
��� CHAR(100) NOT NULL,
�������� CHAR(100) NOT NULL
)
CREATE TABLE ���_������(
ID_������ BIGINT NOT NULL PRIMARY KEY,
���_������ CHAR(100) NOT NULL
)
CREATE TABLE �������(
ID_�������  BIGINT NOT NULL PRIMARY KEY,
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
UPDATE  �����_���������� SET �����='Renault_Logan' WHERE ID_M=1;
UPDATE  �����_���������� SET �����='Lada_Granta' WHERE ID_M=2;
DELETE FROM �����_���������� WHERE ID_M=4;
DELETE FROM �����_���������� WHERE ID_M=3;

INSERT INTO �����_����������(ID_M,�����) Values(3,'Mercedes');
INSERT INTO �����_����������(ID_M,�����) Values(4,'BMW');
TRUNCATE TABLE �����_����������;

