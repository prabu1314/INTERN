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

### 1️⃣ Subquery in WHERE (Scalar Subquery)
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

### 2️⃣ Subquery in SELECT
```sql
-- Show each player's total runs
SELECT PLAYER_NAME,
       (SELECT SUM(RUNS) FROM SCORE S WHERE S.PLAYER_ID = P.PLAYER_ID) AS Total_Runs
FROM PLAYER P;
```

### 3️⃣ Subquery in FROM (Derived Table)
```sql
-- Highest total runs by each player
SELECT PLAYER_ID, MAX(TotalRuns) AS Highest_Runs
FROM (
    SELECT PLAYER_ID, SUM(RUNS) AS TotalRuns
    FROM SCORE
    GROUP BY PLAYER_ID
) PlayerRuns
GROUP BY PLAYER_ID;
```

### 4️⃣ Correlated Subquery with EXISTS
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

---

## 📷 Screenshots
*(Add relevant screenshots of query outputs here)*  

---
