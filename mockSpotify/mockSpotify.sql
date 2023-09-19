

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


DROP DATABASE IF EXISTS mockSpotify;
CREATE DATABASE mockSpotify;
USE mockSpotify;
--
-- Base de datos: `mockSpotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Album`
--

CREATE TABLE `Album` (
  `album_id` int(20) NOT NULL,
  `artist_id` int(20) NOT NULL,
  `title` varchar(40) NOT NULL,
  `release_year` date NOT NULL,
  `cover_image` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Artist`
--

CREATE TABLE `Artist` (
  `artist_id` int(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `artist_image` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CreditCard`
--

CREATE TABLE `CreditCard` (
  `credit_card_id` int(20) NOT NULL,
  `subscription_id` int(20) NOT NULL,
  `card_number` int(11) NOT NULL,
  `expiry_month` int(11) NOT NULL,
  `expiry_year` int(11) NOT NULL,
  `security_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FavoriteAlbum`
--

CREATE TABLE `FavoriteAlbum` (
  `favorite_album_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `album_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FavoriteSong`
--

CREATE TABLE `FavoriteSong` (
  `favorite_song_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `song_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Payment`
--

CREATE TABLE `Payment` (
  `payment_id` int(20) NOT NULL,
  `payment_date` date NOT NULL,
  `order_number` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `subscription_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Paypal`
--

CREATE TABLE `Paypal` (
  `paypal_id` int(20) NOT NULL,
  `subscription_id` int(20) NOT NULL,
  `paypal_username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Playlist`
--

CREATE TABLE `Playlist` (
  `playlist_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `title` varchar(20) NOT NULL,
  `song_count` int(11) NOT NULL,
  `creation_date` date NOT NULL,
  `delete_date` date ,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relatedArtist`
--

CREATE TABLE `relatedArtist` (
  `related_id` int(20) NOT NULL,
  `artist_id` int(20) NOT NULL,
  `related_artist_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SharedPlaylist`
--

CREATE TABLE `SharedPlaylist` (
  `shared_playlist_id` int(20) NOT NULL,
  `playlist_id` int(20) NOT NULL,
  `shared_user_id` int(20) NOT NULL,
  `added_user_id` int(20) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Song`
--

CREATE TABLE `Song` (
  `song_id` int(20) NOT NULL,
  `album_id` int(20) NOT NULL,
  `title` varchar(40) NOT NULL,
  `duration` varchar(40) NOT NULL,
  `playcount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Subscription`
--

CREATE TABLE `Subscription` (
  `subscription_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `subscription_start_date` date NOT NULL,
  `subscription_renewal_date` date NOT NULL,
  `payment_method` enum('credit card','paypal') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `User`
--

CREATE TABLE `User` (
  `user_id` int(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(10) NOT NULL,
  `username` varchar(40) NOT NULL,
  `birth_date` date NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `country` varchar(10) NOT NULL,
  `postal_code` int(11) NOT NULL,
  `user_type` enum('free','premium') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UserArtist`
--

CREATE TABLE `UserArtist` (
  `user_artist_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `artist_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Album`
--
ALTER TABLE `Album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indices de la tabla `Artist`
--
ALTER TABLE `Artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indices de la tabla `CreditCard`
--
ALTER TABLE `CreditCard`
  ADD PRIMARY KEY (`credit_card_id`),
  ADD KEY `subscription_id` (`subscription_id`);

--
-- Indices de la tabla `FavoriteAlbum`
--
ALTER TABLE `FavoriteAlbum`
  ADD PRIMARY KEY (`favorite_album_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `album_id` (`album_id`);

--
-- Indices de la tabla `FavoriteSong`
--
ALTER TABLE `FavoriteSong`
  ADD PRIMARY KEY (`favorite_song_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `song_id` (`song_id`);

--
-- Indices de la tabla `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `subscription_id` (`subscription_id`);

--
-- Indices de la tabla `Paypal`
--
ALTER TABLE `Paypal`
  ADD PRIMARY KEY (`paypal_id`),
  ADD KEY `subscription_id` (`subscription_id`);

--
-- Indices de la tabla `Playlist`
--
ALTER TABLE `Playlist`
  ADD PRIMARY KEY (`playlist_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `relatedArtist`
--
ALTER TABLE `relatedArtist`
  ADD PRIMARY KEY (`related_id`),
  ADD KEY `artist_id` (`artist_id`),
  ADD KEY `related_artist_id` (`related_artist_id`);

--
-- Indices de la tabla `SharedPlaylist`
--
ALTER TABLE `SharedPlaylist`
  ADD PRIMARY KEY (`shared_playlist_id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `shared_user_id` (`shared_user_id`),
  ADD KEY `added_user_id` (`added_user_id`);

--
-- Indices de la tabla `Song`
--
ALTER TABLE `Song`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `album_id` (`album_id`);

--
-- Indices de la tabla `Subscription`
--
ALTER TABLE `Subscription`
  ADD PRIMARY KEY (`subscription_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`user_id`);

--
-- Indices de la tabla `UserArtist`
--
ALTER TABLE `UserArtist`
  ADD PRIMARY KEY (`user_artist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Album`
--
ALTER TABLE `Album`
  MODIFY `album_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Artist`
--
ALTER TABLE `Artist`
  MODIFY `artist_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `CreditCard`
--
ALTER TABLE `CreditCard`
  MODIFY `credit_card_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `FavoriteAlbum`
--
ALTER TABLE `FavoriteAlbum`
  MODIFY `favorite_album_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `FavoriteSong`
--
ALTER TABLE `FavoriteSong`
  MODIFY `favorite_song_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Payment`
--
ALTER TABLE `Payment`
  MODIFY `payment_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Paypal`
--
ALTER TABLE `Paypal`
  MODIFY `paypal_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Playlist`
--
ALTER TABLE `Playlist`
  MODIFY `playlist_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `relatedArtist`
--
ALTER TABLE `relatedArtist`
  MODIFY `related_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `SharedPlaylist`
--
ALTER TABLE `SharedPlaylist`
  MODIFY `shared_playlist_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Song`
--
ALTER TABLE `Song`
  MODIFY `song_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Subscription`
--
ALTER TABLE `Subscription`
  MODIFY `subscription_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `User`
--
ALTER TABLE `User`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `UserArtist`
--
ALTER TABLE `UserArtist`
  MODIFY `user_artist_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Album`
--
ALTER TABLE `Album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `Artist` (`artist_id`);

--
-- Filtros para la tabla `CreditCard`
--
ALTER TABLE `CreditCard`
  ADD CONSTRAINT `creditcard_ibfk_1` FOREIGN KEY (`subscription_id`) REFERENCES `Subscription` (`subscription_id`);

--
-- Filtros para la tabla `FavoriteAlbum`
--
ALTER TABLE `FavoriteAlbum`
  ADD CONSTRAINT `favoritealbum_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`),
  ADD CONSTRAINT `favoritealbum_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `Album` (`album_id`);

--
-- Filtros para la tabla `FavoriteSong`
--
ALTER TABLE `FavoriteSong`
  ADD CONSTRAINT `favoritesong_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`),
  ADD CONSTRAINT `favoritesong_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `Song` (`song_id`);

--
-- Filtros para la tabla `Payment`
--
ALTER TABLE `Payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`subscription_id`) REFERENCES `Subscription` (`subscription_id`);

--
-- Filtros para la tabla `Paypal`
--
ALTER TABLE `Paypal`
  ADD CONSTRAINT `paypal_ibfk_1` FOREIGN KEY (`subscription_id`) REFERENCES `Subscription` (`subscription_id`);

--
-- Filtros para la tabla `Playlist`
--
ALTER TABLE `Playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`);

--
-- Filtros para la tabla `relatedArtist`
--
ALTER TABLE `relatedArtist`
  ADD CONSTRAINT `relatedartist_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `Artist` (`artist_id`),
  ADD CONSTRAINT `relatedartist_ibfk_2` FOREIGN KEY (`related_artist_id`) REFERENCES `Artist` (`artist_id`);

--
-- Filtros para la tabla `SharedPlaylist`
--
ALTER TABLE `SharedPlaylist`
  ADD CONSTRAINT `sharedplaylist_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `Playlist` (`playlist_id`),
  ADD CONSTRAINT `sharedplaylist_ibfk_2` FOREIGN KEY (`shared_user_id`) REFERENCES `User` (`user_id`),
  ADD CONSTRAINT `sharedplaylist_ibfk_3` FOREIGN KEY (`added_user_id`) REFERENCES `User` (`user_id`);

--
-- Filtros para la tabla `Song`
--
ALTER TABLE `Song`
  ADD CONSTRAINT `song_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `Album` (`album_id`);

--
-- Filtros para la tabla `Subscription`
--
ALTER TABLE `Subscription`
  ADD CONSTRAINT `subscription_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`);

--
-- Filtros para la tabla `UserArtist`
--
ALTER TABLE `UserArtist`
  ADD CONSTRAINT `userartist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Artist` (`artist_id`),
  ADD CONSTRAINT `userartist_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`),
  ADD CONSTRAINT `userartist_ibfk_3` FOREIGN KEY (`artist_id`) REFERENCES `Artist` (`artist_id`);
COMMIT;

