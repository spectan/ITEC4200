/**UNCOMMENT, SELECT AND RUN IF STUFF IS REALLY MESSED UP
DROP TABLE Customer CASCADE CONSTRAINTS;
DROP SEQUENCE CUSTOMER_SEQ;
DROP TABLE OrderT CASCADE CONSTRAINTS;
DROP SEQUENCE ORDER_ID_SEQ;
DROP TABLE Hall CASCADE CONSTRAINTS;
DROP TABLE Performer CASCADE CONSTRAINTS;
DROP TABLE PerformanceT CASCADE CONSTRAINTS;
DROP SEQUENCE PERFORMANCE_ID_SEQ;
DROP TABLE Ticket CASCADE CONSTRAINTS; 
**/

DROP TABLE Customer CASCADE CONSTRAINTS; 
CREATE TABLE Customer( 

Customer_ID NUMBER, 

First_Name VarChar2(15), 

Last_Name VarChar2(15), 

Email_Address VarChar2(30), 

CONSTRAINT Customer_ID_PK PRIMARY KEY (Customer_ID) 
); 

DROP TABLE OrderT CASCADE CONSTRAINTS;
CREATE TABLE OrderT( 

Order_ID NUMBER , 

Order_Date DATE, 

Total NUMBER(5,2), 

Customer_ID_Order NUMBER, 

CONSTRAINT Order_ID_PK PRIMARY KEY (Order_ID), 

CONSTRAINT Customer_ID_FK FOREIGN KEY (Customer_ID_Order) 

                                    REFERENCES Customer (Customer_ID) 

                                    ON DELETE CASCADE 
); 

DROP TABLE Hall CASCADE CONSTRAINTS;
CREATE TABLE Hall( 

Hall_ID VarChar2(8), 

Capacity_H NUMBER, 

Hall_Name VarChar2(10), 

CONSTRAINT Hall_ID_PK PRIMARY KEY (Hall_ID) 
); 

DROP TABLE Performer CASCADE CONSTRAINTS;
CREATE TABLE Performer( 

Performer_ID VarChar2(10), 

Performer_First_Name VarChar2(15), 

Performer_Last_Name VarChar2(15), 

Genre VarChar(15), 

CONSTRAINT Performer_ID_PK PRIMARY KEY (Performer_ID)
); 

DROP TABLE PerformanceT CASCADE CONSTRAINTS;
CREATE TABLE PerformanceT( 

Performance_ID NUMBER, 

Hall_ID VarChar2(8), 

Performer_ID VarChar2(10), 

Performance_Date DATE, 

CONSTRAINT Performance_ID_PK PRIMARY KEY (Performance_ID), 

CONSTRAINT Hall_ID_FK FOREIGN KEY (Hall_ID) 

                        REFERENCES Hall (Hall_ID)  ON DELETE CASCADE, 

CONSTRAINT Performer_ID_FK FOREIGN KEY (Performer_ID) 

                            REFERENCES Performer (Performer_ID)  ON DELETE CASCADE 
); 

DROP TABLE Ticket CASCADE CONSTRAINTS; 
CREATE TABLE Ticket( 

Ticket_Number VarChar(8), 

Order_ID NUMBER, 

Performance_ID NUMBER, 

CONSTRAINT Ticket_Number_PK PRIMARY KEY (Ticket_Number), 

CONSTRAINT Order_ID_FK FOREIGN KEY (Order_ID) 

            REFERENCES OrderT (Order_ID)  ON DELETE CASCADE, 

CONSTRAINT Performance_ID_FK FOREIGN KEY (Performance_ID) 

            REFERENCES PerformanceT (Performance_ID)  ON DELETE CASCADE 

); 

--Create Sequence For Customer_ID 
CREATE SEQUENCE Customer_Seq 
START WITH 200000 
INCREMENT BY 50000; 


INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email_Address) 
VALUES (Customer_Seq.NEXTVAL, 'Amanda','Mohammed','amohammed@aol.com'); 

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email_Address) 
VALUES (Customer_Seq.NEXTVAL, 'Linda','Johnson','ljohnson@aol.com'); 

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email_Address) 
VALUES (Customer_Seq.NEXTVAL, 'Christomer','Titus','ctitus@gmail.com'); 

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email_Address) 
VALUES (Customer_Seq.NEXTVAL, 'Yaris','Cotto','yariscq@gmail.com'); 

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email_Address) 
VALUES (Customer_Seq.NEXTVAL, 'Selena','Gomez','sgomez@gmail.com'); 

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email_Address) 
VALUES (Customer_Seq.NEXTVAL, 'Samuel','Mckinney','smckinney@gmail.com'); 

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email_Address) 
VALUES (Customer_Seq.NEXTVAL, 'Ada','Quinones','orchid9607@aol.com'); 

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email_Address) 
VALUES (Customer_Seq.NEXTVAL, 'Billy','Mays','bmays.com'); 

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email_Address) 
VALUES (Customer_Seq.NEXTVAL, 'Kadijah','Smith','ksmith@gmail.com'); 

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email_Address) 
VALUES (Customer_Seq.NEXTVAL, 'Ashley','Miburn','amilburn1996@gmail.com'); 

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email_Address) 
VALUES (Customer_Seq.NEXTVAL, 'Jackee','Lewis','jlewis@gmail.com'); 

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email_Address) 
VALUES (Customer_Seq.NEXTVAL, 'Stella','Elkina','selkina@gmail.com'); 

INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Email_Address) 
VALUES (Customer_Seq.NEXTVAL, 'Zeke','Gibson','zgibson@gmail.com'); 



-- Inserting Values into OrderT Table 

-- Create sequence for order_ID 
CREATE SEQUENCE Order_ID_Seq 
START WITH 1000 
INCREMENT BY 100; 

INSERT INTO OrderT (Order_ID, Order_Date, Total, Customer_ID_Order) 
VALUES (Order_ID_Seq.NEXTVAL, TO_DATE('2021-04-27 12:45:00', 'yyyy-MM-dd hh:mi:ss'), 345, 300000);

INSERT INTO OrderT (Order_ID, Order_Date, Total, Customer_ID_Order)
VALUES (Order_ID_Seq.NEXTVAL, TO_DATE('2021-02-27 01:45:00', 'yyyy-MM-dd hh:mi:ss'), 233.12, 500000);

INSERT INTO OrderT (Order_ID, Order_Date, Total, Customer_ID_Order)
VALUES (Order_ID_Seq.NEXTVAL, TO_DATE('2020-12-06 03:29:00', 'yyyy-MM-dd hh:mi:ss'), 123.98, 550000);

INSERT INTO OrderT (Order_ID, Order_Date, Total, Customer_ID_Order)
VALUES (Order_ID_Seq.NEXTVAL, TO_DATE('2020-11-27 09:12:00', 'yyyy-MM-dd hh:mi:ss'), 341.23, 200000);

INSERT INTO OrderT (Order_ID, Order_Date, Total, Customer_ID_Order)
VALUES (Order_ID_Seq.NEXTVAL, TO_DATE('2020-10-27 07:45:00', 'yyyy-MM-dd hh:mi:ss'), 98.13, 250000);

INSERT INTO OrderT (Order_ID, Order_Date, Total, Customer_ID_Order)
VALUES (Order_ID_Seq.NEXTVAL, TO_DATE('2020-09-13 03:41:00', 'yyyy-MM-dd hh:mi:ss'), 323.12, 350000);

INSERT INTO OrderT (Order_ID, Order_Date, Total, Customer_ID_Order)
VALUES (Order_ID_Seq.NEXTVAL, TO_DATE('2020-08-27 12:43:00', 'yyyy-MM-dd hh:mi:ss'), 143.23, 400000);

INSERT INTO OrderT (Order_ID, Order_Date, Total, Customer_ID_Order)
VALUES (Order_ID_Seq.NEXTVAL, TO_DATE('2020-06-27 11:23:00', 'yyyy-MM-dd hh:mi:ss'), 321.45, 450000);

INSERT INTO OrderT (Order_ID, Order_Date, Total, Customer_ID_Order)
VALUES (Order_ID_Seq.NEXTVAL, TO_DATE('2021-04-27 11:56:00', 'yyyy-MM-dd hh:mi:ss'), 212.24, 600000);

INSERT INTO OrderT (Order_ID, Order_Date, Total, Customer_ID_Order)
VALUES (Order_ID_Seq.NEXTVAL, TO_DATE('2020-03-22 10:14:00', 'yyyy-MM-dd hh:mi:ss'), 424.24, 650000);

INSERT INTO OrderT (Order_ID, Order_Date, Total, Customer_ID_Order)
VALUES (Order_ID_Seq.NEXTVAL, TO_DATE('2020-08-11 06:56:00', 'yyyy-MM-dd hh:mi:ss'), 188.33, 700000);

INSERT INTO OrderT (Order_ID, Order_Date, Total, Customer_ID_Order)
VALUES (Order_ID_Seq.NEXTVAL, TO_DATE('2020-12-27 05:55:00', 'yyyy-MM-dd hh:mi:ss'), 400.24, 750000);

INSERT INTO OrderT (Order_ID, Order_Date, Total, Customer_ID_Order)
VALUES (Order_ID_Seq.NEXTVAL, TO_DATE('2020-12-12 07:55:00', 'yyyy-MM-dd hh:mi:ss'), 145.24, 800000);



-- INSERTING VALUES INTO HALL 
INSERT INTO Hall (Hall_ID, Capacity_H, Hall_Name)
VALUES('ABCD1234', 400, 'Bill Hall');

