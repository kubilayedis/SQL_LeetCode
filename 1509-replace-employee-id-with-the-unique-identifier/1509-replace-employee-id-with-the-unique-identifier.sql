/* Write your T-SQL query statement below */
select E.name, EU.unique_id
from Employees as E
left join EmployeeUNI as EU 
on E.id = EU.id