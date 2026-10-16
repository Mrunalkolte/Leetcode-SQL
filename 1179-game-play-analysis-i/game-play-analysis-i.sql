# Write your MySQL query statement below
select distinct Player_id,first_value(Event_date)over (partition by Player_id order by Event_date) as First_login from Activity ;