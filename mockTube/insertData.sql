USE `mockTube`;

INSERT INTO `User` (`email`, `password`, `user_name`, `birth_date`, `sex`, `country`, `postal_code`)
VALUES
    ('user1@example.com', 'password1', 'User1', '2000-01-01', 'Male', 'Country1', 12345),
    ('user2@example.com', 'password2', 'User2', '2000-02-02', 'Female', 'Country2', 54321),
    ('user3@example.com', 'password3', 'User3', '2000-03-03', 'Male', 'Country3', 67890);

INSERT INTO `chanel` (`chanel_name`, `chanel_description`, `creation_date`, `user_id`)
VALUES
    ('Channel1', 'Channel Description 1', '2023-01-01', 1),
    ('Channel2', 'Channel Description 2', '2023-02-02', 2),
    ('Channel3', 'Channel Description 3', '2023-03-03', 3);

INSERT INTO `playlist` (`user_id`, `name`, `date`, `state`)
VALUES
    (1, 'Playlist 1', '2023-01-01', 'Active'),
    (2, 'Playlist 2', '2023-02-02', 'Active'),
    (3, 'Playlist 3', '2023-03-03', 'Active');

INSERT INTO `videos` (`user_id`, `title`, `description`, `size`, `filename`, `duration`, `thumbnail`, `views`, `likes`, `dislikes`, `state`, `publish_date`, `chanel_id`, `playlist_id`)
VALUES
    (1, 'Video 1', 'Video Description 1', 1024, 'video1.mp4', 3600, NULL, 1000, 200, 50, 'Active', '2023-01-01 12:00:00', 1, 1),
    (2, 'Video 2', 'Video Description 2', 2048, 'video2.mp4', 2700, NULL, 800, 150, 30, 'Active', '2023-02-02 12:00:00', 2, 2),
    (3, 'Video 3', 'Video Description 3', 1536, 'video3.mp4', 4200, NULL, 1200, 250, 60, 'Active', '2023-03-03 12:00:00', 3, 3);

INSERT INTO `tags` (`tag_name`)
VALUES
    ('Tag1'),
    ('Tag2'),
    ('Tag3');