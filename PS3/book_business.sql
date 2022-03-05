DROP DATABASE IF EXISTS `Books`;
CREATE DATABASE IF NOT EXISTS `Books`;
USE `Books`;

SET NAMES UTF8MB4;
SET character_set_client = UTF8MB4;

CREATE TABLE `Publishers` (
    `PublisherID`          int NOT NULL AUTO_INCREMENT, 
    `Name`                 varchar (40) NULL,
    `Country`              varchar (40) NULL,
    `NumBooksPublished`    int NOT NULL,
    PRIMARY KEY (`PublisherID`), 
    INDEX `PublisherID` (`PublisherID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Genre` (
    `GenreID`         int NOT NULL AUTO_INCREMENT, 
    `NumBooks`        int NULL,
    PRIMARY KEY (`GenreID`), 
    INDEX `GenreID` (`GenreID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `Editors` (
    `EditorID`           int NOT NULL, 
    `NumBooksEdited`     int NOT NULL,
    PRIMARY KEY (`EditorID`),   
    INDEX `EditorID` (`EditorID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Books` (
	`BookID` 		     int NOT NULL AUTO_INCREMENT,		
	`ISBN` 		         varchar (13) NOT NULL,	
	`PublishedDate` 	 int NOT NULL,
    `PublisherID`        int NOT NULL,
    `NumEditors`			 int NOT NULL,
  	`EditorID`           int NOT NULL,
    `GenreID`            int NOT NULL,
    `NumAuthors`		 int NOT NULL,
    `RoyaltiesPerAuthor` int NOT NULL,
    `RoyaltiesPaidToAuthors` int NOT NULL,

    PRIMARY KEY (`BookID`),	
	INDEX `BookID` (`BookID` ASC),
    INDEX `PublisherID` (`PublisherID` ASC),
    INDEX `EditorID` (`EditorID` ASC),
	INDEX `GenreID` (`GenreID` ASC),

	FOREIGN KEY (`PublisherID`) REFERENCES `Publishers` (`PublisherID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
    FOREIGN KEY (`EditorID`) REFERENCES `Editors` (`EditorID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION ,      
    FOREIGN KEY (`GenreID`) REFERENCES `Genre` (`GenreID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION         
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Authors` (
    `AuthorID`         int NOT NULL,
    `FirstName`        varchar (20) NOT NULL, 
    `LastName`         varchar (20) NOT NULL,
    `NumBooksPublished` int NOT NULL,
    PRIMARY KEY (`AuthorID`), 
    INDEX `AuthorID` (`AuthorID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `BookAuthors` (
    `BookID`          int NOT NULL, 
    `AuthorID`        int NOT NULL,
    PRIMARY KEY (`BookID`), 
    INDEX `BookID` (`BookID` ASC),
    FOREIGN KEY (`AuthorID`) REFERENCES `Authors` (`AuthorID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION  
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Customers` (
    `CustomerID`    int NOT NULL, 
    `Name`     		varchar (30) NOT NULL,
    `NumOrders`  	int NOT NULL,
    
    PRIMARY KEY (`CustomerID`),   
    INDEX `CustomerID` (`CustomerID` ASC) 
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `OrderQueue` (
    `BookID`            int NOT NULL,
    `OrderID`           int NOT NULL, 
    `NumBooksInOrder`   int NOT NULL,
    `CustomerID`        int NOT NULL,

    PRIMARY KEY (`BookID`), 
    INDEX `BookID` (`BookID` ASC),
    FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION    
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;














