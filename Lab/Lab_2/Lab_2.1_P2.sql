use hr;

-- 1: Truy xuất tất cả nhân viên có địa chỉ ở Elgin, IL
select * from employees where address like '%Elgin,IL';

-- 2: Truy xuất tất cả nhân viên sinh vào những năm 1970.
select * from employees where b_date like '197%';

-- 3: Truy xuất tất cả nhân viên trong phòng ban 5 có mức lương từ 60000 đến 70000.
select * from employees where dep_id = 5 and salary between 60000 and 70000;

-- 4A: Truy xuất danh sách nhân viên được sắp xếp theo ID phòng ban.
select * from employees 
order by dep_id;

-- 4B: Truy xuất danh sách nhân viên được sắp xếp theo thứ tự giảm dần theo ID phòng ban và trong mỗi phòng ban, những nhân viên này được sắp xếp theo họ với thứ tự giảm dần của bảng chữ cái.
select * from employees
order by DEP_ID desc, L_NAME desc;

-- 5A: Đối với mỗi ID phòng ban, truy xuất số lượng nhân viên trong phòng ban.
select count(*) from employees
group by dep_id;

--  5B: Đối với mỗi phòng ban, truy xuất số lượng nhân viên trong phòng ban và mức lương trung bình của nhân viên trong phòng ban.
select count(*) as NUM_EMP, AVG(SALARY)  from employees
group by DEP_ID;

-- 5D: Trong Truy vấn 5C, hãy sắp xếp tập hợp kết quả Mức lương trung bình.
SELECT COUNT(*) AS NUM_EMP, AVG(SALARY) AS AVG_SALARY FROM EMPLOYEES
GROUP BY DEP_ID
ORDER BY AVG_SALARY;

-- 5E: Trong Truy vấn 5D, giới hạn kết quả thành ít hơn 4 nhân viên cho các phòng ban.
SELECT DEP_ID,COUNT(*) AS NUM_DEP,AVG(SALARY) AS AVG_SALARY FROM employees
GROUP BY DEP_ID
HAVING COUNT(*) <4
ORDER BY AVG_SALARY