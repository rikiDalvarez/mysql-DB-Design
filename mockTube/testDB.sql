USE `mockTube`;

SELECT v.*
FROM videos v
INNER JOIN playlist p ON v.playlist_id = p.playlist_id
WHERE p.user_id = 1;