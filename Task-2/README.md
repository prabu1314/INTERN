# 🏏 IPL Cricket Database – Task 2: Data Insertion and Handling NULLs

## 📌 Overview
This is **Task 2** focusing on **data manipulation** in the IPL Cricket Database.  
The task covers inserting new records, updating existing ones, deleting unwanted rows, and handling `NULL` values where data is missing.

---

## 🎯 Objective
- Practice inserting data into tables
- Handle missing values using `NULL` or default values
- Use `UPDATE` to modify existing data
- Use `DELETE` with `WHERE` conditions to remove specific rows
- Maintain **clean and consistent** data in the database

---

## 🗂 Topics Covered
1. **INSERT INTO** – Adding new rows to TEAM, PLAYER, MATCHES, and SCORE tables  
2. **Handling NULL values** – Inserting missing DOB, captain names, or stats as `NULL`  
3. **UPDATE** – Modifying specific records using conditions  
4. **DELETE** – Removing targeted rows with `WHERE` clauses  
5. **COMMIT** – Saving changes permanently

---

## 🛠 Example Operations

### 1️⃣ INSERT Example
```sql
-- Insert a new team without a captain (CAP_NAME = NULL)
INSERT INTO TEAM VALUES (5, 'Sunrisers Hyderabad', NULL, 'Rajiv Gandhi International Stadium');
