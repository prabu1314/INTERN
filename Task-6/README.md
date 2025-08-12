# 🏏 IPL Cricket Database – Task 6: Subqueries and Nested Queries

## 📌 Overview
This is **Task 6** focusing on **subqueries and nested queries** in the IPL Cricket Database.  
The task demonstrates how to use scalar subqueries, correlated subqueries, and subqueries inside `WHERE`, `SELECT`, and `FROM` clauses for advanced query logic.

---

## 🎯 Objective
- Use subqueries in `SELECT`, `WHERE`, and `FROM`  
- Write scalar and correlated subqueries  
- Use subqueries inside `IN`, `EXISTS`, and comparison operators (`=`, `>`, `<`)  
- Perform advanced filtering and summarization  

---

## 🗂 Topics Covered
1. **Scalar Subqueries** – Returning a single value inside a query  
2. **Correlated Subqueries** – Subqueries that depend on the outer query  
3. **Subqueries in WHERE** – Filtering based on results from another query  
4. **Subqueries in SELECT** – Calculating values dynamically  
5. **Subqueries in FROM** – Creating inline views or derived tables  

---

## 🛠 Example Operations

### Subquery in WHERE (Scalar Subquery)
```sql
-- Players with above-average runs
SELECT PLAYER_NAME
FROM PLAYER
WHERE PLAYER_ID IN (
    SELECT PLAYER_ID
    FROM SCORE
    GROUP BY PLAYER_ID
    HAVING AVG(RUNS) > (
        SELECT AVG(RUNS) FROM SCORE
    )
);
```
```
###  Correlated Subquery with EXISTS
```sql
-- Players who have scored at least one fifty
SELECT PLAYER_NAME
FROM PLAYER P
WHERE EXISTS (
    SELECT 1
    FROM SCORE S
    WHERE S.PLAYER_ID = P.PLAYER_ID
      AND S.RUNS >= 50
);
```

