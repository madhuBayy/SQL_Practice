-- Select top 3 cities with max num of completed trade orders

SELECT 
  users.city, 
  COUNT(trades.order_id) AS trade_orders
FROM trades
    INNER JOIN users ON trades.user_id = users.user_id
WHERE trades.status = 'Completed'
GROUP BY users.city
ORDER BY trade_orders DESC
LIMIT 3;
