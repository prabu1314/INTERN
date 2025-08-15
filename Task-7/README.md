# 🏏 IPL Cricket Database – Task 7: Creating Views

## 📌 Overview
This is **Task 7** focusing on **creating and using SQL views** in the IPL Cricket Database.  
Since the Oracle SQL environment did not provide the `CREATE VIEW` privilege, the intended view definitions were **executed directly as SELECT statements** to demonstrate the same logic.

---

## 🎯 Objective
- Understand how to use `CREATE VIEW` with **complex SELECT queries**
- Learn how views provide **abstraction** and **security**
- Simulate views using `SELECT` statements when privileges are not available

---

## 🗂 Topics Covered
1. **Complex SELECT for views** – Multi-table joins, aggregation, and grouping  
2. **Abstraction & Security** – Hiding sensitive columns while exposing public data  
3. **Simulating Views** – Running queries directly without creating persistent views

---

## ⚠️ Privilege Limitation
The `CREATE VIEW` command could not be executed due to **ORA-01031: insufficient privileges**.  
For demonstration, the queries below show the intended logic of the views and can be run directly.

---

## 🛠 Example Queries

### 1️⃣ Complex SELECT Example
```sql
SELECT P.PLAYER_NAME, 
       T.TEAM_NAME, 
       SUM(S.RUNS) AS Total_Runs,
       COUNT(DISTINCT S.MATCH_ID) AS Matches_Played
FROM PLAYER P
JOIN TEAM T ON P.TEAM_ID = T.TEAM_ID
LEFT JOIN SCORE S ON P.PLAYER_ID = S.PLAYER_ID
GROUP BY P.PLAYER_NAME, T.TEAM_NAME;
