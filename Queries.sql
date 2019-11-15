---1. List the following details of each employee: employee number, last name, first name, gender, and salary.
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employees e
inner join salaries s
on e.emp_no = s.emp_no
order by 1;

---2. List employees who were hired in 1986.
select emp_no, first_name, last_name 
from employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

--3.List the manager of each department with the following information: 
---department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select deps.dept_no, deps.dept_name, depm.emp_no, e.last_name, e.first_name, depm.from_date, depm.to_date
from departments deps
join dept_manager depm
on deps.dept_no = depm.dept_no
join employees e
on depm.emp_no = e.emp_no;

---4. List the department of each employee with the following information: 
---employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, deps.dept_name
from employees e
join dept_emp depe
on e.emp_no = depe.emp_no
join departments deps
on deps.dept_no = depe.dept_no;

---5.List all employees whose first name is "Hercules" and last names begin with "B."
select * 
from employees
where first_name = 'Hercules'
and last_name like 'B%';

---6. List all employees in the Sales department, including their 
---employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, departments.dept_name
from employees e
join dept_emp
on e.emp_no = dept_emp.emp_no
join departments 
on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales';

---7.List all employees in the Sales and Development departments, 
---including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, departments.dept_name
from employees e
join dept_emp
on e.emp_no = dept_emp.emp_no
join departments 
on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales' 
or departments.dept_name = 'Development';

---8.In descending order, list the frequency count of employee last names, 
---i.e., how many employees share each last name.
select last_name,
count(last_name) as "frequency"
from employees
group by last_name
order by
count(last_name) desc;


