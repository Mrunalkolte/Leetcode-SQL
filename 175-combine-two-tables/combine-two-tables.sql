# Write your MySQL query statement bel
select p.firstName,p.LastName,a.city,a.state from person p left join address a on p.personid=a.personid ;