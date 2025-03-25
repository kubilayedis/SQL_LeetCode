/* Write your T-SQL query statement below */
select V.customer_id, ( count(V.visit_id) - count(T.visit_id) ) as count_no_trans
from Visits as V
left join Transactions as T on V.visit_id = T.visit_id
group by customer_id
having count(V.visit_id) <> count(T.visit_id)