
SELECT customer_id, sales_transaction_date INTO lemon_sales FROM 
sales WHERE product_id=3;

SELECT emails.customer_id, emails.email_subject, emails.opened, 
emails.sent_date, emails.opened_date, lemon_sales.sales_transaction_date 
INTO lemon_emails FROM emails INNER JOIN lemon_sales ON emails.customer_id=lemon_sales.customer_id;

SELECT production_start_date FROM products Where product_id=3;

 DELETE FROM lemon_emails WHERE sent_date < '2013-05-01';
 
 DELETE FROM lemon_emails WHERE sent_date > sales_transaction_date;

DELETE FROM lemon_emails WHERE (sales_transaction_date - sent_date) > '30 days';


-- Lemon Scooter campaign emails sent
SELECT DISTINCT(email_subject) FROM lemon_emails;

DELETE FROM lemon_emails WHERE POSITION('25% off all EVs.' in 
email_subject)>0;
DELETE FROM lemon_emails WHERE POSITION('25% off all EVs.' in 
email_subject)>0;
 DELETE FROM lemon_emails WHERE POSITION('Save the Planet' in 
email_subject)>0;
 DELETE FROM lemon_emails WHERE POSITION('An Electric Car' in 
email_subject)>0;

DELETE FROM lemon_emails WHERE POSITION('We cut you a deal' in 
email_subject)>0;
DELETE FROM lemon_emails WHERE POSITION('Black Friday. Green 
Cars.' in email_subject)>0;
DELETE FROM lemon_emails WHERE POSITION('Zoom' in email_subject)>0;


-- Lemon Scooter campaign emails opened
SELECT COUNT(opened) FROM lemon_emails WHERE opened='t';

-- Unique customers who purchased a Lemon Scooter
SELECT COUNT(DISTINCT(customer_id)) FROM lemon_emails;

--Calculate the percentage of customers who opened the received emails and made 
-- a purchase
SELECT 128.0/506.0 AS email_rate;

-- Count of unique Lemon Scooter customers
SELECT COUNT(DISTINCT(customer_id)) FROM lemon_sales;

--  Lemon Scooter customers who received an email
SELECT 506.0/13854.0 AS email_sales;

 SELECT * INTO lemon_emails_threewks FROM lemon_emails WHERE sales_transaction_date < '2013-06-01';


-- Unique sales of the Lemon Scooter in the first 3 weeks
SELECT COUNT(sales_transaction_date) FROM lemon_emails_threewks;

