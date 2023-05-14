-- Solutions (Case Study 1 (Job Data)):

-- 1. Jobs reviewed per day -
-- select count(distinct job_id)/(30*24) as  'Jobs reviewed over time' from jobdata where ds between 
-- (select min(ds) from jobdata) and (select max(ds) from jobdata);

-- 2. Event per second - SELECT COUNT(*)/SUM(time_spent) AS events_per_second FROM jobdata;

-- Event per second on the basis of seven day rolling average - 
-- SELECT ds, 
-- AVG(COUNT(*)/SUM(time_spent)) OVER (ORDER BY ds ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS rolling_avg
-- FROM jobdata
-- GROUP BY ds;

-- Event per second on daily metric -
-- SELECT ds, COUNT(*)/SUM(time_spent) AS events_per_second
-- FROM jobdata
-- GROUP BY ds order by ds asc;

-- 3. Language percentage share -
--  select jobdata.language, (count(*)/(select count(*) from jobdata)*100) as percentage_share from jobdata 
-- group by jobdata.language;

-- 4.Duplicate rows -
-- select * from
-- (
-- select *,
-- row_number()over(partition by job_id) as rownum
-- from jobdata
-- )as T
-- where rownum>1







