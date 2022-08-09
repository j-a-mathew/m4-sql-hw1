-- Question 1 --> 2 actors
select count(last_name)
from actor 
where last_name = 'Wahlberg';

-- Question 2 --> 4,764 *******
select count(amount)
from payment
where amount between 3.99 and 5.99;

-- Question 3 --> Film 200 ("Curtain Videotape") with 9 count
select film_id, count(film_id)
from inventory
group by film_id
order by count desc;

-- Question 4 --> 0 customers
select count(last_name)
from customer 
where last_name = 'William';

-- Question 5 --> Employee ID #1 with 8040 count rentals
select count(rental_id), staff_id
from rental
group by staff_id
order by staff_id;

-- Question 6 --> 378 different districts
select count(distinct district)
from address;

-- Question 7 --> film 508 "Lambs Cincinatti" with 16 actors
select film_id, count(actor_id)
from film_actor
group by film_id;

-- Question 8 --> 13 customers
select store_id, count(last_name)
from customer
where last_name like '%es' and store_id = 1
group by store_id;

-- Question 9 --> *********
select customer_id, sum(amount)
from payment
where customer_id between 380 and 430 
group by customer_id;

-- Question 10 --> there are 5 ratings, with PG-13 having the most
select rating, count(rating)
from film
group by rating;

