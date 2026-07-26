USE CourtOpsDB;
GO

SELECT * FROM Departments;

INSERT INTO Departments (DeptName, Location)
VALUES ('IT Support', 'Toronto Courthouse');

INSERT INTO Departments (DeptName, Location)
VALUES ('Administration', 'Toronto Courthouse');

INSERT INTO Departments (DeptName, Location)
VALUES ('Court Services', 'Toronto Courthouse');

INSERT INTO Departments (DeptName, Location)
VALUES ('Facilities', 'Toronto Courthouse');

INSERT INTO Employees (FirstName, LastName, Role, DeptID, HireDate)
VALUES ('John', 'Doe', 'AV Technician', 1, '2021-01-02');

INSERT INTO Employees (FirstName, LastName, Role, DeptID, HireDate)
VALUES ('James', 'John', 'IT Support 1', 1, '2023-05-08');

INSERT INTO Employees (FirstName, LastName, Role, DeptID, HireDate)
VALUES ('Jane', 'Doe', 'IT Support 1', 1, '2020-11-11');

INSERT INTO Employees (FirstName, LastName, Role, DeptID, HireDate)
VALUES ('Jack', 'Jill', 'Senior IT', 1, '2018-09-25');

INSERT INTO Employees (FirstName, LastName, Role, DeptID, HireDate)
VALUES ('Emma', 'Martin', 'Administrative Aide', 2, '2019-12-24');

INSERT INTO Employees (FirstName, LastName, Role, DeptID, HireDate)
VALUES ('Lina', 'Luna', 'Admin Assistant', 2, '2017-02-26');

INSERT INTO Employees (FirstName, LastName, Role, DeptID, HireDate)
VALUES ('Dan', 'Jacobs', 'Clerical 1', 3, '2021-09-21');

INSERT INTO Employees (FirstName, LastName, Role, DeptID, HireDate)
VALUES ('Marie', 'Denison', 'Front Desk', 3, '2020-01-24');

INSERT INTO Employees (FirstName, LastName, Role, DeptID, HireDate)
VALUES ('Jessica', 'Lee', 'Facility Manager', 4, '2023-09-08');

INSERT INTO Employees (FirstName, LastName, Role, DeptID, HireDate)
VALUES ('John', 'Park', 'Maintenance Manager', 4, '2021-08-27');

SELECT * FROM Employees;