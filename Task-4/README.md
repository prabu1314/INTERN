# 🏏 IPL Cricket Database – Task 4: Aggregate Functions and Grouping

## 📌 Overview
This is **Task 4** focusing on summarizing and analyzing match data in the IPL Cricket Database.  
The task demonstrates how to use aggregate functions like `SUM`, `COUNT`, and `AVG` along with `GROUP BY` and `HAVING` clauses to categorize and filter aggregated results.

---

## 🎯 Objective
- Apply aggregate functions to numeric columns  
- Use `GROUP BY` to group results by team, player, or match  
- Filter aggregated data using `HAVING`  
- Summarize performance statistics for players and teams  

---

## 🗂 Topics Covered
1. **SUM()** – Adding numeric values (e.g., total runs, wickets)  
2. **COUNT()** – Counting records in a group  
3. **AVG()** – Calculating average values  
4. **GROUP BY** – Grouping data by one or more columns  
5. **HAVING** – Filtering grouped results  

---

## 🛠 Example Operations

### SUM Example
```sql
-- Total runs scored by each player
SELECT PLAYER_ID, SUM(RUNS) AS Total_Runs
FROM SCORE
GROUP BY PLAYER_ID;
```

### AVG Example
```sql
-- Average runs scored per player
SELECT PLAYER_ID, AVG(RUNS) AS Avg_Runs
FROM SCORE
GROUP BY PLAYER_ID;
```
