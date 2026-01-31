-- Salary Growth Over Time
SELECT 
    TO_CHAR(hiredate, 'YYYY') AS year,
    SUM(sal) AS total_salary
FROM emp
GROUP BY TO_CHAR(hiredate, 'YYYY')
ORDER BY year;
/

--Employee Job Role
SELECT 
    job,
    COUNT(*) AS employee_count
FROM emp
GROUP BY job;
/
    
--Average Salary by Department
SELECT 
    d.dname AS department_name,
    ROUND(AVG(e.sal), 2) AS avg_salary
FROM emp e
JOIN dept d
ON e.deptno = d.deptno
GROUP BY d.dname
ORDER BY avg_salary DESC;
/
--Hiring Over Time
SELECT 
    TO_CHAR(hiredate, 'YYYY') AS hire_year,
    COUNT(*) AS employees_hired
FROM emp
GROUP BY TO_CHAR(hiredate, 'YYYY')
ORDER BY hire_year;

