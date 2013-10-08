##Write SQL statements for the included DB that:
    1. Selects the names of all products that are not on sale.
    
    SELECT id FROM products WHERE on_sale=TRUE;

    ANSW
    SELECT name FROM products WHERE on_sale=TRUE;



    2. Selects the names of all products that cost less than £20.
    SELECT name FROM products WHERE price < 20;


    
    3. Selects the name and price of the most expensive product.
    
    SELECT name, price FROM products WHERE MAX(price)

    ALT ANSW:

    SELECT name, MAX(price) AS max_price FROM products


    
    4. Selects the name and price of the second most expensive product.
    
    SELECT name, price FROM products WHERE p2 < (SELECT MAX(price) FROM products) 
    ----actually the sub request above is not very efficient

    ALT ANSW:

    SELECT name, price FROM products ORDER by price DESC LIMIT 1 OFFSET 1


    
    5. Selects the name and price of the least expensive product.
    
    SELECT name, price FROM products WHERE MIN(price)

    ALT ANSW:

    SELECT name, price FROM products ORDER by price ASC LIMIT 1


    
    6. Selects the names and prices of all products, ordered by price in descending order.
    
    SELECTS name, price FROM products ORDER BY price DESC; 


    
    7. Selects the average price of all products.
    
    SELECT AVG(price) AS PriceAverage FROM products;

    ALT ANSW:

    SELECT AVG(price) FROM products;


    
    8. Selects the sum of the price of all products.
    
    SELECT SUM(price) FROM products;


    
    9. Selects the sum of the price of all products whose prices is less than £20.
    
    SELECT SUM(price) FROM products WHERE price < 20;


    
    10. Selects the id of the user with your name.
    
    SELECT id FROM users WHERE name='Ralph';


    
    11. Selects the names of all users whose names start with the letter "A".
    
    SELECT name FROM users WHERE name LIKE 'A%';


    
    12. Selects the number of users whose first names are "Jonathan".
    
    SELECT COUNT(id) FROM users WHERE name LIKE 'Jonathan%';


    
    13. Selects the number of users who want a "Teddy Bear".
    
    SELECT COUNT(user_id) FROM wishlists WHERE product_id IN (
        SELECT id FROM products WHERE name='Teddy Bear'
        );


    
    14. Selects the count of items on the wishlish of the user with your name.
    
    SELECT COUNT(id) FROM wishlists WHERE user_id IN (
        SELECT id FROM user WHERE name='Ralph'
        );


    
    15. Selects the count and name of all products on the wishlist, ordered by count in descending order.
    
    SELECT name, COUNT(id) FROM products WHERE product_id IN
    (SELECT product_id FROM wishlists)
	GROUP BY name
	ORDERED BY COUNT(id) DESC;

    ALT ANSW to limit same method calls

    SELECT name, COUNT(id) AS products_count FROM products WHERE product_id IN
    (SELECT product_id FROM wishlists)
    GROUP BY name
    ORDERED BY products_count DESC;

    
    16. Selects the count and name of all products that are not on sale on the wishlist, ordered by count in descending order.
    
    SELECT name, COUNT(id) from products WHERE id in
        (SELECT id FROM products LEFT JOIN wishlist ON products.id=wishlists.product_ID)
    GROUP by name
    ORDERED by COUNT(id) DESC;

    ALT ANSWER --- but we will cover joins above so alt answ does use sub request

    SELECT name, COUNT(id) AS products_count FROM products WHERE
    on_sale=false AND product_id IN
    (SELECT product_id FROM wishlists)
    GROUP BY name
    ORDERED BY products_count DESC;


    
    17. Inserts a user with the name "Jonathan Postel" into the users table. Ensure the created_at column is set to the current time.
    
    INSERT INTO users (create_at, name) VALUES (Now(), 'Jonathan Postel');


    
    18. Selects the id of the user with the name "Jonathan Postel"?  Ensure the created_at column is set to the current time.
    
    INSERT INTO users (name, created_at) VALUES ('Jonathan Postel', Now())
    SELECT id FROM users WHERE name='Jonathan Postel' AND created_at=NOW()


    
    19. Inserts a wishlist entry for the user with the name "Jonathan Postel" for the product "The Ruby Programming Language".
    
    INSERT INTO wishlists (create_at, user_id, product_id) VALUES (Now(), 
    	(SELECT id FROM users WHERE name='Jonathan Postel'),
    	SELECT id FROM products WHERE name='The Ruby Programming Language');


    
    20. Updates the name of the "Jonathan Postel" user to be "Jon Postel".
    
    UPDATE users SET id=3,name='Jonathan Postel' 
    WHERE name='Jon Postel';

    ANSWER:

    Update users SET name='Jon Postel' WHERE name='Jonathan Postel'



    21. Deletes the user with the name "Jon Postel".
    
    DELETE FROM users WHERE name='Jon Postel';


    
    22. Deletes the wishlist item for the user you just deleted.

	DELETE FROM wishlists WHERE user_id NOT IN
    (SELECT id FROM users WHERE name='Jon Postel');


