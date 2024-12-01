use EmployeeDB;
CREATE TABLE [dbo].[Employee](
    [EmpId] INT IDENTITY(1,1) NOT NULL,          
    [EMPLOYEE_CODE] VARCHAR(20) NOT NULL,             
    [EMPLOYEE_NAME] VARCHAR(50) NOT NULL,            
    [Gender] VARCHAR(1) NULL,                  
    [DOJ] DATE NULL,                        
    [Address] VARCHAR(100) NULL,                
    CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([EmpId] ASC),
    CONSTRAINT [UQ_EmpCode] UNIQUE ([EMPLOYEE_CODE])   
);
DBCC CHECKIDENT ('Employee', RESEED, 1);

INSERT INTO Employee (EMPLOYEE_CODE, EMPLOYEE_NAME, Gender, DOJ, Address)
VALUES 
    ('1234', 'Mandar', 'M', '2024-12-02', 'Mumbai'),
    ('1235', 'Mansi', 'F', '2022-04-03', 'Pune'),
    ('1236', 'Raj', 'M', '2020-03-02', 'Nashik'),
    ('1237', 'Riya', 'F', '2019-01-13', 'Satara'),
    ('1238', 'Priya', 'F', '2018-05-16', 'Pen'),
    ('1239', 'Anvi', 'F', '2014-12-03', 'Kolhapur');

select * from Employee;
	

	
