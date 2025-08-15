# 🏏 IPL Cricket Database – Task 8: Stored Procedures and Functions

## 📌 Overview
This is **Task 8** focusing on **creating reusable SQL blocks** in the IPL Cricket Database using **stored procedures** and **functions**.  
These SQL program units allow you to modularize logic, reuse queries, and improve maintainability.

---

## 🎯 Objective
- Learn how to create **stored procedures** with parameters  
- Learn how to create **functions** that return values  
- Use conditional logic and SQL operations inside PL/SQL blocks  
- Execute and test stored procedures and functions in Oracle SQL Plus  

---

## 🗂 Topics Covered
1. **CREATE PROCEDURE** – Defining stored procedures  
2. **IN Parameters** – Passing values into procedures/functions  
3. **CREATE FUNCTION** – Creating reusable SQL functions  
4. **RETURN Values** – Returning calculated results from functions  
5. **DBMS_OUTPUT** – Displaying results in the console  

---

## 🛠 Example Operations

### 1️⃣ Stored Procedure Example
```sql
CREATE OR REPLACE PROCEDURE GetPlayerStats (
    p_player_id IN NUMBER
)
AS
    v_runs    NUMBER;
    v_wickets NUMBER;
    v_catches NUMBER;
BEGIN
    SELECT NVL(SUM(runs), 0),
           NVL(SUM(wickets), 0),
           NVL(SUM(catches), 0)
    INTO v_runs, v_wickets, v_catches
    FROM SCORE
    WHERE player_id = p_player_id;

    DBMS_OUTPUT.PUT_LINE('Runs: ' || v_runs);
    DBMS_OUTPUT.PUT_LINE('Wickets: ' || v_wickets);
    DBMS_OUTPUT.PUT_LINE('Catches: ' || v_catches);
END;
/
