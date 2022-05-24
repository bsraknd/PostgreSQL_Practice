Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.
*film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
*film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
*film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
*payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

-- SELECT COUNT(*) FROM film
-- WHERE length > 
-- (
-- 	SELECT AVG(length) FROM film
-- );

-- SELECT COUNT(*) FROM film 
-- WHERE rental_rate = 
-- (
-- 	SELECT MAX(rental_rate) FROM film
-- );

-- SELECT COUNT(*) FROM film
-- WHERE rental_rate =
-- (
-- 	SELECT MIN(rental_rate) FROM film)
-- 	AND replacement_cost = 
-- (
-- 	SELECT MIN(replacement_cost) FROM film
-- );

-- SELECT payment.customer_id, customer.first_name, customer.last_name, COUNT(payment.customer_id) AS number_of_payment FROM payment 
-- INNER JOIN customer ON customer.customer_id = payment.customer_id
-- GROUP BY payment.customer_id,customer.first_name, customer.last_name
-- ORDER BY number_of_payment DESC
-- LIMIT 5;
