# Write your MySQL query statement below
select email as Email from Person where email is not null group by Email having count(*)>1;