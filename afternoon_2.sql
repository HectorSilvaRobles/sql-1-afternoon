create table orders (
    person_id serial,
    product_name varchar(200) not null,
    product_price integer not null,
    quantity integer not null
)

insert into orders(person_id, product_name, product_price, quantity)
values
(1, 'phone', 500, 1),
(2, 'book', 30, 5),
(3, 'apple', 2, 10),
(4, 'hat', 20, 3),
(5, 'toy', 50, 2)

-- Get the sum of the number of orders placed (quantity)
select SUM(quantity) from orders

-- Get the total cost of orders
select SUM(product_price * quantity) from orders

-- Get the total cost of a single customer(3)
select SUM(product_price * quantity) from orders
WHERE person_id = 3