INSERT INTO Hall (Hall_ID, Capacity_H, Hall_Name)
VALUES('ABEF1245', 500, 'John Hall');

INSERT INTO Hall (Hall_ID, Capacity_H, Hall_Name)
VALUES('ABCD4444', 10000, 'Great Hall');

INSERT INTO Hall (Hall_ID, Capacity_H, Hall_Name)
VALUES('ABWQ9989', 700, 'Moore Hall');

INSERT INTO Hall (Hall_ID, Capacity_H, Hall_Name)
VALUES('ACLO1204', 800, 'Lynd Hall');

INSERT INTO Hall (Hall_ID, Capacity_H, Hall_Name)
VALUES('AQWE9898', 1200, 'Tim Hall');

INSERT INTO Hall (Hall_ID, Capacity_H, Hall_Name)
VALUES('ABLO1313', 900, 'Norri Hall');

INSERT INTO Hall (Hall_ID, Capacity_H, Hall_Name)
VALUES('AGGE1234', 7700, 'SG Hall');


-- Inserting into Performer 
INSERT INTO Performer(Performer_ID, Performer_First_Name, Performer_Last_Name, Genre)
VALUES('AAAA1111','Rihanna','Fenty','Pop');

INSERT INTO Performer(Performer_ID, Performer_First_Name, Performer_Last_Name, Genre)
VALUES('BBBB1111','Katy','Perry','Pop');

INSERT INTO Performer(Performer_ID, Performer_First_Name, Performer_Last_Name, Genre)
VALUES('CCCC1111','Beyonce','Knowles','Pop');

INSERT INTO Performer(Performer_ID, Performer_First_Name, Performer_Last_Name, Genre)
VALUES('DDDD1111','Leona','Lewis','RnB');

INSERT INTO Performer(Performer_ID, Performer_First_Name, Performer_Last_Name, Genre)
VALUES('EEEE1111','Justin','Beiber','Pop');

INSERT INTO Performer(Performer_ID, Performer_First_Name, Performer_Last_Name, Genre)
VALUES('FFFF1111','Ariana','Grande','Pop');

INSERT INTO Performer(Performer_ID, Performer_First_Name, Performer_Last_Name, Genre)
VALUES('GGGG1111','Drake','Graham','Rap');

INSERT INTO Performer(Performer_ID, Performer_First_Name, Performer_Last_Name, Genre)
VALUES('HHHH1111','Cardi','B','Rap');

INSERT INTO Performer(Performer_ID, Performer_First_Name, Performer_Last_Name, Genre)
VALUES('JJJJ1111','Taylor','Swift','Pop');

INSERT INTO Performer(Performer_ID, Performer_First_Name, Performer_Last_Name, Genre)
VALUES('KKKK1111','Travis','Scott','Rap');

INSERT INTO Performer(Performer_ID, Performer_First_Name, Performer_Last_Name, Genre)
VALUES('PPPP1111','Doja','Cat','Pop');

INSERT INTO Performer(Performer_ID, Performer_First_Name, Performer_Last_Name, Genre)
VALUES('TTTT1111','Demi','Lovato','Pop');



-- INSERTING INTO PERFORMANCET 
-- CREATE SEQUENCE 
CREATE SEQUENCE Performance_ID_Seq 
START WITH 1
INCREMENT BY 1;

INSERT INTO PerformanceT(Performance_ID, Hall_ID, Performer_ID, Performance_Date)
VALUES(Performance_ID_Seq.NEXTVAL, 'ABCD1234', 'EEEE1111', TO_DATE('2023-02-27 08:45:00', 'yyyy-MM-dd hh:mi:ss'));

INSERT INTO PerformanceT(Performance_ID, Hall_ID, Performer_ID, Performance_Date)
VALUES(Performance_ID_Seq.NEXTVAL, 'ABCD1234', 'KKKK1111', TO_DATE('2023-01-27 09:45:00', 'yyyy-MM-dd hh:mi:ss'));

INSERT INTO PerformanceT(Performance_ID, Hall_ID, Performer_ID, Performance_Date)
VALUES(Performance_ID_Seq.NEXTVAL, 'ABCD4444', 'CCCC1111', TO_DATE('2023-04-23 09:30:00', 'yyyy-MM-dd hh:mi:ss'));

INSERT INTO PerformanceT(Performance_ID, Hall_ID, Performer_ID, Performance_Date)
VALUES(Performance_ID_Seq.NEXTVAL, 'ABLO1313', 'PPPP1111', TO_DATE('2023-03-27 09:00:00', 'yyyy-MM-dd hh:mi:ss'));

INSERT INTO PerformanceT(Performance_ID, Hall_ID, Performer_ID, Performance_Date)
VALUES(Performance_ID_Seq.NEXTVAL, 'AGGE1234', 'HHHH1111', TO_DATE('2023-06-27 08:30:00', 'yyyy-MM-dd hh:mi:ss'));

