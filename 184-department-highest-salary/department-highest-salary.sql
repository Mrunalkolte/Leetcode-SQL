# Write your MySQL query statement below
with t as (select  d.Name as Department, e.name as Employee , e.salary as Salary , rank() over(Partition by e.DepartmentID order by salary desc ) as rk from Employee e join Department d on e.departmentId=d.id) 
select Department , Employee , Salary from t where rk=1;