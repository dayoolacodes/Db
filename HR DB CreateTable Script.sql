USE hr_database;
CREATE TABLE REGIONS(
REGION_ID		INTEGER		NOT NULL,
REGION_NAME		VARCHAR(25)	NULL,

Constraint Regions_pk	primary key (REGION_ID)
);

CREATE TABLE Countries(
Country_ID		Char(2)			Not NULL,
Country_Name	VarChar(40)		Null,
Region_ID		Integer			Not NULL,

Constraint Countries_pk	primary key (Country_ID, Region_ID),

Constraint Countries_fk foreign key (Region_ID)
	references Regions(Region_ID)
);

CREATE TABLE Locations(
Location_ID		Integer		Not Null,
Street_Address	Varchar(25)	Not Null,
Postal_Code		Varchar(12)	NOT NULL,
City			Varchar(30) NOT NULL,
State_Province	Varchar(12) NULL,
Country_ID		Char(2)		NOT NULL,
Constraint Locations_pk primary key(Location_ID, Country_ID),

Constraint Locations_fk	foreign key(Country_ID)
	references Countries(Country_ID)
    );

CREATE TABLE Departments(
Department_ID	Integer		not null,
DEPARTMENT_NAME	VARCHAR(30)	NULL,
MANAGER_ID		INTEGER		NOT NULL,
LOCATION_ID		INTEGER		NOT NULL,

CONSTRAINT Departments_pk primary key (Department_ID, Location_ID),

Constraint Departments_fk foreign key (Location_ID)
references Locations(Location_ID),

Constraint Departments2_fk foreign key (Manager_ID)
references Employees(Manager_ID)
);

CREATE TABLE Jobs(
Job_Id		VarChar(10)		Not Null,
Job_Title	VarChar(35)		Not Null,
Min_Salary	Integer			Null,
Max_Salary	Integer			Null,

Constraint Jobs_pk	primary key (Job_Id)
);

CREATE TABLE EMPLOYEES(
Employee_ID		Integer		NOT NULL,
FIRST_NAME		varchar(20)	NOT NULL,
LAST_NAME		Varchar(25)	NOT NULL,
EMAIL			VarChar(25)	NOT NULL,
PHONE_NUMBER	VARCHAR(20)	NOT NULL,
HIRE_DATE		date		NOT NULL,
JOB_ID			VARCHAR(20)	NOT NULL,
SALARY			INTEGER		NOT NULL,
COMMISSION_PCT	INTEGER		NULL,
MANAGER_ID		INTEGER		NULL,
DEPARTMENT_ID	INTEGER		NOT NULL,
Constraint Employees_pk primary key (Employee_ID,Department_ID,JOB_ID),

Constraint Employees_fk foreign key (Job_ID)
references Jobs(Job_ID),

Constraint Employees1_fk foreign key (Department_ID)
references Departments(Department_ID)
);

CREATE TABLE Job_HISTORY(
Employee_ID		Integer		Not Null,
Start_Date		Date		Not Null,
End_Date		date		NUll,
Job_ID			VarChar(10)	Not Null,
Department_ID	Integer		Not Null,

Constraint Job_history_pk	primary key(Employee_ID, Start_Date, Job_ID, Department_ID),

Constraint Job_history_fk	foreign key (Employee_ID)
	references Employees (Employee_ID),

Constraint Job_history1_fk	foreign key (Job_ID)
	references Jobs (Job_ID),

Constraint Job_history2_fk	foreign key (Department_ID)
	references Departments (Department_ID)
);

CREATE TABLE Job_grades(
Grade_Level		VarChar(2)	Not Null,
Lowest_Sal		Integer		Null,
Highest_Sal		Integer		Not Null,

Constraint Job_grades_pk Primary Key (Grade_Level)
);





