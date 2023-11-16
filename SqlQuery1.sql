use [Rainbow SchoolDB];

CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(50)
);

INSERT INTO Classes VALUES
(1, 'Class 1'),
(2, 'Class 2'),
(3, 'Class 3');

Select*from Classes;


CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    ClassID INT,
    CONSTRAINT FK_Student_Class FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);

INSERT INTO Student VALUES
(1, 'John', 'Doe', '2005-01-15', 1),
(2, 'Jane', 'Smith', '2006-03-22', 2),
(3, 'Bob', 'Johnson', '2004-07-10', 3);

Select*from Student;

CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName VARCHAR(50)
);

INSERT INTO Subjects (SubjectID, SubjectName) VALUES
(1, 'Math'),
(2, 'Science'),
(3, 'English');

Select*from Subjects;




CREATE INDEX IX_Student_StudentID ON Student (StudentID);

CREATE INDEX IX_Subjects_SubjectName ON Subjects (SubjectName);
