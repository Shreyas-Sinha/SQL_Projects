USE sakila ;  
SHOW TABLES ; 
SELECT * FROM actor_info ;
INSERT INTO actor_info VALUES (1,'SHREYAS','SINHA','Action: The Astrology Series') ;
SELECT * FROM city ;

USE shreyas2023 ;  
SHOW TABLES ; 
SELECT * FROM finance_data ;
INSERT INTO finance_data VALUES (5,'SHREYAS','New Laptop',111000) ;


USE syg_oct_2023 ;  
SHOW TABLES ;
SELECT * FROM 360debe_emp_grp ;
INSERT INTO 360debe_emp_grp VALUES (2,'Pankhuri','CFO') ;
`emp_id``emp_name``department`
DELETE FROM 360debe_emp_grp WHERE emp_id = 5



#New Project -> Github Upload
USE sakila ;
SHOW TABLES ;  

SELECT * 
FROM city ; 

SELECT * 
FROM actor ; 

USE shreyas2023 ;
SELECT * 
FROM finance_data ; 

#selecting unique enteries 
SELECT DISTINCT sale_price
FROM finance_data ;

SHOW TABLES ;  

SELECT * 
FROM finance_data ; 

SELECT * 
FROM sakila.film ; 



#using Aggregate Functions
SELECT COUNT(Customer_name) 
FROM finance_data ;  


SELECT SUM(film_id), SUM(rental_rate)  
FROM film ; 

DESCRIBE film ; 


SELECT SUM(film_id)
FROM film ; 

SELECT AVG(film_id)
FROM film ;

#Using Alias which "as"
SELECT COUNT(film_id) AS Number_of_Films
FROM film ; 



#Using WHERE 
SELECT *
FROM film
WHERE film_id > 200 ;


SELECT COUNT(*)
FROM film
WHERE film_id > 200 ;



# WHERE - Numeric Conditions  
SELECT * 
FROM film
WHERE film_id > 200 AND rental_duration > 6 ;   




# WHERE - String Conditions on Table 
SELECT *
FROM film 
WHERE rating = 'PG' OR  rating = 'PG-13' ;



SELECT *
FROM film 
WHERE rating IN ('PG', 'PG-13') ;



#Using WHERE + Between 
SELECT * 
FROM film 
WHERE last_update  BETWEEN "2006-01-01" AND "2023-01-01" ; 



SELECT DISTINCT  last_update
FROM  film ; 






#Using GROUPBY + Aggregate functions 
SELECT rating, SUM(rental_duration) 
FROM film
GROUP BY rating ; 



SELECT rating, SUM(rental_duration) 
FROM film
GROUP BY rating 
ORDER BY rental_duration  ;



# Day
SELECT DAY(CURDATE()) ;

# Current Date 
SELECT CURDATE();

# present Date and Time 
SELECT NOW();



SELECT title,CHARACTER_LENGTH(title) 
FROM film 
ORDER BY  CHARACTER_LENGTH(title) DESC ;


SELECT *
FROM film ; 


#Concat 
SELECT CONCAT(film_id, "_-------", title), film_id, title
FROM film ; 


#trim 
SELECT TRIM( "   i n dd       "); 



#position 
SELECT POSITION("p" IN "this is a very good place");



#asci 
SELECT ASCII('a'); 



SELECT rating, SUM(replacement_cost)  
FROM film 
WHERE film_id > 100 AND film_id < 200
GROUP BY rating 
ORDER BY rating DESC ;  



SELECT rating, COUNT(replacement_cost)  
FROM film 
WHERE film_id > 100 AND film_id < 200
GROUP BY rating 
ORDER BY rating DESC ; 



SELECT *
FROM film ; 



SELECT DISTINCT rental_duration
FROM film 
ORDER BY rental_duration DESC; 



SELECT DISTINCT COUNT(rental_duration)
FROM film 
ORDER BY rental_duration DESC; 



SELECT rental_duration, AVG(LENGTH) 
FROM film
GROUP BY rental_duration 
ORDER BY AVG(LENGTH) DESC ;



CREATE TABLE sample_table_2 ( sl_no INT PRIMARY KEY , emp_name VARCHAR(25),
  salary FLOAT, dept VARCHAR(20), time_of_reg TIMESTAMP );


SELECT * 
FROM sample_table_2 ; 


INSERT INTO sample_table_1 VALUES
(1, "a",10,"Science"),
(2, "b",15,"Social Science"),
(3, "c",10,"Science"),
(4, "d",13,"Computer Science"),
(5, "e",12,"Science"),
(6, "f",18,"Art"); 






