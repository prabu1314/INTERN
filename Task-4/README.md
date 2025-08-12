# Let's create the README.md file for Task 4
readme_content = """# 🏏 IPL Cricket Database – Task 4: Aggregate Functions & Grouping

## 📌 Overview
This is **Task 4** of the IPL Cricket Database project, focusing on **aggregate functions** and **grouping** to summarize and analyze match data.  
We apply functions like `SUM`, `COUNT`, and `AVG` along with `GROUP BY` and `HAVING` clauses.

---

## 🎯 Objective
- Use aggregate functions to summarize numeric data.
- Group results based on teams, players, or matches.
- Apply filters on aggregated results using `HAVING`.
- Gain insights from the stored cricket match data.

---

## 🗂 Topics Covered
1. **SUM** – Total runs, wickets, catches.
2. **COUNT** – Number of matches played by teams.
3. **AVG** – Average performance per player or team.
4. **GROUP BY** – Categorizing data by player, team, or match.
5. **HAVING** – Filtering aggregated results.

---

## 🛠 Example Queries

### 1️⃣ Total Runs Scored by Each Player
```sql
SELECT P.PLAYER_NAME, SUM(S.RUNS) AS TOTAL_RUNS
FROM SCORE S
JOIN PLAYER P ON S.PLAYER_ID = P.PLAYER_ID
GROUP BY P.PLAYER_NAME;
