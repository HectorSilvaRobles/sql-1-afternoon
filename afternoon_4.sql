-- Getting all data from invoice database at https://postgres.devmountain.com 

-- Count how many customers are from the USA
select COUNT(*) from invoice
WHERE billing_country = 'USA'

-- Get the largest order total amount
select MAX(total) from invoice

-- Get the smallest order total amount
select MIN(total) from invoice

-- Get all orders that are greatere than 5
select * from invoice
WHERE total > 5

-- Get all orders that are smaller than 5
select * from invoice
WHERE total < 5

-- Get all orders that are from AZ, TX, CA using IN
select * from invoice
WHERE billing_state IN ('AZ', 'TX', 'CA')

-- Get the average of all orders
select AVG(total) from invoice

-- Get the sum of all orders
select SUM(total) from invoice