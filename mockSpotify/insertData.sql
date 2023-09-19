USE `mockSpotify`;


INSERT INTO `Artist` (`name`, `artist_image`) VALUES
  ('Artist 1', NULL),
  ('Artist 2', NULL),
  ('Artist 3', NULL);

INSERT INTO `Album` (`artist_id`, `title`, `release_year`, `cover_image`) VALUES
  (1, 'Album 1', '2023-01-01', NULL),
  (2, 'Album 2', '2023-02-01', NULL),
  (3, 'Album 3', '2023-03-01', NULL);

INSERT INTO `Song` (`album_id`, `title`, `duration`, `playcount`) VALUES
  (1, 'Song 1', '03:30', 100),
  (1, 'Song 2', '04:15', 150),
  (2, 'Song 3', '03:45', 120);

INSERT INTO `User` (`email`, `password`, `username`, `birth_date`, `gender`, `country`, `postal_code`, `user_type`) VALUES
  ('user1@example.com', 'password1', 'User1', '1990-01-15', 'male', 'US', 12345, 'premium'),
  ('user2@example.com', 'password2', 'User2', '1985-03-20', 'female', 'UK', 56789, 'free'),
  ('user3@example.com', 'password3', 'User3', '1995-06-10', 'male', 'CA', 98765, 'premium');

INSERT INTO `CreditCard` (`subscription_id`, `card_number`, `expiry_month`, `expiry_year`, `security_code`) VALUES
  (4, 123456890, 12, 2025, 123),
  (5, 987659865, 10, 2024, 456),
  (6, 666777788, 11, 2023, 789);

INSERT INTO `Payment` (`payment_date`, `order_number`, `total_amount`, `subscription_id`) VALUES
  ('2023-09-19', 1001, 9.99, 4),
  ('2023-09-20', 1002, 0.00, 5),
  ('2023-09-21', 1003, 12.99, 6);