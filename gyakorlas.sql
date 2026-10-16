
SELECT product_name ,list_price FROM products 
WHERE list_price > 15 AND discontinued = 0 AND category <> 'Condiments'
ORDER BY list_price DESC;


SELECT first_name, last_name , job_title FROM employees ORDER BY job_title, first_name DESC;


SELECT MIN(list_price), product_name FROM products;


SELECT MIN(list_price) AS legolcsóbb, product_name FROM products;


SELECT MAX(list_price) AS legdrágább, product_name FROM products;



SELECT AVG(list_price) AS átlagos, product_name FROM products;


SELECT SUM(list_price) AS összege, product_name FROM products;


SELECT COUNT(*) ,ship_city FROM orders
GROUP BY ship_city;



SELECT COUNT(*) ,job_title FROM employees
GROUP BY job_title;






USE mozi;
DROP DATABASE IF EXISTS mozi;
CREATE DATABASE mozi;


CREATE TABLE terem(
    terem_id INT,
    terem_nev VARCHAR(40),
	PRIMARY KEY (terem_id)
);

	CREATE TABLE film(
        film_id INT,
        film_nev VARCHAR(40),
        terem_id INT,
        PRIMARY KEY (film_id),
        FOREIGN KEY (terem_id)REFERENCES terem (terem_id)
);

INSERT INTO terem(terem_id,terem_nev) VALUES (1, 'Táncolo talpak terme');
INSERT INTO film(film_id, film_nev,terem_id)VALUES (1 ,'Pókember',1);
        


