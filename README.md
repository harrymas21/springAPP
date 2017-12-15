# SpringCRUD
A Simple Spring MVC CRUD Application.

Database for the employees and users.

Don't forget to change the DB details
in the dispatcher-servlet.

```
      CREATE TABLE EMPLOYEE
  (
      ID INT(10) NOT NULL, 
      NAME VARCHAR(255), 
      DEPT VARCHAR(255), 
      AGE INT(10), 
      PRIMARY KEY(ID)
  ); 
  
      DROP TABLE IF EXISTS `users`;
	  CREATE TABLE `users` 

                 ( 

                              `username`  VARCHAR(45) NOT NULL, 

                              `password`  VARCHAR(45) NULL, 

                              `firstname` VARCHAR(45) NOT NULL, 

                              `lastname`  VARCHAR(45) NULL, 

                              `email`     VARCHAR(45) NULL, 

                              `address`   VARCHAR(45) NULL, 

                              `phone`     INT NULL, 

                              PRIMARY KEY (`username`) 

                 );
  ```
