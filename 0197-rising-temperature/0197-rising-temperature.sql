/* Write your T-SQL query statement below */
select w1.id
from Weather as W1
join Weather as W2 on DATEADD(DAY, -1, W1.RECORDDATE) = W2.RECORDDATE
WHERE W1.TEMPERATURE > W2.TEMPERATURE