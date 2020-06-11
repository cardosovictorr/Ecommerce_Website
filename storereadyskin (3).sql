-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2020 at 01:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `storereadyskin`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartId` int(5) NOT NULL,
  `quantity` int(5) NOT NULL,
  `price` int(10) NOT NULL,
  `totalPrice` int(10) NOT NULL,
  `idProd` int(5) NOT NULL,
  `titleProd` varchar(255) NOT NULL,
  `imageProd` varchar(255) NOT NULL,
  `idUsers` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartId`, `quantity`, `price`, `totalPrice`, `idProd`, `titleProd`, `imageProd`, `idUsers`) VALUES
(0, 1, 29, 29, 2, 'Baume', 'CicaplastB5Baume.png', 123),
(0, 1, 55, 55, 11, 'Eyeshadow', 'EyeshadowPalette.png', 123),
(0, 1, 40, 40, 4, 'Body Cream', 'GeraniumLeafBalm.png', 123),
(0, 1, 25, 25, 9, 'Mask', 'Maskhair.jpg', 123);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(5) NOT NULL,
  `cat_title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_title`, `description`) VALUES
(1, 'Facial Care', 'Products to facial Skin Care routine'),
(2, 'Body care', 'Products for Body Care routine'),
(3, 'Hair Care', 'Products for Hair Care routine'),
(4, 'Make Up', 'Products related to Makeup'),
(5, 'Sales', 'Sales product');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `idProd` int(100) UNSIGNED NOT NULL,
  `categoryProd` int(30) NOT NULL,
  `volumeProd` varchar(30) NOT NULL,
  `titleProd` varchar(255) NOT NULL,
  `priceProd` varchar(10) NOT NULL,
  `descriptionProd` varchar(255) NOT NULL,
  `brandProduct` varchar(20) NOT NULL,
  `imageProd` varchar(255) NOT NULL,
  `quantityStockProd` int(30) NOT NULL,
  `keyWord` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`idProd`, `categoryProd`, `volumeProd`, `titleProd`, `priceProd`, `descriptionProd`, `brandProduct`, `imageProd`, `quantityStockProd`, `keyWord`) VALUES
(1, 1, '100ml', 'Suncrean', '49.50', 'Suncrean 50 Athelios', 'Laroche Passay', 'Anthelios-50-Sunscream.png', 100, 'suncrean sun block protector 50 athelios aroche face'),
(2, 1, '50ml', 'Baume', '29.30', 'B5 Baume Cicaplast', 'Laroche Passay', 'CicaplastB5Baume.png', 100, 'baume B5 cicaplast Passay Lips laroche face'),
(3, 1, '250ml', 'Cleanser', '19.90', 'Gel Effaclair', 'Laroche Passay', 'EffaclairCleanser.png', 100, 'cleanser Gel Passay Effaclair Laroche face'),
(4, 2, '125ml', 'Body Cream', '40.00', 'Geranium Leaf Balm 120mL', 'Aesop', 'GeraniumLeafBalm.png', 100, 'Body Cream Aesop Geranium Leaf Hidrant'),
(5, 2, '125ml', 'Body Cream', '40.00', 'Rejuvenate Intensive Balm 120mL', 'Aesop', 'RejuvenateIntensiveBalm.png', 100, 'Body Cream Aesop Rejuvenate Intensive Hidrant'),
(6, 2, '125ml', 'Body Cream', '40.00', 'Rind Concentrate Balm 120mL', 'Aesop', 'RindConcentrateBalm.png', 100, 'Body Cream Aesop Rind Balm Concentrate Hidrant '),
(7, 3, '500ml', 'Shampoo', '14.90', 'Shampoo Nutrition and Repair', 'Natura Siberica', 'ShampooNutritionRepair.png', 100, 'Hair SHampoo Natura Siberica Nutrition Repair'),
(8, 3, '500ml', 'Conditioner', '14.90', 'Conditioner Nutrition and Repair', 'Natura Siberica', 'ConditionerNutritionRepair.jpg', 100, 'Hair Conditioner Nutrition Repair Natura Siberica'),
(9, 3, '30ml', 'Mask', '24.90', 'Mask dry and normal hair', 'Natura Siberica', 'Maskhair.jpg', 100, 'Mask dry Hair natura siberica Repair'),
(10, 4, '40ml', 'Eyeliner', '34.90', 'Find your signature eye look with Matte Signature Eyeliner by L’Oréal Paris. With 9 bold shades & ultra matte colour intensity in one stroke.', 'LOreal', 'EyelinerMatte.png', 100, 'Make Up eye Matte Loreal'),
(11, 4, '130ml', 'Eyeshadow', '54.90', 'Mini-size eyeshadow palettes, for maximum-colour impact. Now you can create endless looks for daytime and evening with just one petite palette.', 'LOreal', 'EyeshadowPalette.png', 100, 'Make Up eyw shadow Loreal palette'),
(12, 5, '200', 'Acne Cleanser', '19.90', 'known as Visibly Clear Spot Proofing 2-in-1 Wash/Mask Works with your skin from day 1', 'Neutrogena', 'neutrogena_clear_defend.jpg', 100, 'neutrogena cleaser sale black spots mask'),
(13, 5, '60', 'Niacinamide 10% + Zinc 1%', '14.90', 'Niacinamide (Vitamin B3) is indicated to reduce the appearance of skin blemishes and congestion.', 'Neutrogena', 'niacinamide_Ordinary.png', 100, 'neutrogena Niacinamide sale Vitamin ordinary');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idUsers` int(100) UNSIGNED NOT NULL,
  `uidUsers` varchar(30) NOT NULL,
  `emailUsers` varchar(50) NOT NULL,
  `pwdUsers` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUsers`, `uidUsers`, `emailUsers`, `pwdUsers`) VALUES
(1, 'vic', 'victor_ribeiro92@hotmail.com', '$2y$10$qTQ7F9mbKxAVgwXP6tERJOn7jAIR5fu5nDtk/0/Qjq2m6LIAg91IG'),
(2, 'jon', 'j@hotmail.com', '$2y$10$Wc9C1GclNQI/mCJ0vi6Y7.9AS3SRxuD7jjnFO2/j1nxcRUiGh20AO'),
(3, 'dan', 'dan@skin.com', '$2y$10$LPwNr14Bf9hGJj1xm0DJ4eO8rRGt6fFo4QRsSnifOa5NAXg9INJcy'),
(4, 'edy', 'edy@hotmail.com', '$2y$10$USxjs6QAKbTsSAexHPUTiOLaMin/zF2nDfh/zkABpesAQyu28izxG'),
(5, 'ela', 'ela@hotmail.com', '$2y$10$wMFJdFczwgSf3coTZweTCuUzAcJeW1vU6R4YdLzOyxflssw0XIndC'),
(6, 'stuart', 'stuart@gmail.com', '$2y$10$V3aZ2.t4Cc.XAhG/OsvuXegZdWEp2NfhlaT4w2A4pp0F.5Ay75SfO'),
(7, 'bob', 'bob@hotmail.com', '$2y$10$/ehPuuDTKvnCsGL6zROl8e3onRwRToER6OjDwfyWOSetHecMgybfe'),
(8, 'alv', 'alv@hotmail.com', '$2y$10$xvC04BE35dj6E85b8LK4DOzTk30t29ZkzjTXX5cx8.DJ5wWrmJSV6'),
(9, 'fel', 'fel@hotmail.com', '$2y$10$16ITZwBvRxxMZhKRz8PCbOluoIhNTOUDLD4Sj4nktmGxui9k45C/6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsers`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUsers` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
