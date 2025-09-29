# 📚 Online Bookstore SQL Project – Database & Business Analysis  

![MySQL](https://img.shields.io/badge/Database-MySQL-blue.svg) 
![SQL](https://img.shields.io/badge/Queries-20%2B-green.svg) 
![Analytics](https://img.shields.io/badge/Business-Insights-orange.svg) 
![License: MIT](https://img.shields.io/badge/License-MIT-green.svg) 
![GitHub](https://img.shields.io/badge/Version%20Control-GitHub-black.svg) 

---

## 📌 Project Overview  
This project simulates a **Bookstore Management System** with a real **MySQL database**.  
It demonstrates SQL skills across **data retrieval, joins, aggregations, subqueries, and window functions**, applied to **business analysis**.  

The system allows analysis of **books, customers, orders, and sales trends**, generating meaningful **insights for decision-making**.  

---

## 📂 Dataset  
All data is contained in the `onlinebookstore_db.sql` file, which includes:  
- **Books** → 500+ entries (titles, authors, genres, prices, stock, years)  
- **Customers** → 100+ entries (names, emails, locations)  
- **Orders** → customer purchases (order date, quantity, total amount)  

> **Note:** Import this SQL dump into MySQL to recreate the database locally.  

---

## 🎯 Problem Statement  
The goal is to perform **business-oriented SQL analysis** and answer key questions such as:  

- Which **genres** have the highest sales and stock turnover?  
- Who are the **top-spending customers** and where are they located?  
- What is the **total revenue** and **monthly sales trend**?  
- Who are the **best-selling authors**?  
- Which books are **most expensive** by genre?  
- How much **inventory remains** after sales?  

---

## 🔎 Analysis & Insights  
Key findings generated from SQL queries include:  

- 💰 **Total Revenue** → `$X` from all orders  
- 🏆 **Top Customer** → `"Name"` spent `$Y`  
- 📚 **Best-Selling Genre** → `"Fantasy"` (most copies sold)  
- ✍️ **Top Author** → `"Author Name"` with maximum sales  
- 📦 **Stock Check** → `"Book Title"` → 25 copies left  

*(Replace `$X`, `Name`, etc. with actual results once queries are run.)*  

---

## 📁 Project Structure  
OnlineBookstore-SQL/
│
├── onlinebookstore_db.sql # Full database dump (schema + data)
├── queries.sql # 20+ SQL queries for analysis
├── README.md # Project documentation
└── screenshots/ # (Optional) Query outputs & insights

---

## 📌 How to Use  
1. **Clone the repository**  
```bash
git clone https://github.com/YourUsername/OnlineBookstore-SQL.git
cd OnlineBookstore-SQL

