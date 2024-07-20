-- Query to extract users who confirmed their email id on the second day.

SELECT emails.user_id 
FROM emails
    JOIN texts ON emails.email_id = texts.email_id
WHERE 
    -- Filter rows where signup_action in texts table is 'Confirmed'
    texts.signup_action = 'Confirmed'
    -- Filter rows where the difference between action_date and signup_date is exactly 1 day
    AND EXTRACT(days FROM AGE(texts.action_date, emails.signup_date)) = 1;
