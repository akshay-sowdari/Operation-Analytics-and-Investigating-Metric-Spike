
-- solution 1
-- select extract(week from occurred_at) as week_number,count(user_id) as active_users 
-- from events where event_type='engagement' group by week_number;


-- solution 2
-- SELECT extract(MONTH from created_at) as MonthNum, COUNT(DISTINCT user_id) AS total_users
-- FROM users
-- WHERE activated_at NOT IN ("")
-- group by MonthNum
-- SELECT extract(MONTH from created_at) as MonthNum, 
-- COUNT(DISTINCT user_id) as Users,
-- ROUND(((COUNT(DISTINCT user_id)/LAG(COUNT(DISTINCT user_id),  1)  
-- OVER (ORDER BY  extract(MONTH from created_at)) - 1)*100),2) 
-- as 'Growth %'FROM users WHERE activated_at NOT IN ("")
-- group by MonthNum

-- solution 3
-- select extract(week from occurred_at) as sign_up_week,count(distinct user_id) as 'count of users sign up'
-- from events
-- where event_type = 'signup_flow'
-- and event_name = 'complete_signup'
-- group by sign_up_week

-- solution 4
-- select device,extract(week from occurred_at) as week_number, count(user_id) from
-- events where event_type='engagement' group by week_number;

-- solution 5
-- select extract(week from occurred_at) as week_number,count(distinct user_id) as 'count of users used email service'
-- from email_events where action like 'email%' group by week_number;


