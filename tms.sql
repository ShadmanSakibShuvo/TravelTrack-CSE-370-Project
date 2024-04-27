SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+06:00";





CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100),
  `Password` varchar(100),
  `updationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2024-04-13 11:18:49');












CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11),
  `UserEmail` varchar(100),
  `FromDate` varchar(100),
  `ToDate` varchar(100),
  `Comment` mediumtext,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11),
  `CancelledBy` varchar(5),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`BookingId`)
);

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'test@gmail.com', '2020-07-11', '2020-07-18', 'I want this package.', '2024-04-13 06:38:36', 2, 'u', '2024-04-15 05:18:29'),
(2, 2, 'test@gmail.com', '2020-07-10', '2020-07-13', 'There is some discount', '2024-04-13 06:43:25', 1, NULL, '2024-04-15 01:21:17');















CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext,
  PRIMARY KEY (`id`)
);

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES (1, 'aboutus','										<div><span style="color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;">Welcome to Travelling Route Management System!!!</span></div><span style="font-family: &quot;courier new&quot;;"><span style="color: rgb(0, 0, 0); font-size: 15px; text-align: justify;">...</span></span>');


















CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200),
  `PackageType` varchar(150),
  `PackageLocation` varchar(100),
  `PackagePrice` int(11),
  `PackageFetures` varchar(255),
  `PackageDetails` mediumtext,
  `PackageImage` varchar(100),
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`PackageId`)
);

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Swiss Paris Delight Premium 2020 (Group Package)', 'Group Package', 'Paris and Switzerland', 6000, ' Round trip Economy class airfare valid for the duration of the holiday - Airport taxes - Accommodation for 3 nights in Paris and 3 nights in scenic Switzerland - Enjoy continental breakfasts every morning - Enjoy 5 Indian dinners in Mainland Europe - Exp', 'Pick this holiday for a relaxing vacation in Paris and Switzerland. Your tour embarks from Paris. Enjoy an excursion to popular attractions like the iconic Eiffel Tower. After experiencing the beautiful city, you will drive past mustard fields through Burgundy to reach Switzerland. While there, you can opt for a tour to Interlaken and then to the Trummelbach Falls. Photostop at Zurich Lake and a cable car ride to Mt. Titlis are the main highlights of the holiday.', '1581490262_2_1.jpg', '2024-07-15 05:21:58', '2024-01-30 05:20:49');



















CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100),
  `MobileNumber` char(10),
  `EmailId` varchar(70),
  `Password` varchar(100),
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
);

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Test', '1987894654', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-01-16 06:33:20', '2024-01-31 02:00:48');











ALTER TABLE `tblusers`
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT , AUTO_INCREMENT=2;

ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT , AUTO_INCREMENT=3;

ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT , AUTO_INCREMENT=2;

ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT , AUTO_INCREMENT=2;

ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT , AUTO_INCREMENT=2;


COMMIT;
