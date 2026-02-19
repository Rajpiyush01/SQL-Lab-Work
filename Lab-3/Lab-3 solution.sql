--DEPARTMENT INSERTS
INSERT INTO Department VALUES (105,'Computer Science and Engineering','Block C');
INSERT INTO Department VALUES (110,'Electrical and Electronics Engineering','Block D');
INSERT INTO Department VALUES (101,'Civil Engineering','Block A');
INSERT INTO Department VALUES (157,'Computer Science and Engineering (AIML)','Block G');
INSERT INTO Department VALUES (102,'Mechanical Engineering','Block B');
INSERT INTO Department VALUES (119,'Civil Engineering with Computer Application','Block F');
INSERT INTO Department VALUES (118,'3D Animation and Graphics','Block E');


--FACULTY INSERTS
INSERT INTO Faculty VALUES (801,'Md. Izhar','Associate Professor','mdizhar1996@gmail.com',105);
INSERT INTO Faculty VALUES (802,'Hare Krishna Mishra','Professor','hare.dbit@gmail.com',110);
INSERT INTO Faculty VALUES (803,'Bablu Das','Associate Professor','bkmech78@gmail.com',102);
INSERT INTO Faculty VALUES (804,'Kunal Kumar','Associate Professor','kunal1989kumar@gmail.com',101);
INSERT INTO Faculty VALUES (805,'Manisha Kumari Singh','Associate Professor','manisha.ks241@gmail.com',118);
INSERT INTO Faculty VALUES (806,'Abhimanyu Mandal','Associate Professor','mandal.abhimanyu225@gmail.com',110);
INSERT INTO Faculty VALUES (807,'Rupesh Kumar','Associate Professor','rupesh.kumar@gmail.com',101);
INSERT INTO Faculty VALUES (808,'Ajay Giri','Assistant Professor','ajay_giri05@rediffmail.com',102);
INSERT INTO Faculty VALUES (809,'Murlidhar Prasad Singh','Associate Professor','singhmurlidhar@gmail.com',105);
INSERT INTO Faculty VALUES (810,'Ashish Kumar Suman','Professor','sumanashish.rkt@gmail.com',110);
INSERT INTO Faculty VALUES (811,'Nishikant Kumar','Associate Professor','nishikantbpmce32@gmail.com',101);
INSERT INTO Faculty VALUES (812,'Prity Kumari Choudhary','Associate Professor','prity.choudhary@gmail.com',105);
INSERT INTO Faculty VALUES (813,'Rahul Ranjan Bharti','Associate Professor','15rahulbharti@gmail.com',102);
INSERT INTO Faculty VALUES (814,'Abhishek Kumar','Associate Professor','abhishek.kumar@gmail.com',118);
INSERT INTO Faculty VALUES (815,'Praveen Kumar','Assistant Professor','praveenkumaryadav782@gmail.com',157);
INSERT INTO Faculty VALUES (816,'N. Kumar','Associate Professor','n.kumar@gmail.com',119);


-- COURSE INSERTS
INSERT INTO Course VALUES (20101,'Machine Learning',4,157,815);
INSERT INTO Course VALUES (20102,'Artificial Intelligence',4,157,815);
INSERT INTO Course VALUES (20201,'Control Systems',4,110,806);
INSERT INTO Course VALUES (20202,'Power Electronics',4,110,810);
INSERT INTO Course VALUES (20301,'Database Management Systems',4,105,801);
INSERT INTO Course VALUES (20302,'Software Engineering',4,105,809);
INSERT INTO Course VALUES (20401,'Environmental Engineering I',4,101,804);
INSERT INTO Course VALUES (20402,'Geotechnical Engineering I',4,101,811);
INSERT INTO Course VALUES (20501,'Heat Transfer',4,102,803);
INSERT INTO Course VALUES (20502,'Manufacturing Processes',4,102,808);
INSERT INTO Course VALUES (20601,'3D Modelling',4,118,805);
INSERT INTO Course VALUES (20602,'3D Character Design',4,118,814);
INSERT INTO Course VALUES (20701,'Machine Learning',4,119,816);
INSERT INTO Course VALUES (20702,'Hydraulic Engineering',4,119,816);


