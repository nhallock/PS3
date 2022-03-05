
-- --------------------------------------
--  SAMPLE DATA
-- --------------------------------------
INSERT INTO `Editors` VALUES(1,100);
INSERT INTO `Editors` VALUES(2,100);
INSERT INTO `Editors` VALUES(3,100);
INSERT INTO `Editors` VALUES(4,100);
INSERT INTO `Editors` VALUES(5,100);
INSERT INTO `Editors` VALUES(6,100);
INSERT INTO `Editors` VALUES(7,100);
INSERT INTO `Editors` VALUES(8,100);
INSERT INTO `Editors` VALUES(9,100);
INSERT INTO `Editors` VALUES(10,100);

INSERT INTO `Publishers` VALUES(1,'PenguinBooks','US', 1000);
INSERT INTO `Publishers` VALUES(2,'ThomsonReuters', 'US', 2000); 
INSERT INTO `Publishers` VALUES(3,'HachetteLivre', 'US', 2033); 
INSERT INTO `Publishers` VALUES(4,'HarperCollins', 'Canada', 1900);
INSERT INTO `Publishers` VALUES(5,'Macmillian','Russia', 893);
INSERT INTO `Publishers` VALUES(6,'Bertelsmann','Canada', 200);
INSERT INTO `Publishers` VALUES(7,'McGrawHill','France', 546);
INSERT INTO `Publishers` VALUES(8,'Scholastic','Italy', 600);
INSERT INTO `Publishers` VALUES(9,'CambridgeBooks','US', 790);
INSERT INTO `Publishers` VALUES(10,'HarvardPress','US', 1033);

INSERT INTO `Genre` VALUES(1,10);
INSERT INTO `Genre` VALUES(2,89);
INSERT INTO `Genre` VALUES(3,8);
INSERT INTO `Genre` VALUES(4,6);
INSERT INTO `Genre` VALUES(5,167);
INSERT INTO `Genre` VALUES(6,57);
INSERT INTO `Genre` VALUES(7,17);

INSERT INTO `Books` VALUES(1, '1029384758493', 1909, 2, 1, 1, 1, 1, .5, 10000);
INSERT INTO `Books` VALUES(2, '2958473920938', 1921, 3, 1, 2, 3, 1, .9, 15000);
INSERT INTO `Books` VALUES(3, '8695048374658', 2001, 8, 2, 4, 5, 1, .16, 200);
INSERT INTO `Books` VALUES(4, '1195748372859', 2020, 1, 1, 5, 6, 1, .22, 12000);
INSERT INTO `Books` VALUES(5, '1958496059986', 2004, 7, 1, 7, 7, 1, .4, 16800);
INSERT INTO `Books` VALUES(6, '1049586746354', 1956, 9, 2, 8, 4, 1, .25, 56000);
INSERT INTO `Books` VALUES(7, '9068578847564', 1985, 9, 1, 2, 3,  1, .5, 8000);
INSERT INTO `Books` VALUES(8, '8894857685948', 1908, 3, 1, 5,  2, 1, .5, 1000);
INSERT INTO `Books` VALUES(9, '7584983948596', 1999, 4, 2, 2, 2, 1, .3, 1300);
INSERT INTO `Books` VALUES(10,'8695049586866', 1967, 5, 1, 10, 1, 1, .01, 1230);

INSERT INTO `Authors` VALUES(10,'Nancy','Davolio', 2);
INSERT INTO `Authors` VALUES(5,'Andrew','Fuller', 20); 
INSERT INTO `Authors` VALUES(1,'Janet','Leverling', 10); 
INSERT INTO `Authors` VALUES(9,'Margaret','Peacock', 1);
INSERT INTO `Authors` VALUES(2,'Steven','Buchanan', 12);
INSERT INTO `Authors` VALUES(8,'Michael','Suyama', 10);
INSERT INTO `Authors` VALUES(3,'Robert','King', 8);
INSERT INTO `Authors` VALUES(7,'Laura','Callahan', 7);
INSERT INTO `Authors` VALUES(4,'Anne','Dodsworth', 17);
INSERT INTO `Authors` VALUES(11,'Ivy','Johnson', 4);

INSERT INTO `Customers` VALUES(1, 'Bart Simpson', 10);
INSERT INTO `Customers` VALUES(2, 'Marge Simpson', 35);
INSERT INTO `Customers` VALUES(3, 'Homer Simpson', 1);
INSERT INTO `Customers` VALUES(4, 'Maggie Simpson', 12);
INSERT INTO `Customers` VALUES(5, 'Lisa Simpson', 1000);

INSERT INTO `OrderQueue` VALUES(1,  1, 100, 1);
INSERT INTO `OrderQueue` VALUES(2,  2, 20, 2);
INSERT INTO `OrderQueue` VALUES(3,  3, 200, 3);
INSERT INTO `OrderQueue` VALUES(4,  4, 220, 4);
INSERT INTO `OrderQueue` VALUES(5,  5, 303, 5);
