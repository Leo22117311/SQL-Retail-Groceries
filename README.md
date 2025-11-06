# HeheGroceries SQL Case Study

## Overview
This project uses a retail database (`hehegroceries`) created in MySQL/XAMPP.
It contains information about customers, employees, products, categories, and transactions.
The goal is to practice SQL skills by answering real business questions.

## Database Schema
**Tables**
- `mscategory` → product categories (e.g., Dairy, Fruit, Vegetable)
- `mscustomer` → customers (name, gender, email, DOB, address)
- `msemployee` → employees (ID, name, gender, address)
- `msproduct` → products (name, price, stock, category ID)
- `transactionheader` → transaction summary (customer, employee, date)
- `transactiondetail` → transaction details (product, quantity, linked to header)

## Business Questions Explored
1. Who are the top 5 customers by spending?
2. What is the monthly revenue trend?
3. Which employees handle the most transactions?
4. What are the most popular products?
5. What are the most popular product categories?
