CREATE TABLE Student (
    StudentID VARCHAR (11),
    StudentFirst VARCHAR (30) NOT NULL, 
    StudentLast VARCHAR (50) NOT NULL, 
    PRIMARY KEY (StudentID),
    );


CREATE TABLE Department (
    DeptID VARCHAR (5) NOT NULL,
    Department VARCHAR (50) NOT NULL,
    PRIMARY KEY (DeptID),
    );

CREATE TABLE Professor (
    ProfID VARCHAR(3), 
    ProfessorFirst VARCHAR (30) NOT NULL,
    ProfessorLast VARCHAR (50) NOT NULL, 
    ProfEmail VARCHAR (30), 
    ProfOffice VARCHAR (8), 
    DeptID VARCHAR (5), 
    PRIMARY KEY (ProfID), 
    FOREIGN KEY (DeptID) 
        REFERENCES Department(DeptID),
    );


CREATE TABLE MajorDeclared (
    ID INT IDENTITY (1,1), 
    StudentID VARCHAR (11), 
    MajorID VARCHAR (8), 
    Major VARCHAR (30), 
    ProfID VARCHAR (3), 
    DeclareDate DATE,
    MajorStatus VARCHAR (20),
    PRIMARY KEY (ID),
    FOREIGN KEY (StudentID) 
        REFERENCES Student(StudentID),
    FOREIGN KEY (ProfID) 
        REFERENCES Professor(ProfID),
    );

--Records for the Student Table:
INSERT INTO Student(StudentID, StudentFirst, StudentLast) VALUES ('003-112-224', 'Alexia', 'Carnell');
INSERT INTO Student(StudentID, StudentFirst, StudentLast) VALUES ('013-112-229', 'Savanna', 'Sanderlin');
INSERT INTO Student(StudentID, StudentFirst, StudentLast) VALUES ('009-112-227', 'Buddy', 'Pothier');
INSERT INTO Student(StudentID, StudentFirst, StudentLast) VALUES ('012-111-228', 'Verline', 'Papadopoulos');
INSERT INTO Student(StudentID, StudentFirst, StudentLast) VALUES ('002-111-223', 'Buddy', 'Pothier');
INSERT INTO Student(StudentID, StudentFirst, StudentLast) VALUES ('004-111-224', 'Leo', 'Schildgen');
INSERT INTO Student(StudentID, StudentFirst, StudentLast) VALUES ('008-111-226', 'Dominica', 'Clubb');
INSERT INTO Student(StudentID, StudentFirst, StudentLast) VALUES ('001-112-223', 'Monty', 'Burse');
INSERT INTO Student(StudentID, StudentFirst, StudentLast) VALUES ('011-112-228', 'Levi', 'Otts');
INSERT INTO Student(StudentID, StudentFirst, StudentLast) VALUES ('016-111-230', 'Soledad', 'Mattis');
INSERT INTO Student(StudentID, StudentFirst, StudentLast) VALUES ('000-111-222', 'Jami', 'Salerno');
INSERT INTO Student(StudentID, StudentFirst, StudentLast) VALUES ('010-111-227', 'Li', 'Bridgman');
INSERT INTO Student(StudentID, StudentFirst, StudentLast) VALUES ('015-112-230', 'Pamila', 'Tomasek');
INSERT INTO Student(StudentID, StudentFirst, StudentLast) VALUES ('007-112-226', 'Davis', 'Andry');
INSERT INTO Student(StudentID, StudentFirst, StudentLast) VALUES ('014-111-229', 'Phuong', 'Harbison');
INSERT INTO Student(StudentID, StudentFirst, StudentLast) VALUES ('006-111-225', 'Jonna', 'Bluhm');
INSERT INTO Student(StudentID, StudentFirst, StudentLast) VALUES ('005-112-225', 'Sanda', 'Mines');
--End of Student Table Records:

--Records for the Department Table:
INSERT INTO Department(DeptID, Department) VALUES ('CS', 'Computer Science');
INSERT INTO Department(DeptID, Department) VALUES ('BUS', 'Business');
INSERT INTO Department(DeptID, Department) VALUES ('TEC', 'Technology');
INSERT INTO Department(DeptID, Department) VALUES ('SCI', 'Science');
--End of Department Table Records:

