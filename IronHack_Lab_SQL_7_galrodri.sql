-- Question 1
select distinct last_name 
, count(distinct actor_id) as actor_count
from sakila.actor
group by 1
having actor_count = 1;

-- Question 2
select distinct last_name 
, count(distinct actor_id) as actor_count
from sakila.actor
group by 1
having actor_count > 1;

-- Question 3
select distinct staff_id
, count(distinct rental_id) as rental_count
from sakila.rental
group by 1;

-- Question 4
select release_year
, count(distinct film_id) as film_count 
from sakila.film
group by 1
order by release_year asc;

-- Question 5
select rating
, count(distinct film_id) as film_count 
from sakila.film
group by 1
order by rating desc;

-- Question 6
select rating
, round(avg(length),2) as avg_duration_rounded
from sakila.film
group by 1
order by avg_duration_rounded desc;

-- Question 7
select rating
, avg(length) as avg_duration 
from sakila.film
group by 1
having avg_duration > 120
order by avg_duration desc;