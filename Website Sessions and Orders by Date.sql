SELECT
  DATE(website_sessions.created_at) AS date,
  COUNT(DISTINCT website_sessions.website_session_id) AS sessions,
  COUNT(DISTINCT orders.order_id) AS orders
FROM `OperationsDb.website_sessions`
LEFT JOIN `OperationsDb.orders`
  ON website_sessions.website_session_id = orders.website_session_id
GROUP BY date
ORDER BY date;
