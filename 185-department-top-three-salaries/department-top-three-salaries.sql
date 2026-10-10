# Write your MySQL query statement below
with t as (select  d.name as Department,  e.name as Employee , e.Salary as Salary,
dense_rank()over(Partition By d.Id order by e.Salary desc) as rk
from Employee e join Department d on e.DepartmentId=d.Id )
select Department, Employee , Salary from t where rk<4;