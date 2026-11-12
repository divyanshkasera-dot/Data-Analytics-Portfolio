CREATE DATABASE PROJECT4;
USE PROJECT4;

CREATE TABLE Departments(
department_id INT primary key AUTO_INCREMENT,
department_name varchar(50) NOT NULL,
location VARCHAR(50) NOT NULL
);

CREATE TABLE Employees(
employee_id INT primary KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
age INT NOT NULL,
gender VARCHAR(15) NOT NULL,
department_id INT,
FOREIGN KEY (department_id) REFERENCES Departments(department_id) ON DELETE SET NULL
) AUTO_INCREMENT = 1001;

CREATE TABLE Salaries(
employee_id INT PRIMARY KEY,
salary DECIMAL(10,2) NOT NULL,
bonus INT DEFAULT 0.00,
FOREIGN KEY (employee_id) REFERENCES Employees(employee_id) ON DELETE CASCADE
);

INSERT INTO Departments (department_id, department_name, location) VALUES
(1, 'Human Resources', 'New York'),
(2, 'Engineering', 'San Francisco'),
(3, 'Marketing', 'Chicago'),
(4, 'Sales', 'Austin'),
(5, 'Finance', 'New York'),
(6, 'Data Science', 'San Francisco'),
(7, 'Operations', 'Chicago'),
(8, 'Legal', 'Austin');

