/* Write your T-SQL query statement below */
WITH ProcessTimes AS (
    SELECT 
        machine_id,
        process_id,
        sum(CASE WHEN activity_type = 'end' THEN timestamp ELSE NULL END) -
        sum(CASE WHEN activity_type = 'start' THEN timestamp ELSE NULL END) AS process_time
    FROM activity
    GROUP BY machine_id, process_id