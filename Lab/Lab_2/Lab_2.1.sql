use HR

-- Truy xuất tất cả nhân viên có địa chỉ ở Elgin, IL
select * from employees WHERE address like '%Elgin,IL'

-- Truy xuất tất cả nhân viên sinh vào những năm 1970
select * from employees where year(B_DATE) like '197%'\

-- Truy xuất tất cả nhân viên trong phòng ban 5 có mức lương từ 60000 đến 70000.
select * from employees;
select * from departments;
select * from employees where DEP_ID = 5 and SALARY between 60000 and 70000;

-- Truy vấn 4A: Truy xuất danh sách nhân viên được sắp xếp theo ID phòng ban.
select * from employees order by DEP_ID;

-- Truy vấn 4B: Truy xuất danh sách nhân viên được sắp xếp theo thứ tự giảm dần theo ID phòng ban và trong mỗi phòng ban, những nhân viên này được sắp xếp theo họ với thứ tự giảm dần của bảng chữ cái.
select * from employees order by DEP_ID , L_NAME desc;

-- Truy vấn 5A: Đối với mỗi ID phòng ban, truy xuất số lượng nhân viên trong phòng ban.
select count(*) as employeess_per_dep  from employees 
group by DEP_ID;

-- Truy vấn 5B: Đối với mỗi phòng ban, truy xuất số lượng nhân viên trong phòng ban và mức lương trung bình của nhân viên trong phòng ban.
select count(*) as employeess_per_dep, avg(SALARY) avg_salary from employees
group by DEP_ID

-- Truy vấn 5C: Gắn nhãn các cột đã tính trong tập hợp kết quả của Truy vấn 5B là NUM_EMPLOYEES và AVG_SALARY.
select count(*) as NUM_EMPLOYEES, avg(SALARY) AVG_SALARY from employees
group by DEP_ID

-- Truy vấn 5D: Trong Truy vấn 5C, hãy sắp xếp tập hợp kết quả Mức lương trung bình.
select count(*) as NUM_EMPLOYEES, avg(SALARY) AVG_SALARY from employees
group by DEP_ID
order by AVG_SALARY

-- Truy vấn 5E: Trong Truy vấn 5D, giới hạn kết quả thành ít hơn 4 nhân viên cho các phòng ban.
select count(*) as NUM_EMPLOYEES, avg(SALARY) AVG_SALARY from employees
group by DEP_ID
having NUM_EMPLOYEES < 4
order by AVG_SALARY




