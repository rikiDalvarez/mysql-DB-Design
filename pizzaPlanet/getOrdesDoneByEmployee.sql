--getOrdesDoneByEmployee
SELECT COUNT(*) AS order_count
FROM Orders
WHERE employee_id = 1;
