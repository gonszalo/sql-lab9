SELECT * FROM sakila.rental;

SELECT * FROM sakila.rentals_may;
SELECT customer_id, count(*) as Total_Rentals
FROM rentals_may
GROUP BY customer_id
ORDER BY Total_Rentals DESC;

SELECT * FROM sakila.rentals_june;
insert into rentals_june
  select rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update 
  from rental
  where rental_date between '2005-06-01' and '2005-06-30';

select rental_date 
from rental
where rental_date between '2005-06-01' and '2005-06-30';

SELECT customer_id, count(*) as Total_Rentals
FROM rental

GROUP BY customer_id
ORDER BY Total_Rentals DESC;