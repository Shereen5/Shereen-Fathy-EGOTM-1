SELECT
  website_sessions.utm_source,
  SUM(orders.price_usd) AS revenue_usd
FROM OperationsDb.orders
INNER JOIN OperationsDb.website_sessions
  ON website_sessions.website_session_id = orders.website_session_id
GROUP BY website_sessions.utm_source
ORDER BY revenue_usd DESC;