INSERT INTO Employees (employee_id, first_name, last_name, age, gender, department_id) VALUES
(1001, 'Liam', 'Smith', 28, 'Male', 2),
(1002, 'Noah', 'Johnson', 35, 'Male', 2),
(1003, 'Oliver', 'Williams', 42, 'Male', 6),
(1004, 'Elijah', 'Brown', 24, 'Male', 4),
(1005, 'James', 'Jones', 51, 'Male', 5),
(1006, 'William', 'Garcia', 31, 'Male', 2),
(1007, 'Benjamin', 'Miller', 47, 'Male', 7),
(1008, 'Lucas', 'Davis', 29, 'Male', 3),
(1009, 'Henry', 'Rodriguez', 38, 'Male', 4),
(1010, 'Alexander', 'Martinez', 44, 'Male', 6),
(1011, 'Mason', 'Hernandez', 26, 'Male', 2),
(1012, 'Michael', 'Lopez', 33, 'Male', 1),
(1013, 'Ethan', 'Gonzalez', 55, 'Male', 8),
(1014, 'Daniel', 'Wilson', 23, 'Male', 4),
(1015, 'Jacob', 'Anderson', 39, 'Male', 5),
(1016, 'Logan', 'Thomas', 30, 'Male', 3),
(1017, 'Jackson', 'Taylor', 36, 'Male', 2),
(1018, 'Levi', 'Moore', 41, 'Male', 7),
(1019, 'Sebastian', 'Jackson', 27, 'Male', 4),
(1020, 'Mateo', 'Martin', 48, 'Male', 5),
(1021, 'Olivia', 'Lee', 29, 'Female', 2),
(1022, 'Emma', 'Perez', 34, 'Female', 6),
(1023, 'Ava', 'Thompson', 25, 'Female', 1),
(1024, 'Sophia', 'White', 43, 'Female', 3),
(1025, 'Isabella', 'Harris', 52, 'Female', 8),
(1026, 'Charlotte', 'Sanchez', 31, 'Female', 2),
(1027, 'Amelia', 'Clark', 22, 'Female', 4),
(1028, 'Mia', 'Ramirez', 37, 'Female', 7),
(1029, 'Harper', 'Lewis', 46, 'Female', 5),
(1030, 'Evelyn', 'Robinson', 32, 'Female', 6),
(1031, 'Abigail', 'Walker', 28, 'Female', 1),
(1032, 'Emily', 'Young', 35, 'Female', 3),
(1033, 'Ella', 'Allen', 40, 'Female', 2),
(1034, 'Elizabeth', 'King', 26, 'Female', 4),
(1035, 'Camila', 'Wright', 49, 'Female', 5),
(1036, 'Luna', 'Scott', 30, 'Female', 7),
(1037, 'Sofia', 'Torres', 44, 'Female', 8),
(1038, 'Avery', 'Nguyen', 23, 'Female', 2),
(1039, 'Mila', 'Hill', 38, 'Female', 3),
(1040, 'Aria', 'Flores', 33, 'Female', 6),
(1041, 'Jack', 'Green', 50, 'Male', 5),
(1042, 'Owen', 'Adams', 27, 'Male', 4),
(1043, 'Asher', 'Baker', 31, 'Male', 2),
(1044, 'Samuel', 'Gonzalez', 45, 'Male', 7),
(1045, 'Leo', 'Nelson', 29, 'Male', 6),
(1046, 'John', 'Carter', 36, 'Male', 3),
(1047, 'Joseph', 'Mitchell', 42, 'Male', 1),
(1048, 'Wyatt', 'Perez', 25, 'Male', 4),
(1049, 'David', 'Roberts', 53, 'Male', 8),
(1050, 'Luke', 'Turner', 34, 'Male', 2),
(1051, 'Scarlett', 'Phillips', 28, 'Female', 2),
(1052, 'Grace', 'Campbell', 39, 'Female', 5),
(1053, 'Chloe', 'Parker', 41, 'Female', 6),
(1054, 'Victoria', 'Evans', 26, 'Female', 3),
(1055, 'Riley', 'Edwards', 30, 'Female', 4),
(1056, 'Lily', 'Collins', 47, 'Female', 7),
(1057, 'Eleanor', 'Stewart', 23, 'Female', 1),
(1058, 'Hannah', 'Morris', 35, 'Female', 2),
(1059, 'Zoe', 'Rogers', 44, 'Female', 8),
(1060, 'Stella', 'Reed', 32, 'Female', 6),
(1061, 'Carter', 'Cook', 29, 'Male', 2),
(1062, 'Julian', 'Morgan', 36, 'Male', 4),
(1063, 'Christopher', 'Bell', 48, 'Male', 5),
(1064, 'Jaxon', 'Murphy', 24, 'Male', 3),
(1065, 'Anthony', 'Bailey', 43, 'Male', 6),
(1066, 'Grayson', 'Rivera', 31, 'Male', 7),
(1067, 'Gabriel', 'Cooper', 52, 'Male', 8),
(1068, 'Dylan', 'Richardson', 27, 'Male', 2),
(1069, 'Isaac', 'Cox', 35, 'Male', 4),
(1070, 'Thomas', 'Howard', 40, 'Male', 1),
(1071, 'Natalie', 'Ward', 33, 'Female', 3),
(1072, 'Audrey', 'Torres', 26, 'Female', 2),
(1073, 'Brooklyn', 'Peterson', 49, 'Female', 5),
(1074, 'Savannah', 'Gray', 30, 'Female', 6),
(1075, 'Claire', 'Ramirez', 45, 'Female', 7),
(1076, 'Penelope', 'James', 22, 'Female', 4),
(1077, 'Leah', 'Watson', 37, 'Female', 2),
(1078, 'Audrey', 'Brooks', 41, 'Female', 8),
(1079, 'Violet', 'Kelly', 28, 'Female', 1),
(1080, 'Hazel', 'Sanders', 34, 'Female', 6),
(1081, 'Nathan', 'Price', 31, 'Male', 2),
(1082, 'Ryan', 'Bennett', 46, 'Male', 5),
(1083, 'Adrian', 'Wood', 29, 'Male', 4),
(1084, 'Christian', 'Barnes', 38, 'Male', 3),
(1085, 'Colton', 'Ross', 42, 'Male', 6),
(1086, 'Cameron', 'Henderson', 25, 'Male', 7),
(1087, 'Eli', 'Coleman', 54, 'Male', 8),
(1088, 'Aaron', 'Jenkins', 33, 'Male', 2),
(1089, 'Landon', 'Perry', 36, 'Male', 4),
(1090, 'Jonathan', 'Powell', 27, 'Male', 1),
(1091, 'Aurora', 'Long', 30, 'Female', 3),
(1092, 'Skylar', 'Patterson', 44, 'Female', 6),
(1093, 'Bella', 'Hughes', 23, 'Female', 2),
(1094, 'Aurora', 'Flores', 39, 'Female', 5),
(1095, 'Lucy', 'Washington', 41, 'Female', 7),
(1096, 'Anna', 'Butler', 28, 'Female', 4),
(1097, 'Samantha', 'Simmons', 35, 'Female', 8),
(1098, 'Caroline', 'Foster', 48, 'Female', 2),
(1099, 'Genesis', 'Gonzales', 32, 'Female', 6),
(1100, 'Aaliyah', 'Bryant', 26, 'Female', 1);

