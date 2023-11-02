-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 02 2023 г., 15:06
-- Версия сервера: 8.0.24
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `exam1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `ID` int NOT NULL,
  `PRODUCT_ID` int DEFAULT NULL,
  `PRODUCT_NAME` text,
  `PRODUCT_PRICE` int DEFAULT NULL,
  `PRODUCT_ARTICLE` text,
  `PRODUCT_QUANTITY` text,
  `DATA_CREATE` datetime DEFAULT NULL,
  `VISIBILITY` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`ID`, `PRODUCT_ID`, `PRODUCT_NAME`, `PRODUCT_PRICE`, `PRODUCT_ARTICLE`, `PRODUCT_QUANTITY`, `DATA_CREATE`, `VISIBILITY`) VALUES
(1, 541564, 'монитор', 200, '987987', '18', '2023-11-02 11:22:07', 'true'),
(3, 5213123, 'экран', 2004, '9412', '15', '2023-11-02 11:23:02', 'false'),
(12, 451627839, 'мыш', 24, '41421', '34', '2023-11-02 11:23:30', 'true'),
(15, 4516312, 'клавиатура', 27, '4142231', '137', '2023-11-02 11:24:58', 'false'),
(18, 452, 'видеокарта', 2, '41', '5', '2023-11-02 11:25:34', 'false');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