INSERT INTO PerformanceT(Performance_ID, Hall_ID, Performer_ID, Performance_Date)
VALUES(Performance_ID_Seq.NEXTVAL, 'AQWE9898', 'GGGG1111', TO_DATE('2023-07-27 08:45:00', 'yyyy-MM-dd hh:mi:ss'));

INSERT INTO PerformanceT(Performance_ID, Hall_ID, Performer_ID, Performance_Date)
VALUES(Performance_ID_Seq.NEXTVAL, 'AQWE9898', 'AAAA1111', TO_DATE('2023-09-27 08:30:00', 'yyyy-MM-dd hh:mi:ss'));

INSERT INTO PerformanceT(Performance_ID, Hall_ID, Performer_ID, Performance_Date)
VALUES(Performance_ID_Seq.NEXTVAL, 'AQWE9898', 'BBBB1111', TO_DATE('2023-05-27 08:45:00', 'yyyy-MM-dd hh:mi:ss'));

INSERT INTO PerformanceT(Performance_ID, Hall_ID, Performer_ID, Performance_Date)
VALUES(Performance_ID_Seq.NEXTVAL, 'AQWE9898', 'DDDD1111', TO_DATE('2023-07-04 08:00:00', 'yyyy-MM-dd hh:mi:ss'));

INSERT INTO PerformanceT(Performance_ID, Hall_ID, Performer_ID, Performance_Date)
VALUES(Performance_ID_Seq.NEXTVAL, 'ABCD1234', 'FFFF1111', TO_DATE('2023-09-27 08:45:00', 'yyyy-MM-dd hh:mi:ss'));

INSERT INTO PerformanceT(Performance_ID, Hall_ID, Performer_ID, Performance_Date)
VALUES(Performance_ID_Seq.NEXTVAL, 'ABEF1245', 'JJJJ1111', TO_DATE('2023-07-20 09:40:00', 'yyyy-MM-dd hh:mi:ss'));

INSERT INTO PerformanceT(Performance_ID, Hall_ID, Performer_ID, Performance_Date)
VALUES(Performance_ID_Seq.NEXTVAL, 'AQWE9898', 'TTTT1111', TO_DATE('2023-05-22 08:00:00', 'yyyy-MM-dd hh:mi:ss'));

INSERT INTO PerformanceT(Performance_ID, Hall_ID, Performer_ID, Performance_Date)
VALUES(Performance_ID_Seq.NEXTVAL, 'AQWE9898', 'DDDD1111', TO_DATE('2023-07-03 08:00:00', 'yyyy-MM-dd hh:mi:ss'));

INSERT INTO PerformanceT(Performance_ID, Hall_ID, Performer_ID, Performance_Date)
VALUES(Performance_ID_Seq.NEXTVAL, 'AQWE9898', 'DDDD1111', TO_DATE('2023-07-05 08:00:00', 'yyyy-MM-dd hh:mi:ss'));

--INSERT INTO TICKETS  
INSERT INTO Ticket(Ticket_Number, Order_ID, Performance_ID)
VALUES('QDHU1234', 1000, 1);

INSERT INTO Ticket(Ticket_Number, Order_ID, Performance_ID)
VALUES('DJUN1234', 1100, 2);

INSERT INTO Ticket(Ticket_Number, Order_ID, Performance_ID)
VALUES('DLOI1234', 1200, 3);

INSERT INTO Ticket(Ticket_Number, Order_ID, Performance_ID)
VALUES('DSRT1234', 1300, 4);

INSERT INTO Ticket(Ticket_Number, Order_ID, Performance_ID)
VALUES('DQKJ1234', 1400, 5);

INSERT INTO Ticket(Ticket_Number, Order_ID, Performance_ID)
VALUES('AHNI1234', 1500, 6);

INSERT INTO Ticket(Ticket_Number, Order_ID, Performance_ID)
VALUES('HIQN1234', 1600, 7);

INSERT INTO Ticket(Ticket_Number, Order_ID, Performance_ID)
VALUES('JONH1234', 1700, 8);

INSERT INTO Ticket(Ticket_Number, Order_ID, Performance_ID)
VALUES('PETE1234', 1800, 9);

INSERT INTO Ticket(Ticket_Number, Order_ID, Performance_ID)
VALUES('JUNM1234', 1900, 10);

INSERT INTO Ticket(Ticket_Number, Order_ID, Performance_ID)
VALUES('ANJM1234', 2000, 11);

INSERT INTO Ticket(Ticket_Number, Order_ID, Performance_ID)
VALUES('ABNB1234', 2100, 12);

INSERT INTO Ticket(Ticket_Number, Order_ID, Performance_ID)
VALUES('LKOO1234', 2200, 13);