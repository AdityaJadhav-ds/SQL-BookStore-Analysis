-- Online Bookstore SQL Analysis Queries

-- 1. Retrieve all books in the “Fiction” genre.
SELECT * FROM books 
WHERE Genre = 'Fiction';

-- 2. Find books published after the year 1950.
SELECT * FROM books 
WHERE Published_Year > 1950;

-- 3. List all customers from Canada.
SELECT * FROM customers 
WHERE Country = 'Canada';

-- 4. Show orders placed in November 2023.
SELECT * FROM orders 
WHERE Order_Date >= '2023-11-01' AND Order_Date < '2023-12-01';

-- 5. Retrieve the total stock of books available.
SELECT SUM(Stock) AS total_stock FROM books;

-- 6. Find the details of the most expensive book.
SELECT * FROM books 
WHERE Price = (SELECT MAX(Price) FROM books);

-- 7. Show all customers who ordered more than 1 quantity of a book.
SELECT c.Name, o.Quantity 
FROM customers c
JOIN orders o ON c.Customer_ID = o.Customer_ID
WHERE o.Quantity > 1;

-- 8. Retrieve all orders where the total amount exceeds $20.
SELECT * FROM orders 
WHERE Total_Amount > 20;

-- 9. List all distinct genres in the bookstore.
SELECT DISTINCT Genre FROM books;

-- 10. Find the book with the lowest stock available.
SELECT * FROM books 
ORDER BY Stock ASC 
LIMIT 1;

-- 11. Calculate the total revenue from all orders.
SELECT SUM(Total_Amount) AS total_revenue 
FROM orders;

-- 12. Retrieve the total number of books sold for each genre.
SELECT b.Genre, SUM(o.Quantity) AS total_sold
FROM books b
JOIN orders o ON o.Book_ID = b.Book_ID
GROUP BY b.Genre;

-- 13. Find the average price of books in the “Fantasy” genre.
SELECT ROUND(AVG(Price), 2) AS avg_price
FROM books 
WHERE Genre = 'Fantasy';

-- 14. List customers who have placed at least 2 orders.
SELECT c.Name, COUNT(o.Order_ID) AS total_orders
FROM customers c
JOIN orders o ON c.Customer_ID = o.Customer_ID
GROUP BY c.Customer_ID, c.Name
HAVING COUNT(o.Order_ID) >= 2;

-- 15. Find the most frequently ordered book.
SELECT b.Title, SUM(o.Quantity) AS total_sold
FROM books b
JOIN orders o ON o.Book_ID = b.Book_ID
GROUP BY b.Title
ORDER BY total_sold DESC
LIMIT 1;

-- 16. Show the top 3 most expensive books of the “Fantasy” genre.
SELECT Title, Price
FROM books
WHERE Genre = 'Fantasy'
ORDER BY Price DESC
LIMIT 3;

-- Alternative (using window function for ties):
SELECT Title, Price
FROM (
    SELECT Title, Price,
           DENSE_RANK() OVER (ORDER BY Price DESC) AS rnk
    FROM books
    WHERE Genre = 'Fantasy'
) ranked_books
WHERE rnk <= 3;

-- 17. Retrieve the total quantity of books sold by each author.
SELECT b.Author, SUM(o.Quantity) AS total_sold
FROM books b
JOIN orders o ON b.Book_ID = o.Book_ID
GROUP BY b.Author
ORDER BY total_sold DESC;

-- 18. List the cities of customers who spent over $30.
SELECT c.City, SUM(o.Total_Amount) AS city_spend
FROM customers c
JOIN orders o ON c.Customer_ID = o.Customer_ID
GROUP BY c.City
HAVING SUM(o.Total_Amount) > 30;

-- 19. Find the customer who spent the most on orders.
SELECT c.Name, ROUND(SUM(o.Total_Amount), 2) AS total_spend
FROM customers c
JOIN orders o ON c.Customer_ID = o.Customer_ID
GROUP BY c.Name
ORDER BY total_spend DESC
LIMIT 1;

-- 20. Calculate the stock remaining after fulfilling all orders.
SELECT 
    b.Title, 
    MAX(b.Stock) - IFNULL(SUM(o.Quantity), 0) AS remaining_stock
FROM books b
LEFT JOIN orders o ON o.Book_ID = b.Book_ID
GROUP BY b.Book_ID, b.Title
ORDER BY remaining_stock ASC;

