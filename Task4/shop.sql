-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 06, 2024 at 12:13 PM
-- Server version: 8.0.30
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` decimal(11,0) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `patronymic`, `phone`, `email`, `product`, `address`, `comment`) VALUES
(4, 'Эрнест', 'Хемингуэй', 'Миллер', '12345555555', 'ernest.hem@gmail.com', 'Roy_Bush', ' Чикаго — деревня Ок-Парк (Иллинойс, США)', 'Отправьте в течении недели'),
(5, 'Кирилл', 'Смирнов', 'Андреевич', '1111', 'smirnov.kirill@gmail.com', 'Puer', 'СПб, Фрунзенский р. пер. Альпийский д.15', 'Как подойдёте, наберите меня по телефону, я спущусь'),
(6, 'Зигисмунд', 'Фройд', 'Шломо', '12332112332', 'sigi.freud@mail.ru', 'Milky_oolung', 'город Фрайберг в Моравии, Австрия, улица Шлоссергассе', 'Без прочтения моей книги «Введение в психоанализ» оплачивать заказ не буду'),
(7, 'Эрнест', 'Смирнов', 'Андреевич', '12332112332', '', 'Da_Hong_Pao', 'город Фрайберг в Моравии, Австрия, улица Шлоссергассе', ''),
(8, 'Чарльз', 'Шульдинер', 'Майкл', '88126663333', 'chuckschuld@gmail.com', 'Roy_Bush', 'Олтамонт-Спрингс, Флорида, США', 'В комплекте приложите реккомендации к завариванию'),
(9, 'dfdf', 'asdf', 'asfd', '7812666333', 'aaaa@gmail.com', 'Milky_oolung', 'sadfa', 'asdg'),
(10, 'Tom', 'Morello', 'sss', '92341244323', 'tmorello@gmail.com', 'Puer', 'LosAngeles', 'sss');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
