/***************************************** TABLE 1 ************************************************/
CREATE TABLE IF NOT EXISTS `tbl_client`(
	`clientID` int(8) NOT NULL AUTO_INCREMENT,
    `clientFName` varchar(25) NOT NULL,
    `clientLName` varchar(25) NOT NULL,
    `clientUName` varchar(25) NOT NULL,
    `clientPhone` varchar(13) NOT NULL,
    `clientEmail` varchar(255) NOT NULL,
    `clientPassword` varchar(255) NOT NULL,
    `clientLocation` varchar(255),
    PRIMARY KEY (`clientID`)
);
ALTER TABLE `tbl_client` AUTO_INCREMENT=84575460;

/***************************************** TABLE 2 ************************************************/

CREATE TABLE IF NOT EXISTS `tbl_chat`(
    `chatID` int(8) NOT NULL AUTO_INCREMENT,
	`clientID` int(8) NOT NULL,
    `chatTimeCreated` datetime NOT NULL,
    PRIMARY KEY (`chatID`),
    FOREIGN KEY (`clientID`) REFERENCES `tbl_client`(`clientID`)
);
ALTER TABLE `tbl_chat` AUTO_INCREMENT=69480581;

/***************************************** TABLE 3 ************************************************/

CREATE TABLE IF NOT EXISTS `tbl_chat_message`(
    `chatID` int(8) NOT NULL,
    `chatMessageID` int NOT NULL AUTO_INCREMENT,
    `chatMessage` varchar NOT NULL,
    `chatMessageTime` datetime NOT NULL,
    PRIMARY KEY (`chatMessageID`),
    FOREIGN KEY (`chatID`) REFERENCES `tbl_chat`(`chatID`)
);
ALTER TABLE `tbl_chat_message` AUTO_INCREMENT=48058186;

/***************************************** TABLE 4 ************************************************/

CREATE TABLE IF NOT EXISTS `tbl_review`(
    `reviewID` int NOT NULL AUTO_INCREMENT,
	`clientID` int(8) NOT NULL,
    `reviewTimeCreated` datetime NOT NULL,
    PRIMARY KEY (`reviewID`),
    FOREIGN KEY (`clientID`) REFERENCES `tbl_client`(`clientID`)
);
ALTER TABLE `tbl_review` AUTO_INCREMENT=75035146;

/***************************************** TABLE 5 ************************************************/

CREATE TABLE IF NOT EXISTS `tbl_review_message`(
    `reviewID` int NOT NULL,
    `reviewMessageID` int NOT NULL AUTO_INCREMENT,
    `reviewStarRating` enum('One-Star','Two-Star','Three-Star','Four-Star','Five-Star') NOT NULL,
    `reviewMessage` varchar,
    `reviewMessageTime` datetime NOT NULL,
    PRIMARY KEY (`reviewMessageID`),
    FOREIGN KEY (`reviewID`) REFERENCES `tbl_review`(`reviewID`)
);
ALTER TABLE `tbl_review_message` AUTO_INCREMENT=50592701;

/***************************************** TABLE 6 ************************************************/

CREATE TABLE IF NOT EXISTS `tbl_payment`(
    `paymentID` int NOT NULL AUTO_INCREMENT,
    `clientID` int(8) NOT NULL,
    `paymentAmount` int NOT NULL,
    `paymentMethod` varchar(25) NOT NULL,
    `paymentStatus` varchar(25) NOT NULL,
    `paymentTime` datetime,
    PRIMARY KEY (`paymentID`),
    FOREIGN KEY (`clientID`) REFERENCES `tbl_client`(`clientID`)
);
ALTER TABLE `tbl_payment` AUTO_INCREMENT=25257672;

/***************************************** TABLE 7 ************************************************/

CREATE TABLE IF NOT EXISTS `tbl_receipt`(
    `receiptID` int NOT NULL AUTO_INCREMENT,
    `paymentID` int NOT NULL,
    PRIMARY KEY (`receiptID`),
    FOREIGN KEY (`paymentID`) REFERENCES `tbl_payment`(`paymentID`)
);
ALTER TABLE `tbl_receipt` AUTO_INCREMENT=35383683;