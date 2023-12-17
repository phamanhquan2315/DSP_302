use hr;

select * from employees;
select * from DEPARTMENTS;
-- Query A1: Enter a failing (i.e. which gives an error) to retrieve all employees whose salary is greater than the average:
select * from employees where SALARY > avg(SALARY);

-- Query A2: Enter a working query using a sub-select to retrieve all employees whose salary is greater than the average salary:
select * from employees
where SALARY >(
	select avg(SALARY) from employees
);

-- Query A3: Enter a failing query (i.e. that gives an error) that retrieves all employees records and average salary in every row:
select *, avg(SALARY) from employees ;

-- Query A4: Enter a Column Expression that retrieves all employees records and average salary in every row
select *, (select avg(SALARY) from employees) as avg_salary 
from employees;

-- Query A5: Enter a Table Expression that retrieves only the columns with non-sensitive employee data
select EMP_ID, F_NAME, L_NAME, DEP_ID from employees;

-- Truy vấn B1: Chỉ lấy các bản ghi EMPLOYEES tương ứng với các phòng ban trong bảng DEPARTMENTS
select E.* from employees E, departments D 
where E.DEP_ID = D.DEPT_ID_DEP;

-- Truy vấn B2: Chỉ lấy danh sách nhân viên từ vị trí L0002 
select E.* from employees E, departments D 
where E.DEP_ID = D.DEPT_ID_DEP and D.LOC_ID = 'L0002';

select * from employees 
where DEP_ID in (select DEPT_ID_DEP from departments where LOC_ID='L0002');

-- Truy vấn B3: Truy xuất ID và tên phòng ban cho những nhân viên kiếm được hơn 70.000 đô la
select EMP_ID, d.DEP_NAME from employees e, departments d 
where e.DEP_ID = d.DEPT_ID_DEP and SALARY> 70000;

-- Truy vấn B4: Chỉ định 2 bảng trong mệnh đề FROM 
select * from departments, employees;

-- Truy vấn B5: Chỉ truy xuất các bản ghi EMPLOYEES tương ứng với các phòng ban trong bảng DEPARTMENTS:
select * from departments d, employees e where d.DEPT_ID_DEP = e.DEP_ID;

-- Truy vấn B6: Sử dụng bí danh ngắn hơn cho tên bảng
select * from departments d, employees e where d.DEPT_ID_DEP = e.DEP_ID;

-- Truy vấn B7: Chỉ truy xuất Employee ID (ID nhân viên) và Department name (tên phòng ban) trong truy vấn trên 
select EMP_ID, d.DEP_NAME from departments d, employees e where d.DEPT_ID_DEP = e.DEP_ID;
 
-- Truy vấn B8: Trong truy vấn trên, hãy chỉ định tên cột đủ điều kiện với bí danh trong mệnh đề SELECT 
select e.EMP_ID, d.DEP_NAME from departments d, employees e where d.DEPT_ID_DEP = e.DEP_ID;
 