-- STUDENT INSERTS
INSERT INTO Student VALUES (23105128008,'Asha Kumari',TO_DATE('2003-07-19','YYYY-MM-DD'),'F','91234501',105);
INSERT INTO Student VALUES (23102128003,'Sanoj Kumar',TO_DATE('2004-09-12','YYYY-MM-DD'),'M','91267802',102);
INSERT INTO Student VALUES (23101128005,'Chetan Kumar',TO_DATE('2003-12-03','YYYY-MM-DD'),'M','91290103',101);
INSERT INTO Student VALUES (23118128002,'Aman Kumar',TO_DATE('2004-08-21','YYYY-MM-DD'),'M','91223404',118);
INSERT INTO Student VALUES (23110128010,'Nitu Kumari',TO_DATE('2003-10-14','YYYY-MM-DD'),'F','91256705',110);
INSERT INTO Student VALUES (23119128007,'Laxmi Kumari',TO_DATE('2004-02-28','YYYY-MM-DD'),'F','91289006',119);
INSERT INTO Student VALUES (23157128003,'Suraj Kumar',TO_DATE('2003-11-09','YYYY-MM-DD'),'M','91232107',157);
INSERT INTO Student VALUES (23101128002,'Aarav Dhanraj',TO_DATE('2004-04-16','YYYY-MM-DD'),'M','91265408',101);
INSERT INTO Student VALUES (23102128014,'Sanni Kumar',TO_DATE('2003-08-30','YYYY-MM-DD'),'M','91298709',102);
INSERT INTO Student VALUES (23105128001,'Shrishty Priya',TO_DATE('2004-01-26','YYYY-MM-DD'),'F','91243210',105);
INSERT INTO Student VALUES (23110128003,'Priti Kumari',TO_DATE('2003-09-05','YYYY-MM-DD'),'F','91276511',110);
INSERT INTO Student VALUES (23118128005,'Asad Faruq',TO_DATE('2004-06-17','YYYY-MM-DD'),'M','91219812',118);
INSERT INTO Student VALUES (23119128010,'Akshay Kumar',TO_DATE('2003-12-22','YYYY-MM-DD'),'M','91287613',119);
INSERT INTO Student VALUES (23157128001,'Simran Kumari',TO_DATE('2004-03-07','YYYY-MM-DD'),'F','91254314',157);
INSERT INTO Student VALUES (23101128008,'Raju Kumar',TO_DATE('2003-11-18','YYYY-MM-DD'),'M','91221015',101);
INSERT INTO Student VALUES (23102128001,'Aman Kumar Singh',TO_DATE('2004-05-24','YYYY-MM-DD'),'M','91234516',102);
INSERT INTO Student VALUES (23105128006,'Amarjeet Kumar',TO_DATE('2003-10-11','YYYY-MM-DD'),'M','91267817',105);
INSERT INTO Student VALUES (23110128007,'Sonam Priya',TO_DATE('2004-02-09','YYYY-MM-DD'),'F','91290118',110);
INSERT INTO Student VALUES (23118128009,'Muftahul',TO_DATE('2003-08-13','YYYY-MM-DD'),'M','91223419',118);
INSERT INTO Student VALUES (23119128001,'Gautam Kumar',TO_DATE('2004-04-27','YYYY-MM-DD'),'M','91256720',119);
INSERT INTO Student VALUES (23157128011,'Navin Kumar',TO_DATE('2003-09-16','YYYY-MM-DD'),'M','91289021',157);



-- ENROLLMENT INSERTS
INSERT INTO Enrollment VALUES (5001,23105128008,20301,5,'A');
INSERT INTO Enrollment VALUES (5002,23102128003,20501,5,'B+');
INSERT INTO Enrollment VALUES (5003,23101128005,20402,5,'A-');
INSERT INTO Enrollment VALUES (5004,23118128002,20601,5,'B');
INSERT INTO Enrollment VALUES (5005,23110128010,20202,5,'C+');
INSERT INTO Enrollment VALUES (5006,23119128007,20701,5,'B+');
INSERT INTO Enrollment VALUES (5007,23157128003,20101,5,'A');
INSERT INTO Enrollment VALUES (5008,23101128002,20401,5,'B');
INSERT INTO Enrollment VALUES (5009,23102128014,20502,5,'A-');
INSERT INTO Enrollment VALUES (5010,23105128001,20302,5,'B+');
INSERT INTO Enrollment VALUES (5011,23110128003,20201,5,'A');
INSERT INTO Enrollment VALUES (5012,23118128005,20602,5,'B');
INSERT INTO Enrollment VALUES (5013,23119128010,20702,5,'C+');
INSERT INTO Enrollment VALUES (5014,23157128001,20102,5,'A-');
INSERT INTO Enrollment VALUES (5015,23101128008,20402,5,'B+');
INSERT INTO Enrollment VALUES (5016,23102128001,20501,5,'A');
INSERT INTO Enrollment VALUES (5017,23105128006,20301,5,'B');
INSERT INTO Enrollment VALUES (5018,23110128007,20202,5,'A-');
INSERT INTO Enrollment VALUES (5019,23118128009,20601,5,'B+');
INSERT INTO Enrollment VALUES (5020,23119128001,20701,5,'A');
INSERT INTO Enrollment VALUES (5021,23157128011,20102,5,'B');

COMMIT;
