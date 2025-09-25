# 📚 Online Bookstore SQL Project

## 🔹 Overview
This project simulates a **Bookstore Management System** with a real MySQL database.  
It demonstrates SQL skills for **data retrieval, joins, aggregations, window functions, and business analytics**.

The dataset (`onlinebookstore_db.sql`) includes:
- **500+ books** (with authors, genres, prices, stock, and years).
- **100+ customers** (with names, emails, locations).
- **orders table** (customer purchases with quantity and total amount).

---

## 🔹 Project Files
- `onlinebookstore_db.sql` → Full database dump (schema + sample data).
- `queries.sql` → 20 SQL queries for business analysis.
- `README.md` → Documentation and insights.
- `screenshots/` *(optional)* → Example query results.

---

## 🔹 Business Questions Answered
1. Books by genre, year, or stock.
2. Customers by country and spending habits.
3. Orders by date, month, or amount.
4. Total stock, revenue, and books sold.
5. Best-selling authors and top customers.
6. Most expensive books by genre.
7. Inventory remaining after sales.

---

## 🔹 SQL Concepts Covered
- Filtering (`WHERE`, `DISTINCT`)
- Sorting (`ORDER BY`, `LIMIT`)
- Aggregation (`SUM`, `AVG`, `COUNT`)
- Grouping & Conditions (`GROUP BY`, `HAVING`)
- Joins (`INNER JOIN`, `LEFT JOIN`)
- Subqueries
- Window Functions (`DENSE_RANK`)

---

## 🔹 Example Outputs
- **Total Revenue** → `$X` (from all orders)  
- **Most Expensive Book** → `"Title"` ($Price)  
- **Top Customer** → `"Name"` ($Total Spent)  
- **Best-Selling Genre** → `"Fantasy"` (copies sold)  
- **Remaining Stock Example** → `"Book Title"` → 25 left  

*(Replace `$X`, `Title`, etc. with actual results once you run queries.)*

---

## 🔹 How to Run
1. Import the dump file into MySQL:
   ```sql
   mysql -u root -p bookstore < onlinebookstore_db.sql
