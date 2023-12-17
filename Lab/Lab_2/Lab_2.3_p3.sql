use hr;
-- A2: Nhập truy vấn thành công bằng cách sử dụng lệnh chọn con để truy xuất tất cả nhân viên có mức lương nhiều hơn mức lương trung bình:
select * from employees
where salary > (select avg(salary) from employees);

-- A4: Nhập Biểu thức Column (Cột) để truy xuất tất cả bản ghi nhân viên và mức lương trung bình ở mọi hàng 
select *, (select avg(salary) from employees) from employees;

-- A5: Nhập Biểu thức Table, biểu thức sẽ chỉ truy xuất các cột có dữ liệu nhân viên không nhạy cảm 
select * from (select emp_id,f_name,dep_id from employees) as emp4;

-- B1: Chỉ lấy các bản ghi EMPLOYEES tương ứng với các phòng ban trong bảng DEPARTMENTS 
select * from departments d join employees e on d.dept_id_dep = e.dep_id;

-- B2: Chỉ lấy danh sách nhân viên từ vị trí L0002 
select * from departments d join employees e on d.dept_id_dep = e.dep_id where loc_id = 'L0002';

-- B3: Truy xuất ID và tên phòng ban cho những nhân viên kiếm được hơn 70.000 đô la
select dep_name,dep_id from departments d join employees e on d.dept_id_dep= e.dep_id where salary > 70000;

-- B4: Chỉ định 2 bảng trong mệnh đề FROM 
select * from departments d join employees e on d.dept_id_dep = e.dep_id;

--  B5: Chỉ truy xuất các bản ghi EMPLOYEES tương ứng với các phòng ban trong bảng DEPARTMENTS:
select * from departments d join employees e on d.dept_id_dep = e.dep_id;




