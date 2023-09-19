

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Base de datos: `culdampolla`
DROP DATABASE IF EXISTS culdampolla;
CREATE DATABASE culdampolla;
USE culdampolla;
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `branches`
--

CREATE TABLE `branches` (
  `branch_id` int(20) NOT NULL,
  `branch_name` varchar(50) DEFAULT NULL,
  `mgr_id` int(11) DEFAULT NULL,
  `mgr_start_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `branches`
--

INSERT INTO `branches` (`branch_id`, `branch_name`, `mgr_id`, `mgr_start_date`) VALUES
(1, 'barcelona', 1, '2023-06-26'),
(2, 'madrid', 2, '2023-06-26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `client_id` int(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `registration_date` date NOT NULL,
  `recommended_by` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `client`
--

INSERT INTO `client` (`client_id`, `name`, `address`, `phone_number`, `email`, `registration_date`, `recommended_by`) VALUES
(1, 'odie', 'av can serrra', 6666666, 'odeie@gmail.com', '2023-06-26', 'jamming'),
(2, 'jamming', 'barcelona', 12345, 'jamjam@', '2023-06-26', 'google');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Employee`
--

CREATE TABLE `Employee` (
  `employee_id` int(20) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `surname` varchar(40) DEFAULT NULL,
  `salary` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Employee`
--

INSERT INTO `Employee` (`employee_id`, `name`, `surname`, `salary`, `branch_id`) VALUES
(1, 'ricardo', 'dutra', 5000, 1),
(2, 'mieke', 'mehrtens', 5000, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `glasses`
--

CREATE TABLE `glasses` (
  `glass_id` int(20) NOT NULL,
  `glass_name` varchar(40) NOT NULL,
  `graduation` decimal(3,2) NOT NULL,
  `frame_type` varchar(40) NOT NULL,
  `frame_color` varchar(40) NOT NULL,
  `glass_color` varchar(40) NOT NULL,
  `price` decimal(11,0) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `glasses`
--

INSERT INTO `glasses` (`glass_id`, `glass_name`, `graduation`, `frame_type`, `frame_color`, `glass_color`, `price`, `branch_id`, `provider_id`) VALUES
(1, 'aviator crooked', '3.00', 'aviator', 'red', 'red', '300', 1, 1),
(2, 'rounded eight', '3.00', 'rounded', 'yellow', 'green', '450', 1, 1),
(3, 'squareBeach', '4.00', 'iron solid', 'black', 'black', '500', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `client_id` int(20) NOT NULL,
  `date` date NOT NULL,
  `employee_id` int(20) NOT NULL,
  `glass_id` int(20) NOT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `client_id`, `date`, `employee_id`, `glass_id`, `total`) VALUES
(1, 1, '2023-06-26', 1, 1, 300),
(2, 2, '2023-06-26', 2, 1, 300),
(3, 2, '2023-06-09', 1, 3, 500),
(4, 2, '2023-06-26', 1, 1, 300),
(5, 1, '2023-06-26', 2, 2, 400),
(6, 1, '2022-04-05', 1, 2, 400);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provider`
--

CREATE TABLE `provider` (
  `provider_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `street` varchar(40) NOT NULL,
  `number` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `door` varchar(20) NOT NULL,
  `city` varchar(40) NOT NULL,
  `country` varchar(40) NOT NULL,
  `postal_code` int(11) NOT NULL,
  `fax` int(11) NOT NULL,
  `phone_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `provider`
--

INSERT INTO `provider` (`provider_id`, `name`, `street`, `number`, `floor`, `door`, `city`, `country`, `postal_code`, `fax`, `phone_number`) VALUES
(1, 'glassesAll', 'viladomat ', 22, 4, '1', 'barcelona', 'españa', 8048, 123123, 13123),
(2, 'funBeach', 'francesc boix', 7, 1, '2', 'new york', 'america', 90909, 1231243, 123123);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branch_id`),
  ADD KEY `mgr_id` (`mgr_id`);

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indices de la tabla `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indices de la tabla `glasses`
--
ALTER TABLE `glasses`
  ADD PRIMARY KEY (`glass_id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `provider_id` (`provider_id`);

--
-- Indices de la tabla `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `glass_id` (`glass_id`);

--
-- Indices de la tabla `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`provider_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `branches`
--
ALTER TABLE `branches`
  MODIFY `branch_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `Employee`
--
ALTER TABLE `Employee`
  MODIFY `employee_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `glasses`
--
ALTER TABLE `glasses`
  MODIFY `glass_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `provider`
--
ALTER TABLE `provider`
  MODIFY `provider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `branches_ibfk_1` FOREIGN KEY (`mgr_id`) REFERENCES `Employee` (`employee_id`);

--
-- Filtros para la tabla `Employee`
--
ALTER TABLE `Employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`branch_id`);

--
-- Filtros para la tabla `glasses`
--
ALTER TABLE `glasses`
  ADD CONSTRAINT `glasses_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`branch_id`),
  ADD CONSTRAINT `glasses_ibfk_2` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`provider_id`);

--
-- Filtros para la tabla `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `Employee` (`employee_id`),
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`),
  ADD CONSTRAINT `invoice_ibfk_3` FOREIGN KEY (`glass_id`) REFERENCES `glasses` (`glass_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
