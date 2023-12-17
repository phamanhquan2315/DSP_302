use hr;

-- Query A1: Enter a failing (i.e. which gives an error) to retrieve all employees whose salary is greater than the average:
select * from employees where SALARY > avg(SALARY);

-- Query A2: Enter a working query using a sub-select to retrieve all employees whose salary is greater than the average salary:
select * from employees 
where Salary > (select avg(salary) from employees);

-- Query A4: Enter a Column Expression that retrieves all employees records and average salary in every row
select e.*,(select avg(salary) from employees)  from employees as e;

-- Query A5: Enter a Table Expression that retrieves only the columns with non-sensitive employee data
select  EMP_ID, F_NAME, L_NAME, DEP_ID from employees;

-- Truy vấn B1: Chỉ lấy các bản ghi EMPLOYEES tương ứng với các phòng ban trong bảng DEPARTMENTS
select * from employees;
select * from departments;

select e.* from employees e join departments d on e.dep_id = d.dept_id_dep;

-- Truy vấn B2: Chỉ lấy danh sách nhân viên từ vị trí L0002 
select e.* from employees e join departments d on e.dep_id = d.dept_id_dep
where loc_id > 'L0002';

-- Truy vấn B3: Truy xuất ID và tên phòng ban cho những nhân viên kiếm được hơn 70.000 đô la
select e.emp_id,d.dep_name from employees e, departments d
where e.dep_id = d.dept_id_dep and salary >70000;

-- Truy vấn B4: Chỉ định 2 bảng trong mệnh đề FROM 
select * from employees, departments;

-- Truy vấn B5: Chỉ truy xuất các bản ghi EMPLOYEES tương ứng với các phòng ban trong bảng DEPARTMENTS:
select e.* from employees e join departments d on e.dep_id = d.dept_id_dep;

-- Truy vấn B7: Chỉ truy xuất Employee ID (ID nhân viên) và Department name (tên phòng ban) trong truy vấn trên 
select emp_id,dep_name from employees e join departments d on e.dep_id = d.dept_id_dep;

-- Truy vấn B8: Trong truy vấn trên, hãy chỉ định tên cột đủ điều kiện với bí danh trong mệnh đề SELECT 
select emp_id as id ,dep_name as name_of_dep from employees e join departments d on e.dep_id = d.dept_id_dep;

