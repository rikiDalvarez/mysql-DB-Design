SELECT u.email
FROM User u
JOIN Subscription s ON u.user_id = s.user_id
WHERE s.payment_method = 'credit card';
