SELECT LEAD(salary, 2, 0) OVER (PARTITION BY depname ORDER BY salary NULLS LAST, empno desc), salary, empno, depname from empsalary where empno < 10000;
