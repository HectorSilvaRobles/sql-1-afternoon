create table person(
    person_id serial primary key,
    name VARCHAR(200) not null,
    age integer not null,
    height integer not null,
    city varchar(200) not null,
    favorite_color varchar(200) not null
);

insert into person (name, age, height, city, favorite_color)
values 
('Hector', 19, 170, 'Phoenix', 'Black'),
('Josh', 30, 180, 'Phoenix', 'Red'),
('Kim', 22, 150, 'Chicago', 'Yellow'),
('Steve', 18, 160, 'Los Angeles', 'Blue'),
('Richard', 39, 190, 'Phoenix', 'White')

-- Order from tallest to shortest
select * from person
ORDER BY height desc

-- Order from shortest to tallest
select * from person
ORDER BY height asc 

-- Order from oldest to youngest
select * from person
ORDER BY age desc

-- List all who are older than 20
select * from person
WHERE age > 20;

-- List all who are exactly 18 years old
select * from person 
WHERE age = 18

-- List all who age is less than 20 or greater than 30
select * from person
WHERE age < 20 OR age > 30

-- List all who's age is not equal to 27
select * from person
WHERE age != 27

-- List all who's favorite color does not equal 'Red'
select * from person
WHERE favorite_color != 'Red'

-- List all who's favorite color does not equal 'Red' and 'Blue'
select * from person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue'

-- List all who favorite color is equal to 'White' or 'Black'
select * from person
WHERE favorite_color = 'White' OR favorite_color = 'Black'

-- List all the people who's favorite color is equal to 'Yellow', 'Blue', or 'Black' using IN
select * from person
WHERE favorite_color IN ('Yellow', 'Blue', 'Black')

-- List all the people who's favorite color is equal to 'Red' or 'White' using IN
select * from person
WHERE favorite_color IN ('Red', 'White')