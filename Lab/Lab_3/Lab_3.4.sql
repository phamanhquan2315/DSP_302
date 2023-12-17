use hr;
-- Problem 1: Select the names and job start dates of all employees who work for the department number 5.
select F_NAME,L_NAME,START_DATE from employees as e join job_history as jh on e.DEP_ID = jh.DEPT_ID
where e.DEP_ID = 5;

-- Problem 2: Select the names, job start dates, and job titles of all employees who work for the department number 5.
select F_NAME,L_NAME,START_DATE,JOB_TITLE from employees as e join job_history as jh on e.DEP_ID = jh.DEPT_ID join jobs j on j.JOB_IDENT = jh.JOBS_ID
where e.DEP_ID = 5;

-- Problem 3: Perform a Left Outer Join on the EMPLOYEES and DEPARTMENT tables and select employee id, last name, department id and department name for all employees.
select EMP_ID,L_NAME,e.DEP_ID from employees e left join departments d on e.DEP_ID = d.DEPT_ID_DEP;

-- Problem 4: Re-write the previous query but limit the result set to include only the rows for employees born before 1980.
select EMP_ID,L_NAME,e.DEP_ID from employees e left join departments d on e.DEP_ID = d.DEPT_ID_DEP 
where year(e.B_DATE) < 1980;

-- Problem 5: Re-write the previous query but will use INNER JOIN instead of using LEFT OUTER JOIN.
select EMP_ID,L_NAME,e.DEP_ID from employees e join departments d on e.DEP_ID = d.DEPT_ID_DEP 
where year(e.B_DATE) < 1980;

-- Problem 6: Perform a FULL OUTER JOIN on the EMPLOYEES and DEPARTMENT tables and select the First name, Last name and Department name of all employees.
-- Note that in SQL server, we can use FULL OUTER JOIN directly but we are using xampp and xampp will install MySQL instead of SQL server,
-- so we have to use LEFT OUTER JOIN in combination with RIGHT OUTER JOIN to perform a FULL OUTER JOIN
select EMP_ID,L_NAME,e.DEP_ID from employees e left outer join departments d on e.DEP_ID = d.DEPT_ID_DEP 
union all
(select EMP_ID,L_NAME,e.DEP_ID from employees e right outer join departments d on e.DEP_ID = d.DEPT_ID_DEP );

-- Problem 7: Re-write the previous query but have the result set include all employee names but department id and department names only for male employees.
select EMP_ID,L_NAME,e.DEP_ID from employees e left outer join departments d on e.DEP_ID = d.DEPT_ID_DEP where SEX = 'M'
union all
(select EMP_ID,L_NAME,e.DEP_ID from employees e right outer join departments d on e.DEP_ID = d.DEPT_ID_DEP where SEX = 'M' )