DESCRIBE film ; 



SELECT * 
FROM sample_table_2 ;





  
 SELECT DISTINCT COUNT(customer_id)
 FROM payment ; 
 
  
 SELECT  COUNT(customer_id)
 FROM payment ; 
 
  
# 2 values   
SELECT DISTINCT staff_id
FROM payment ;  


# 1000 values 
SELECT DISTINCT rental_id
FROM payment ;  


# around 10 Unique values 
SELECT DISTINCT amount
FROM payment ;  


# Times based queries 
SELECT payment_date, AVG(amount), SUM(staff_id) 
FROM payment 
WHERE payment_date BETWEEN "2005-05-15 00:53:12" AND "2005-05-25 11:30:37"
GROUP BY payment_date
ORDER BY  AVG(amount);



  SELECT *
FROM payment ;


SELECT * 
FROM payment 
WHERE payment_date > "2005-07-15 00:53:12"; 


SELECT * 
FROM payment 
WHERE DATE(payment_date) != "2005-07-27 11:31:22"; 



 SELECT * 
FROM payment 
WHERE payment_date LIKE "2005-07-27%"; 




SELECT * 
FROM payment 
WHERE payment_date >= "2005-07-31 00:00:00" AND payment_date <= "2005-08-31 00:00:00" 
ORDER BY payment_date DESC ; 


CREATE TABLE race_results1 (
race_id INT, 
runner_name VARCHAR(30),
race_name VARCHAR(20), 
start_day DATE,
start_time TIME, 
total_miles DECIMAL(3, 1),
end_time TIMESTAMP,
PRIMARY KEY (race_id)
);



INSERT INTO race_results1
(race_id, runner_name, race_name, start_day, start_time, total_miles, end_time)
VALUES
(1, 'bolt', '1600_meters', '2022-09-18', '7:00:00', 1.0, '2022-09-18 7:06:30'),
(2, 'bolt', '5K', '2022-10-19', '11:00:00', 3.1, '2022-10-19 11:22:31'),
(3, 'bolt', '10K', '2022-11-20', '10:00:00', 6.2, '2022-11-20 10:38:05'),
(4, 'bolt', 'half_marathon', '2022-12-21', '6:00:00', 13.1, '2022-12-21 07:39:04'),
(5, 'bolt', 'full_marathon', '2023-01-22', '8:00:00', 26.2, '2023-01-22 11:23:10'),
(6, 'felix', '1600_meters', '2022-09-18', '7:00:00', 1.0, '2022-09-18 7:07:15'),
(7, 'felix', '5K', '2022-10-19', '11:00:00', 3.1, '2022-10-19 11:30:50'),
(8, 'felix', '10K', '2022-11-20', '10:00:00', 6.2, '2022-11-20 11:10:17'),
(9, 'felix', 'half_marathon', '2022-12-21', '6:00:00', 13.1, '2022-12-21 08:11:57'),
(10, 'felix', 'full_marathon', '2023-01-22', '8:00:00', 26.2, '2023-01-22 12:02:10');



INSERT INTO race_results1
(race_id, runner_name, race_name, start_day, start_time, total_miles, end_time)
VALUES
(11, 'relt', '1600_meters', '2022-09-18', '7:00:00', 11.0, '2022-09-18 7:06:30');


SELECT *
FROM race_results1 ; 


SELECT DATE "2022-10-05" + 17 ;


SELECT DATE(end_time), SUM(total_miles)
FROM race_results 
GROUP BY DATE(end_time);




#Inner Join - Common in both tables 

# Using film related tables from Sakila Database  


SELECT * 
FROM film 
LIMIT 15 ; 


SELECT * 
FROM film_actor ; 

 

SELECT * 
FROM film_category ; 


SELECT * 
FROM film_text ; 


# Inner Joined 2 tables  

 
SELECT f.title, f.rating, a.actor_id
FROM film AS f 
INNER JOIN film_actor AS a 
ON  f.film_id = a.film_id 
ORDER BY f.film_id ;



SELECT a.actor_id, f.title
FROM film AS f 
INNER JOIN film_actor AS a
ON f.film_id = a.film_id 
ORDER BY a.actor_id ;
  


SELECT * 
FROM film ;  
# film_id 

SELECT * 
FROM actor ; 
# actor_id 


 
SELECT * 
FROM category ; 
# category_id 




SELECT * 
FROM fim_text ; 
# not available



SELECT * 
FROM payment ; 
# pay_id, staff_id, rental_id, customer_id


SELECT * 
FROM customer ; 
# customer_id, store_id

