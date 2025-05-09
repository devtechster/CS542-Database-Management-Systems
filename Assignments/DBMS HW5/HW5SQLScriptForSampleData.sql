DROP TABLE PC;

DROP TABLE Laptop;

DROP TABLE Product;


CREATE TABLE Product(
	manufacturer CHAR(10),
        model CHAR(10) PRIMARY KEY,
	type CHAR(10)
);

CREATE TABLE PC(
	model CHAR(10) PRIMARY KEY,
	speed INT,
	ram INT,
	hd INT,
	rd CHAR(10),
	price INT,
        FOREIGN KEY (model) REFERENCES Product(model)
);


CREATE TABLE Laptop(
	model CHAR(10) PRIMARY KEY,
	speed INT,
	ram INT,
	hd INT,
	screen number(4,2),
	price INT,
        FOREIGN KEY (model) REFERENCES Product(model)
);



INSERT INTO Product
VALUES('E','1000','PC');

INSERT INTO Product
VALUES('A','2002','Laptop');

INSERT INTO Product
VALUES('A','2004','Laptop');

INSERT INTO Product
VALUES('A','2006','Laptop');

INSERT INTO Product
VALUES('B','1002','PC');

INSERT INTO Product
VALUES('B','1003','PC');

INSERT INTO Product
VALUES('C','1004','PC');

INSERT INTO Product
VALUES('B','2005','Laptop');

INSERT INTO PC
VALUES('1000',700,64,10,'48xCD',799);

INSERT INTO PC
VALUES('1002',1500,128,60,'12xDVD',2499);

INSERT INTO PC
VALUES('1003',700,64,10,'8xDVD',899);

INSERT INTO PC
VALUES('1004',700,64,10,'6xDVD',759);

INSERT INTO Laptop
VALUES('2002',700,64,5,12.1,1488);

INSERT INTO Laptop
VALUES('2004',850,64,10,15.1,2583);

INSERT INTO Laptop
VALUES('2005',800,96,10,15.1,1999);

INSERT INTO Laptop
VALUES('2006',850,64,10,15.1,2584);