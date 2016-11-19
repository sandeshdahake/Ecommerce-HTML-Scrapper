-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2016 at 06:03 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8
-- create DATABASE compare2test;
USE compare2test;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `compare2test`
--

-- --------------------------------------------------------

--
-- Table structure for table `additionalstuff`
--

CREATE TABLE IF NOT EXISTS `additionalstuff` (
  `Id` int(11) NOT NULL,
  `Type` varchar(300) NOT NULL,
  `SubType` varchar(300) NOT NULL,
  `Key` varchar(300) NOT NULL,
  `Value` varchar(300) NOT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Description` varchar(2000) NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT '1',
  `ExtraParam` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `additionalstuff`
--

INSERT INTO `additionalstuff` (`Id`, `Type`, `SubType`, `Key`, `Value`, `Priority`, `Description`, `IsActive`, `ExtraParam`) VALUES
(2, 'HomePageBanner', '', 'ImageName', '2.jpg', 1, '', 1, 'ProductController/Details/4529'),
(4, 'FeaturedProduct', '', 'Id', '62', 1, '', 1, ''),
(5, 'FeaturedProduct', '', 'Id', '74', 0, '', 1, ''),
(6, 'PopularProduct', '', 'Id', '55', 0, '', 1, ''),
(7, 'PopularProduct', '', 'Id', '72', 0, '', 1, ''),
(8, 'PopularProduct', '', 'Id', '19', 0, '', 1, ''),
(9, 'PopularProduct', '', 'Id', '78', 0, '', 1, ''),
(10, 'PopularProduct', '', 'Id', '42', 0, '', 1, ''),
(11, 'FeaturedProduct', '', 'Id', '101', 1, '', 1, ''),
(12, 'FeaturedProduct', '', 'Id', '74', 1, '', 1, ''),
(13, 'FeaturedProduct', '', 'Id', '30', 1, '', 1, ''),
(15, 'FeaturedProduct', '', 'Id', '82', 0, '', 1, ''),
(16, 'HomePageBanner', '', 'ImageName', '4.jpg', 1, '', 1, ''),
(17, 'HomePageBanner', '', 'ImageName', '3.jpg', 1, '', 1, '#');

-- --------------------------------------------------------

--
-- Table structure for table `filterdetails`
--

CREATE TABLE IF NOT EXISTS `filterdetails` (
  `Id` int(11) NOT NULL,
  `FilterId` int(11) NOT NULL,
  `FilterMinValue` varchar(500) NOT NULL,
  `FilterMaxValue` varchar(500) NOT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Value` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filterdetails`
--

INSERT INTO `filterdetails` (`Id`, `FilterId`, `FilterMinValue`, `FilterMaxValue`, `Priority`, `Value`) VALUES
(1, 5, '', '', 0, 'Samsung'),
(2, 5, '', '', 1, 'Lenovo'),
(3, 5, '', '', 2, 'Asus'),
(4, 6, '5000', '10000', 1, '5000-10000'),
(6, 5, '', '', 1, 'Motorola'),
(7, 5, '', '', 1, 'Lenovo'),
(8, 5, '', '', 1, 'Micromax'),
(9, 5, '', '', 1, 'Nokia'),
(10, 5, '', '', 1, 'Apple'),
(11, 5, '', '', 1, 'LYF'),
(12, 5, '', '', 1, 'Microsoft'),
(13, 5, '', '', 1, 'Oppo'),
(14, 5, '', '', 1, 'Xiaomi'),
(15, 5, '', '', 1, 'BlackBerry'),
(16, 5, '', '', 1, 'Panasonic'),
(17, 5, '', '', 1, 'Karbonn'),
(18, 5, '', '', 1, 'Huawei'),
(19, 5, '', '', 1, 'Sony'),
(20, 6, '0', '5000', 0, '0-5000'),
(21, 6, '10000', '15000', 3, '10000-15000'),
(22, 6, '15000', '20000', 4, '15000-20000'),
(23, 7, '', '', 4, 'Android OS, v5.1.1 (Lollipop)\r\n'),
(24, 7, '', '', 4, 'Android OS, v5.1 (Lollipop)'),
(25, 7, '', '', 4, 'iOS 7'),
(26, 7, '', '', 4, 'Microsoft Windows Phone 8.1 with Lumia Denim'),
(27, 7, '', '', 4, 'Android OS, v6.0 (Marshmallow)'),
(28, 7, '', '', 4, 'Android OS, v5.0 (Lollipop)'),
(29, 7, '', '', 4, 'Android OS, v5.0.2 (Lollipop)'),
(30, 7, '', '', 4, 'Tizen OS, v2.4'),
(31, 7, '', '', 4, 'Microsoft Windows Phone 8.1'),
(32, 7, '', '', 4, 'Android OS, v4.2.2 (Jelly Bean)'),
(33, 7, '', '', 4, 'Android OS, v4.4.3 (KitKat)'),
(34, 7, '', '', 4, 'Android OS, 6.0 (Marshmallow)'),
(35, 7, '', '', 4, 'iOS 9.3.2'),
(36, 5, '', '', 1, 'HTC'),
(38, 8, '', '', 1, 'Apple'),
(39, 9, '0', '5000', 0, '0-5000'),
(40, 9, '5000', '10000', 1, '5000-10000'),
(41, 9, '10000', '15000', 3, '10000-15000'),
(42, 9, '15000', '20000', 4, '15000-20000'),
(43, 8, '', '', 1, 'Asus'),
(44, 8, '', '', 1, 'Lenovo'),
(45, 8, '', '', 1, 'Acer'),
(46, 10, '', '', 0, '2 GB'),
(47, 10, '', '', 1, '4 GB'),
(48, 10, '', '', NULL, '8 GB'),
(49, 10, '', '', NULL, '16 GB'),
(50, 10, '', '', NULL, '1 GB'),
(51, 11, '', '', 1, '1 TB'),
(52, 11, '', '', NULL, '500 GB'),
(54, 11, '', '', NULL, '512 GB'),
(56, 11, '', '', NULL, '32 GB'),
(59, 11, '', '', 0, '64 GB');

-- --------------------------------------------------------

--
-- Table structure for table `filters`
--

CREATE TABLE IF NOT EXISTS `filters` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `ParentSubcategoryId` int(10) NOT NULL,
  `ProductPropertyName` varchar(200) NOT NULL,
  `Index` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filters`
--

INSERT INTO `filters` (`Id`, `Name`, `Type`, `ParentSubcategoryId`, `ProductPropertyName`, `Index`) VALUES
(5, 'Brand', 'Fixed', 1, 'Brand', 0),
(6, 'Price', 'Range', 1, 'Price', 0),
(7, 'OperatingSystem', 'Fixed', 1, 'OperatingSystem', 0),
(8, 'Brand', 'Fixed', 3, 'Brand', 0),
(9, 'Price', 'Range', 3, 'Price', 1),
(10, 'RAM', 'Fixed', 3, 'RAM', 3),
(11, 'HDD', 'Fixed', 3, 'HDDCapacity', 0);

-- --------------------------------------------------------


-- --------------------------------------------------------

--
-- Table structure for table `mobiles`
--


--
-- Table structure for table `mspwebstoreurls`
--

CREATE TABLE IF NOT EXISTS `mspwebstoreurls` (
  `Id` int(11) NOT NULL,
  `Url` varchar(500) NOT NULL,
  `IsVisited` tinyint(1) NOT NULL,
  `WebstoreName` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productcategories`
--

CREATE TABLE IF NOT EXISTS `productcategories` (
  `Id` int(20) NOT NULL,
  `Name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productcategories`
--

INSERT INTO `productcategories` (`Id`, `Name`) VALUES
(1, 'Electronics');

-- --------------------------------------------------------

--
-- Table structure for table `productimages`
--

CREATE TABLE IF NOT EXISTS `productimages` (
  `Id` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `Url` varchar(200) NOT NULL,
  `ZoomImageUrl` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `Id` int(10) NOT NULL,
  `SubcategoryId` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `mspId` int(10) NOT NULL,
  `InsertedProperties` int(11) NOT NULL,
  `IsVisited` tinyint(1) NOT NULL DEFAULT '0',
  `ImageInserted` tinyint(4) NOT NULL,
  `Image` varchar(500) NOT NULL,
  `IsBestSeller` tinyint(4) NOT NULL,
  `Popularity` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5786 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--
-- --------------------------------------------------------

--
-- Table structure for table `productsubcategories`
--

CREATE TABLE IF NOT EXISTS `productsubcategories` (
  `Id` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Label` varchar(500) NOT NULL,
  `MetadataFile` varchar(500) NOT NULL,
  `CompareMetadataFile` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


--
-- Table structure for table `productsubcategoryproperties`
--

CREATE TABLE IF NOT EXISTS `productsubcategoryproperties` (
  `Id` int(11) NOT NULL,
  `SubcategoryId` int(11) NOT NULL,
  `Label` varchar(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `DataType` varchar(200) NOT NULL,
  `Priority` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productwebstores`
--

CREATE TABLE IF NOT EXISTS `productwebstores` (
  `Id` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `WebstoreLabel` varchar(500) NOT NULL,
  `WebstoreName` varchar(500) NOT NULL,
  `WebstoreProductId` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4825 DEFAULT CHARSET=latin1;


--
-- Table structure for table `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `Id` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `Review` text NOT NULL,
  `Title` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`Id`, `ProductId`, `Review`, `Title`) VALUES
(1, 2, 'Test Review 2', 'Test Review 1'),
(2, 2, 'i used for many company mobiles phone but sasmung is great company is low prices phone, Phone look is very great in three colours, phone is very slim, back cover is very great, Phone is dislay is very nice in nice colours , Super Amoled screen with qhd screen ppi is 234 is great, many people like for this phone,camera is nice 5mgp and 2mgp, video quality is very nice, sound quality is very nice and sharp,phone processor is quad core and ram also one GB in this phone, Internal memory is 8GB is very nice for this phone phone memory and internal memory two diffrent , OS supported is Lolipop in this phone great quality, i love for this phone screen is 4.7inch and very big and not very small nice screen, phone battery is 2000mh in this phone nice backup for this phone , 2 days battery battery backup for this samsmung galaxy j2 phone, samsung has new phone launched in very low price and nice quality in samsung galaxy j2 phone,memory card supported in samsung galaxy j2 phone 128gb supported..... great phone ......', 'samsung galaxy j2 phone'),
(3, 2, 'mostly samsung mobile are used for clarity in picture,camera,call connectivity, voice clarity, and pocket friendly. Since Samsung Galaxy J2 is going to be launched soon, I hope these features are available in this phone too, and I wish Samsung company to introduce more such phones like J2 for people/students/house wife/elderly persons a lesser price I mean economical within the budget of a common man to have a phone like Samsung Galaxy J2. \r\n\r\nM.M.QUADRI Mobile no. 9885382790 E-mail address quadri6810 @gmail.com.in', 'excellent');

-- --------------------------------------------------------

--
-- Table structure for table `subcategoryhotproperties`
--

CREATE TABLE IF NOT EXISTS `subcategoryhotproperties` (
  `Id` int(11) NOT NULL,
  `SubcategoryId` int(11) NOT NULL,
  `PropertyName` varchar(500) NOT NULL,
  `Priority` int(11) NOT NULL,
  `AppendText` varchar(500) NOT NULL,
  `PrependText` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `userratings` (
  `Id` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Rating` float(10,2) NOT NULL,
  `ReviewTitle` varchar(500) NOT NULL,
  `ReviewDescription` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5685 DEFAULT CHARSET=latin1;

--
-- Table structure for table `webstores`
--

CREATE TABLE IF NOT EXISTS `webstores` (
  `Id` int(11) NOT NULL,
  `Label` varchar(500) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `LogoUrl` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webstores`
--

INSERT INTO `webstores` (`Id`, `Label`, `Name`, `LogoUrl`) VALUES
(1, 'Flipkart', 'Flipkart', 'flipkart.png'),
(2, 'Amazon', 'Amazon', 'amazon.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additionalstuff`
--
ALTER TABLE `additionalstuff`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `filterdetails`
--
ALTER TABLE `filterdetails`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`Id`), ADD KEY `ParentSubcategoryId` (`ParentSubcategoryId`), ADD KEY `ProductPropertyName` (`ProductPropertyName`);

--
-- Indexes for table `laptops`
--
ALTER TABLE `laptops`
  ADD PRIMARY KEY (`Id`), ADD KEY `ProductId` (`ProductId`);

--
-- Indexes for table `mobiles`
--
ALTER TABLE `mobiles`
  ADD PRIMARY KEY (`Id`), ADD KEY `ProductId` (`ProductId`);

--
-- Indexes for table `mspwebstoreurls`
--
ALTER TABLE `mspwebstoreurls`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `productcategories`
--
ALTER TABLE `productcategories`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`Id`), ADD KEY `ProductId` (`ProductId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`), ADD UNIQUE KEY `mspId` (`mspId`), ADD KEY `SubcategoryId` (`SubcategoryId`);

--
-- Indexes for table `productsubcategories`
--
ALTER TABLE `productsubcategories`
  ADD PRIMARY KEY (`Id`), ADD KEY `CategoryId` (`CategoryId`);

--
-- Indexes for table `productsubcategoryproperties`
--
ALTER TABLE `productsubcategoryproperties`
  ADD PRIMARY KEY (`Id`), ADD KEY `SuncategoryId` (`SubcategoryId`), ADD KEY `Name` (`Name`);

--
-- Indexes for table `productwebstores`
--
ALTER TABLE `productwebstores`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `subcategoryhotproperties`
--
ALTER TABLE `subcategoryhotproperties`
  ADD PRIMARY KEY (`Id`), ADD KEY `SubcategoryId` (`SubcategoryId`);

--
-- Indexes for table `userratings`
--
ALTER TABLE `userratings`
  ADD PRIMARY KEY (`Id`), ADD KEY `ProductId` (`ProductId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `variantproducts`
--
ALTER TABLE `variantproducts`
  ADD PRIMARY KEY (`Id`), ADD KEY `ProductId` (`ProductId`), ADD KEY `VariantId` (`VariantId`), ADD KEY `VariantMSPId` (`VariantMSPId`);

--
-- Indexes for table `webstores`
--
ALTER TABLE `webstores`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additionalstuff`
--
ALTER TABLE `additionalstuff`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `filterdetails`
--
ALTER TABLE `filterdetails`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `filters`
--
ALTER TABLE `filters`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `laptops`
--
ALTER TABLE `laptops`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1158;
--
-- AUTO_INCREMENT for table `mobiles`
--
ALTER TABLE `mobiles`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4530;
--
-- AUTO_INCREMENT for table `mspwebstoreurls`
--
ALTER TABLE `mspwebstoreurls`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productcategories`
--
ALTER TABLE `productcategories`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5786;
--
-- AUTO_INCREMENT for table `productsubcategories`
--
ALTER TABLE `productsubcategories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `productsubcategoryproperties`
--
ALTER TABLE `productsubcategoryproperties`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productwebstores`
--
ALTER TABLE `productwebstores`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4825;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `subcategoryhotproperties`
--
ALTER TABLE `subcategoryhotproperties`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `userratings`
--
ALTER TABLE `userratings`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5685;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `variantproducts`
--
ALTER TABLE `variantproducts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT for table `webstores`
--
ALTER TABLE `webstores`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `filters`
--
ALTER TABLE `filters`
ADD CONSTRAINT `Parent Subcategory for filter` FOREIGN KEY (`ParentSubcategoryId`) REFERENCES `productsubcategories` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `laptops`
--
ALTER TABLE `laptops`
ADD CONSTRAINT `laptop parent product` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mobiles`
--
ALTER TABLE `mobiles`
ADD CONSTRAINT `Parent Product Id` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `productimages`
--
ALTER TABLE `productimages`
ADD CONSTRAINT `ParentProductId` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `productsubcategories`
--
ALTER TABLE `productsubcategories`
ADD CONSTRAINT `Subcategory Master` FOREIGN KEY (`CategoryId`) REFERENCES `productcategories` (`Id`);

--
-- Constraints for table `productsubcategoryproperties`
--
ALTER TABLE `productsubcategoryproperties`
ADD CONSTRAINT `Parent Subcategory` FOREIGN KEY (`SubcategoryId`) REFERENCES `productsubcategories` (`Id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `userratings`
--
ALTER TABLE `userratings`
ADD CONSTRAINT `ratingMasterproduct` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `variantproducts`
--
ALTER TABLE `variantproducts`
ADD CONSTRAINT `ParentProductSelf` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `VariantProduct` FOREIGN KEY (`VariantId`) REFERENCES `products` (`Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
