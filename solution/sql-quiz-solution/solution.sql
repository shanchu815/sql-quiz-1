-- Ex 1:

-- Task: Write a query that shows all the information about all the salespeople
-- in the database. Use a basic select query.

SELECT *
FROM Salespeople;


-- Ex 2:

-- Task: Write a query that shows all the information about all salespeople
-- from the 'Northwest' region.

SELECT *
FROM Salespeople
WHERE region = 'Northwest';


-- Ex 3:

-- Task: Write a query that shows just the emails of the salespeople from
-- the 'Southwest' region.

SELECT email
FROM Salespeople
WHERE region = 'Southwest';


-- Ex 4:

-- Task: Write a query that shows the given name, surname, and email of all
-- salespeople in the 'Northwest' region.

SELECT first_name, last_name, email
FROM Salespeople
WHERE region = 'Northwest';


-- Ex 5:

-- Task: Write a query that shows the common name of melons that cost more
-- than $5.00.

SELECT common_name
FROM Melons
WHERE price > 5;


-- Ex 6:

-- Task: Write a query that shows the common name and price for all
-- watermelons that cost more than $5.00.

SELECT common_name, price
FROM Melons
WHERE melon_type = 'Watermelon'
  AND price > 5;


-- Ex 7:

-- Task: Write a query that displays all common names of melons that
-- start with the letter 'C'.

SELECT common_name
FROM Melons
WHERE common_name LIKE 'C%';


-- Ex 8:

-- Task: Write a query that shows the common name of any melon with
-- 'Golden' anywhere in the common name.

SELECT common_name
FROM Melons
WHERE common_name LIKE '%Golden%';


-- Ex 9:

-- Task: Write a query that shows all the distinct regions that a
-- salesperson can belong to.

SELECT DISTINCT(region)
FROM Salespeople;


-- Ex 10:

-- Task: Write a query that shows the emails of all salespeople from
-- both the Northwest and Southwest regions.

SELECT email
FROM Salespeople
WHERE region = 'Northwest'
  OR region = 'Southwest';


-- Ex 11:

-- Task: Write a query that shows the emails of all salespeople from
-- both the Northwest and Southwest regions, this time using an 'IN' clause.

SELECT email
FROM Salespeople
WHERE region IN ('Northwest', 'Southwest');


-- Ex 12:

-- Task: Write a query that shows the email, given name, and surname of
-- all salespeople in either the Northwest or Southwest regions whose
-- surnames start with the letter 'M'.

SELECT email, first_name, last_name
FROM Salespeople
WHERE region IN ('Northwest', 'Southwest')
  AND last_name LIKE 'M%';


-- Ex 13:

-- Task: Write a query that shows the melon type, common name, price, and
-- the price of the melon given in euros. The 'melons' table has prices in
-- dollars, and the dollar to euro conversion rate is 0.73.

SELECT melon_type, common_name, price, price * 0.73
FROM Melons;


-- Ex 14:

-- Task: Write a query that shows the total number of customers in our
-- customer table.

SELECT COUNT(*)
FROM Customers;


-- Ex 15:

-- Task: Write a query that counts the number of orders shipped to
-- California.

SELECT COUNT(*)
FROM Orders
WHERE shipto_state = 'CA';


-- Ex 16:

-- Task: Write a query that shows the total amount of money spent
-- across all melon orders.

SELECT SUM(order_total)
FROM Orders;


-- Ex 17:

-- Task: Write a query that shows the average order cost.

SELECT AVG(order_total)
FROM Orders;


-- Ex 18:

-- Task: Write a query that shows the order total that was lowest in price.

SELECT MIN(order_total)
FROM Orders;


-- Ex 19:

-- Task: Write a query that fetches the id of the customer whose email
-- is 'pclark74@gmail.com'.

SELECT id
FROM Customers
WHERE email = 'pclark74@gmail.com';


-- Ex 20:

-- Task: Write a query that shows the id, status and order_total for all
-- orders made by customer 100.

SELECT id, status, order_total
FROM Orders
WHERE customer_id = 100;


-- Ex 21:

--  Task: Write a single query that shows the id, status, and order total
-- for all orders made by 'pclark74@gmail.com'. Use a sub-select to do this.

SELECT id, status, order_total
FROM Orders
WHERE customer_id = (
  SELECT id
  FROM Customers
  WHERE email = 'pclark74@gmail.com'
  );


-- Ex 22:

-- Write a query that shows the total amount of revenue that comes
-- from internet orders.

SELECT SUM(order_total)
FROM Orders
WHERE salesperson_id is NULL;