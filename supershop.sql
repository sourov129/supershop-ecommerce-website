-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 01:19 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supershop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customercart`
--

CREATE TABLE `customercart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customercart`
--

INSERT INTO `customercart` (`id`, `product_name`, `quantity`, `price`, `image`) VALUES
(99, 'Mutton meat', 2, 1020, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2020/may/17/18/8abf78b7-a5bc-415c-a599-881c7b739609.lg.jpg'),
(102, 'Orange', 2, 420, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2020/aug/23/11/f55dfdfd-336a-4753-9f8b-736d52331692.lg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`) VALUES
(2, 'sourov', 'sourov@1234', '1234'),
(3, '1', 'a@1', '1'),
(4, 'nahid', 'n@1', '12'),
(5, 'nahid', 'nahid@nahid', 'nahid@nahid'),
(6, '1', '1@1', '1@1'),
(7, 'shahadat', 'shahadat@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `sku` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `category`, `price`, `sku`, `description`, `quantity`, `image`) VALUES
(1, 'Mutton meat', 'meat', 1020, '10', 'sdfs', 5, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2020/may/17/18/8abf78b7-a5bc-415c-a599-881c7b739609.lg.jpg'),
(2, 'Beef(slice)', 'Meat', 780, '40', 'Fresh Beef', 20, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2022/jun/13/10/7f95b4b8-0fce-45bc-819c-d3be1a1ee054.lg.jpg'),
(3, 'Beef', 'Meat', 780, '40', 'Fresh Beef', 20, 'https://chaldn.com/_mpimage/chaldal-premium-beef-boneless-50-gm-500-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D131693&q=best&v=1&m=400&webp=1'),
(4, 'Aarong Ghee (200g)', 'Ghee', 350, '10', 'Milk', 20, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2020/may/8/15/555ddd71-e2aa-46e9-823f-cbe8fd7a43bf.lg.jpg'),
(9, 'PINEAPPLE', 'Fruits', 60, '10', 'Fresh Good Fruits', 2, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2021/sep/23/11/62a41806-8531-4a83-a235-1c1efd7dd18e.lg.jpg'),
(10, 'Guava Thai Bulk', 'Fruits', 95, '10', 'Fresh Fruit', 5, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2021/oct/7/16/7f82c396-d444-408e-aee8-1364329a5f4e.lg.jpg'),
(11, 'Guava Thai Bulk', 'Fruits', 95, '10', 'Fresh Fruit', 5, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2021/oct/7/16/7f82c396-d444-408e-aee8-1364329a5f4e.lg.jpg'),
(12, 'Rupchanda Fish', 'Fish', 1203, '56', 'Fresh', 10, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2022/oct/2/11/0c5d6960-bb8a-42cb-a546-a207504d84e5.lg.jpg'),
(14, 'Chicken', 'Meat', 420, '10', 'fresh food', 0, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2020/apr/28/17/c843c9c5-a386-469b-a4e4-5ada51c4460f.lg.jpg'),
(15, 'Mutton Brain', 'Meat', 220, '10', 'cs', 0, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2020/apr/28/18/f5334c94-0a4d-4018-b514-20810bed8220.lg.jpg'),
(16, 'Orange', 'fruits', 420, '', '', 0, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2020/aug/23/11/f55dfdfd-336a-4753-9f8b-736d52331692.lg.jpg'),
(17, 'Mango', 'Fruits', 100, '', '', 0, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2020/sep/1/10/d023ae33-5ef8-434c-a388-b0abb1d20f8c.lg.jpg'),
(18, 'Begun', 'fruits', 60, '', '', 0, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2020/apr/28/17/03f2300b-c754-4c84-ab68-d01cfd68caa0.lg.jpg'),
(19, 'Badhacopi', 'Fruits', 80, '', '', 0, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2020/apr/28/17/03db82d5-fcb1-4210-a15c-f11de2b9aa2a.lg.jpg'),
(20, 'Chingri', 'fish', 450, '', '', 0, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2022/oct/2/11/a206ce9b-593a-49de-8e7c-545b310f1269.lg.jpg'),
(21, 'Rui Fish', 'Fish', 250, '', '', 0, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2022/sep/29/15/5eada422-e2a2-4b54-9bd9-3d9ea30cbe73.lg.jpg'),
(22, 'Boal Fish', 'Fish', 600, '', '', 0, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2021/nov/3/10/cf3959f2-5132-4857-936e-27a45b2b117d.lg.jpg'),
(23, 'Noodles', 'essentials', 95, '', '', 0, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2021/sep/14/15/185ad48e-d427-4126-80c0-bc9378dfc2a8.lg.jpg'),
(24, 'Potato', 'essentials', 40, '', '', 0, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2020/may/16/17/cb8c878b-70b2-4705-8f16-d62b551d20a6.lg.jpg'),
(25, 'Soyabeen', 'essentials', 205, '', '', 0, 'https://d3o0ecz6febi2h.cloudfront.net/product_variances/images/2020/apr/28/18/5b25910b-37ef-4f8f-83fb-9ac7f4812f3b.lg.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customercart`
--
ALTER TABLE `customercart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customercart`
--
ALTER TABLE `customercart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