--Records for the Professor Table:
INSERT INTO Professor(ProfessorFirst, ProfessorLast, ProfEmail, ProfOffice, DeptID) VALUES('AKZ', 'Akram', 'Aziz', 'aaziz@statecollege.edu', 'RC310', 'CS');
INSERT INTO Professor(ProfessorFirst, ProfessorLast, ProfEmail, ProfOffice, DeptID) VALUES('DOM', 'Donnell', 'Meaders', 'dmeaders@statecollege.edu', 'RC311', 'BUS');
INSERT INTO Professor(ProfessorFirst, ProfessorLast, ProfEmail, ProfOffice, DeptID) VALUES('JJJ', 'James', 'Justus', 'jjustus@statecollege.edu', 'RC312', 'TEC');
INSERT INTO Professor(ProfessorFirst, ProfessorLast, ProfEmail, ProfOffice, DeptID) VALUES('JOF', 'Jose', 'Fred', 'jfred@statecollege.edu', 'RC320', 'CS');
INSERT INTO Professor(ProfessorFirst, ProfessorLast, ProfEmail, ProfOffice, DeptID) VALUES('KAC', 'Keri', 'Coots', 'kcoots@statecollege.edu', 'RC321', 'SCI');
INSERT INTO Professor(ProfessorFirst, ProfessorLast, ProfEmail, ProfOffice, DeptID) VALUES('LAF', 'Lisa', 'Fred', 'lfred@statecollege.edu', 'RC330', 'CS');
INSERT INTO Professor(ProfessorFirst, ProfessorLast, ProfEmail, ProfOffice, DeptID) VALUES('LAR', 'Lisa', 'Ruff', 'lruff@statecollege.edu', 'RC331', 'BUS');
INSERT INTO Professor(ProfessorFirst, ProfessorLast, ProfEmail, ProfOffice, DeptID) VALUES('MIM', 'Mckenzie', 'Moring', 'mgantt@statecollege.edu', 'RC332', 'SCI');
INSERT INTO Professor(ProfessorFirst, ProfessorLast, ProfEmail, ProfOffice, DeptID) VALUES('MEG', 'Monica', 'Gantt', 'mmoring@statecollege.edu', 'RC314', 'TEC');
INSERT INTO Professor(ProfessorFirst, ProfessorLast, ProfEmail, ProfOffice, DeptID) VALUES('SKK', 'Steve', 'Kime', 'skime@statecollege.edu', 'RC305', 'BUS');
--End of Professor Table Records:

--Records for the MajorDeclared Table: 
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('1', '003-112-224', 'CS_PROG', 'Programming', 'AKZ', '8/15/2015', 'First Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('2', '013-112-229', 'CS_PROG', 'Programming', 'AKZ', '8/15/2015', 'First Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('3', '009-112-227', 'BUS_ACCT', 'Accounting', 'DOM', '8/16/2016', 'First Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('4', '012-111-228', 'BUS_AUTO', 'Auto Technology', 'DOM', '8/17/2014', 'First Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('5', '002-111-223', 'TEC_WELD', 'Welding', 'JJJ', '11/20/2016', 'First Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('6', '004-111-224', 'CS_PROG', 'Programming', 'JOF', '12/15/2015', 'First Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('7', '008-111-226', 'SCI_BIOL', 'Biology', 'KAC', '5/15/2014', 'First Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('8', '001-112-223', 'CS_PROG', 'Programming', 'LAF', '5/25/2015', 'First Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('9', '011-112-228', 'CS_PROG', 'Programming', 'LAF', '5/28/2017', 'First Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('10', '016-111-230', 'CS_WEB ', 'Web Development', 'LAF', '8/17/2014', 'First Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('11', '000-111-222', 'BUS_FIN', 'Finance', 'LAR', '8/15/2015', 'First Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('12', '010-111-227', 'BUS_ACCT', 'Accounting', 'LAR', '5/15/2014', 'First Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('13', '015-112-230', 'BUS_MKT', 'Marketing', 'LAR', '12/15/2015', 'First Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('14', '007-112-226', 'SCI_BIOL', 'Biology', 'MIM', '3/5/2017', 'First Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('15', '014-111-229', 'SCI_CHEM', 'Chemistry', 'MIM', '3/10/2016', 'First Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('16', '006-111-225', 'TEC_AUTO', 'Auto Technology', 'MEG', '3/13/2015', 'First Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('17', '005-112-225', 'BUS_ACCT', 'Accounting', 'SKK', '4/16/2017', 'First Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('18', '003-112-224', 'CS_NET', ' Networking', 'AKZ', '8/15/2019', 'Second Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('19', '009-112-227', 'BUS_FIN', ' Finance', 'LAR', '9/5/2019', 'Second Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('20', '004-111-224', 'CS_NET', 'Networking', 'AKZ', '8/16/2017', 'Second Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('21', '008-111-226', 'SCI_NURS', 'Nursing', 'JOF', '9/16/2019', 'Second Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('22', '001-112-223', 'CS_WEB ', 'Web Development', 'LAF', '10/30/2020', 'Second Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('23', '011-112-228', 'CS_NET', ' Networking', 'LAF', '5/15/2019', 'Second Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('24', '016-111-230', 'CS_PROG', 'Programming', 'LAF', '4/27/2019', 'Second Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('25', '000-111-222', 'BUS_ACCT', ' Accounting', 'DOM', '8/14/2019', 'Second Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('26', '010-111-227', 'BUS_FIN', ' Finance', 'LAR', '9/16/2019', 'Second Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('27', '007-112-226', 'SCI_CHEM', 'Chemistry', 'KAC', '2/21/2019', 'Second Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('28', '005-112-225', 'BUS_MKT', 'Marketing', 'SKK', '4/14/2019', 'Second Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('29', '003-112-224', 'CS_WEB ', 'Web Development', 'AKZ', '6/5/2020', 'Third Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('30', '004-111-224', 'CS_WEB ', ' Web Development', 'JOF', '3/31/2020', 'Third Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('31', '011-112-228', 'CS_WEB ', 'Web Development', 'JOF', '11/15/2020', 'Third Major');
INSERT INTO MajorDeclared(ID, StudentID, MajorID, Major, ProfID, Date, Major_Status) VALUES('32', '016-111-230', 'CS_NET', 'Networking', 'LAF', '5/13/2020', 'Third Major');
--End of MajorDeclared Table Records:
