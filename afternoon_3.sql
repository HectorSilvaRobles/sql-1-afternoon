-- Getting all data from https://postgres.devmountain.com 

-- Selecting the first and last name of employees who live in Calgary
select first_name, last_name from employee
WHERE city = 'Calgary'

-- Selecting the youngest in employee table using MAX
select MAX(birth_date) from employee

-- Selecting the Oldest in employee table using MIN
select MIN(birth_date) from employee

select * from employee
WHERE reports_to = 2

-- Get the amount of people who live in Lethbridge
select COUNT(*) from employee
WHERE city = 'Lethbridge'