SELECT * 
FROM rental ; 
# customer_id, rental_id



SELECT * 
FROM store ; 
# address_id, store_id




SELECT * 
FROM store AS s
INNER JOIN customer AS c
ON s.store_id = c.store_id; 
INNER JOIN rental AS r 
ON  c.customer_id = r.customer_id ;


##############################################################################


BACKUP DATABASE kart1 
TO DISK = "E:\Download 2023 Data Science\SQL Files" ;


BACKUP DATABASE databasename
TO DISK = 'filepath';


SELECT *
FROM kart1.dept ;



CREATE TABLE Employee_Info
(
EmployeeID INT NOT NULL,
EmployeeName VARCHAR(255) NOT NULL,
Emergency ContactName VARCHAR(255),
PhoneNumber INT NOT NULL,
Address VARCHAR(255),
City VARCHAR(255),
Country VARCHAR(255)
);


CREATE TABLE emp_info1
(
emp_id INT NOT NULL, 
emp_name VARCHAR(40) NOT NULL,
emp_address VARCHAR(33) NOT NULL, 
salary INT NOT NULL 
);

SELECT *
FROM sakila.emp_info ; 


INSERT INTO sakila.emp_info1
(emp_id, emp_name, emp_address, salary)
VALUES 
(1,'aon','as asd asdd',234.23),
(2,'bon','as asd asdd',334.23)
; 


CREATE TABLE uni_info3
(
id INT NOT NULL, 
u_name VARCHAR(45) NOT NULL, 
u_date DATE NOT NULL, 
u_reg_timestamp TIMESTAMP NOT NULL, 
12_marks DECIMAL(4,2)  
);



INSERT INTO uni_info3
(id, u_name, u_date, u_reg_timestamp,12_marks)
VALUES 
(1,'aon','2023-10-12','2023-10-12 12:12:00', 11.31),
(2,'bon','2023-10-12','2023-10-12 12:14:00', 11.31)
; 


SELECT *
FROM uni_info3 ; 


CREATE TABLE i_db1 
(
id INT NOT NULL,
weight DECIMAL(4,2)  
);


INSERT INTO i_db1
(id,weight)
VALUES 
(1,67.33)
; 

# Count number of films with G rating 
SELECT COUNT(rating) AS count_of_G_rating_films 
FROM film 
WHERE rating =( 'G', 'PG')
; 



#Group By + Having + Count 
SELECT rating ,COUNT(1) AS Total_count
FROM film
GROUP BY rating 
HAVING rating = "G"
; 




SELECT *
FROM film ; 


SELECT *
FROM rental ; 


SELECT *
FROM inventory ; 


SELECT *
FROM customer ; 



SELECT DISTINCT staff_id
FROM rental ; 
# Ans 1 and 2 


SELECT * 
FROM staff ; 




# Aggregate Numerical commands on SQL 
SELECT * 
FROM store ; 


SELECT rating, AVG(LENGTH)  
FROM film AS f 
GROUP BY rating 
HAVING rating IN ('G','PG'); 



SELECT rating, MAX(LENGTH)  
FROM film AS f 
GROUP BY rating 
HAVING rating IN ('G','PG'); 



SELECT rating, MIN(LENGTH)  
FROM film 
GROUP BY rating 
HAVING rating IN ('G','PG'); 


SELECT rating , MAX(rental_rate), MIN(rental_rate)
FROM film
GROUP BY rating  ; 


#String functions or queries 

SELECT * FROM film ; 


SELECT SUBSTRING(title,1,10), LENGTH(DESCRIPTION)
FROM film ; 


SELECT LEFT(title, 15)
FROM film ; 



SELECT title, LENGTH(title), LEFT(title,5)
FROM film ; 



#Date and Time

SELECT * 
FROM film ;  


SELECT DATE(last_update) 
FROM film ; 

SELECT TIME(last_update) 
FROM film ; 


SELECT HOUR(last_update) 
FROM film ; 



SELECT CURDATE();  




#Update/Changing cell values 

UPDATE film 
SET last_update =  '2019-10-11 18:00:09'
WHERE film_id = 8 ; 




UPDATE film 
SET last_update =  '2020-10-11 18:00:09'
WHERE film_id = 9 ; 



UPDATE film 
SET last_update =  '2022-10-11 18:00:09'
WHERE film_id = 10 ; 



UPDATE film 
SET last_update =  '2021-10-11 18:00:09'
WHERE film_id = 7 ; 




UPDATE film 
SET last_update =  '2021-10-11 18:00:09'
WHERE film_id = 7 ; 










































