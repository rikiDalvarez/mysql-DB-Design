--getQuantityOfDrinksSold
SELECT COUNT(*) AS drink_count
FROM Products p
JOIN preOrder po ON p.product_id = po.product_id
JOIN Orders o ON po.order_id = o.order_id
WHERE p.tipo = 'drinks' AND o.branch_id = <specific_branch_id>;

