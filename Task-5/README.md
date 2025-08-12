# 🏏 IPL Cricket Database – Task 5: SQL Joins (Inner, Left, Right, Full)

## 📌 Overview
This is **Task 5** focusing on **combining data from multiple tables** in the IPL Cricket Database.  
The task demonstrates how to use `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and `FULL OUTER JOIN` (via `UNION` in Oracle) to retrieve related data from different tables.

---

## 🎯 Objective
- Learn to merge data from two or more tables  
- Understand the differences between join types  
- Retrieve combined information from players, teams, matches, and scores  
- Use `FULL JOIN` simulation in Oracle with `UNION`  

---

## 🗂 Topics Covered
1. **INNER JOIN** – Retrieve only matching rows from both tables  
2. **LEFT JOIN** – All rows from the left table, plus matching rows from the right table  
3. **RIGHT JOIN** – All rows from the right table, plus matching rows from the left table  
4. **FULL OUTER JOIN** – All rows from both tables (in Oracle, simulated using `UNION`)  

---

## 🛠 Example Operations

###  INNER JOIN
```sql
-- Players with their team names
SELECT P.PLAYER_NAME, T.TEAM_NAME
FROM PLAYER P
INNER JOIN TEAM T ON P.TEAM_ID = T.TEAM_ID;
```
### FULL OUTER JOIN (Oracle Method)
```sql
-- All players and all scores
SELECT P.PLAYER_NAME, S.RUNS, S.WICKETS
FROM PLAYER P
LEFT JOIN SCORE S ON P.PLAYER_ID = S.PLAYER_ID
UNION
SELECT P.PLAYER_NAME, S.RUNS, S.WICKETS
FROM PLAYER P
RIGHT JOIN SCORE S ON P.PLAYER_ID = S.PLAYER_ID;
```

---