INSERT INTO Salaries (employee_id, salary, bonus) VALUES
(1001, 95000, 6000),   (1002, 110000, 8500),  (1003, 145000, 15000), (1004, 65000, 3000),
(1005, 130000, 12000), (1006, 105000, 7000),  (1007, 88000, 4500),   (1008, 76000, 4000),
(1009, 82000, 5000),   (1010, 150000, 18000), (1011, 92000, 5500),   (1012, 60000, 2000),
(1013, 160000, 20000), (1014, 58000, 2500),   (1015, 125000, 11000), (1016, 78000, 4500),
(1017, 115000, 9000),  (1018, 89000, 4000),   (1019, 70000, 3500),   (1020, 140000, 14000),
(1021, 98000, 6500),   (1022, 138000, 12500), (1023, 62000, 2000),   (1024, 81000, 5000),
(1025, 155000, 19000), (1026, 107000, 8000),  (1027, 61000, 2500),   (1028, 87000, 4500),
(1029, 132000, 11500), (1030, 142000, 14000), (1031, 64000, 2500),   (1032, 80000, 4500),
(1033, 120000, 10000), (1034, 68000, 3500),   (1035, 135000, 13000), (1036, 86000, 4000),
(1037, 150000, 17500), (1038, 90000, 5000),   (1039, 79000, 4000),   (1040, 146000, 15500),
(1041, 139000, 13500), (1042, 69000, 3500),   (1043, 103000, 7500),  (1044, 91000, 5000),
(1045, 137000, 12000), (1046, 82000, 4800),   (1047, 66000, 3000),   (1048, 64000, 2800),
(1049, 165000, 22000), (1050, 112000, 8500),  (1051, 96000, 6200),   (1052, 128000, 11000),
(1053, 148000, 16000), (1054, 83000, 5000),   (1055, 72000, 3800),   (1056, 93000, 5500),
(1057, 61000, 2200),   (1058, 106000, 7500),  (1059, 158000, 18500), (1060, 141000, 13500),
(1061, 101000, 7000),  (1062, 73000, 4000),   (1063, 136000, 12500), (1064, 77000, 4200),
(1065, 149000, 17000), (1066, 92000, 5000),   (1067, 162000, 21000), (1068, 99000, 6500),
(1069, 74000, 3800),   (1070, 65000, 2800),   (1071, 84000, 5200),   (1072, 97000, 6000),
(1073, 131000, 12000), (1074, 143000, 14500), (1075, 94000, 5200),   (1076, 63000, 2500),
(1077, 108000, 8000),  (1078, 154000, 18000), (1079, 63000, 2400),   (1080, 144000, 15000),
(1081, 104000, 7500),  (1082, 133000, 11500), (1083, 75000, 4200),   (1084, 85000, 5500),
(1085, 147000, 16500), (1086, 90000, 4800),   (1087, 168000, 23000), (1088, 102000, 7000),
(1089, 76000, 4500),   (1090, 62000, 2500),   (1091, 86000, 5800),   (1092, 152000, 18500),
(1093, 94000, 6000),   (1094, 129000, 11000), (1095, 95000, 5500),   (1096, 71000, 4000),
(1097, 156000, 19000), (1098, 111000, 8000),  (1099, 140000, 13000), (1100, 67000, 3000);


--  Query employees by department, age, locatio.

SELECT e.first_name, d.department_name, e.age, d.location
FROM Employees e 
JOIN Departments d 
ON e.department_id = d.department_id WHERE d.department_name = 'Finance' AND d.location = 'NEW YORK' AND e.age > 30;

-- Use GROUP BY and HAVING to find departments with high salaries

SELECT d.department_name AS Department, MAX(s.salary) AS Highest_Salary 
FROM Departments d
JOIN Employees e 
ON e.department_id = d.department_id
JOIN Salaries s 
ON e.employee_id = s.employee_id GROUP BY d.department_name ORDER BY Highest_Salary DESC ;


--  Join employee and salary tables

SELECT e.employee_id, e.first_name, e.last_name, s.salary, s.bonus
FROM Employees e 
JOIN Salaries s
ON e.employee_id = s.employee_id ;

-- Create views for HR reports

CREATE VIEW HR_REPORT AS SELECT e.employee_id, e.first_name, e.last_name, e.age, e.gender, d.department_name, d.location, s.salary, s.bonus,(s.salary + s.bonus) AS Total_Compensation
FROM Employees e 
JOIN Departments d
ON e.department_id = d.department_id 
JOIN Salaries s
ON e.employee_id = s.employee_id ORDER BY e.employee_id ;

SELECT * FROM HR_REPORT;














