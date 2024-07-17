/* 

Assume you're given the tables containing completed trade orders and user details in a Robinhood trading system.
Write a query to retrieve the top three cities that have the highest number of completed trade orders listed in descending order. 

'trades' Table:

| Column Name  |  Type     | 
|--------------|-----------|
| order_id     | integer   |
| user_id      | integer   |
| quantity     | integer   |
| status       | string    |
| date         | datetime  |
| price        | decimal   |

'users' Table:

| Column Name  |  Type     | 
|--------------|-----------|
| user_id      | integer   |
| city         | string    |
| email        | string    |
| signup_date  | datetime  |

*/
