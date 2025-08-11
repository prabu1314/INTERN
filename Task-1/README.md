# 🏏 IPL Cricket Database – Oracle SQL

## 📌 Project Overview
This project is part of the **SQL Developer Internship – Task 1**.  
It involves designing and implementing a relational database schema for managing **IPL Cricket teams, players, matches, and scores** using **Oracle SQL\*Plus**.

The database stores:
- IPL teams with captains and home grounds
- Players with personal and role details
- Matches with participating teams and winners
- Scores with runs, wickets, and catches for each player

---

## 🎯 Objective
- Design a **well-structured** relational database
- Identify entities and relationships
- Create SQL tables with **primary/foreign keys**
- Insert sample IPL data for demonstration
- Generate an **ER diagram**
- Write **queries** for insights

---

## 🗂 Entities & Relationships

### **Entities**
1. **TEAM** – Stores team details including captain
2. **PLAYER** – Stores player details and their team
3. **MATCHES** – Stores match details including venue and winner
4. **SCORE** – Stores player statistics for each match

### **Relationships**
- One **team** has many **players** (1:N)
- One **match** involves two **teams** (M:N resolved through MATCHES table)
- One **player** can have scores in multiple matches (M:N resolved through SCORE table)

---

## 🛠 Database Schema (DDL)

```sql
-- TEAM Table
CREATE TABLE TEAM (
    TEAM_ID NUMBER PRIMARY KEY,
    TEAM_NAME VARCHAR(50) NOT NULL,
    CAP_NAME VARCHAR(50),
    HOME_GROUND VARCHAR(50)
);

-- PLAYER Table
CREATE TABLE PLAYER (
    PLAYER_ID NUMBER PRIMARY KEY,
    PLAYER_NAME VARCHAR(50) NOT NULL,
    DOB DATE,
    ROLE VARCHAR(30),
    TEAM_ID NUMBER REFERENCES TEAM(TEAM_ID)
);

-- MATCHES Table
CREATE TABLE MATCHES (
    MATCH_ID NUMBER(4) PRIMARY KEY,
    MATCH_DATE DATE,
    VENUE VARCHAR(40),
    TEAM1_ID NUMBER REFERENCES TEAM(TEAM_ID),
    TEAM2_ID NUMBER REFERENCES TEAM(TEAM_ID),
    WINNER_TEAM_ID NUMBER REFERENCES TEAM(TEAM_ID)
);

-- SCORE Table
CREATE TABLE SCORE (
    SCORE_ID NUMBER PRIMARY KEY,
    MATCH_ID NUMBER REFERENCES MATCHES(MATCH_ID),
    PLAYER_ID NUMBER REFERENCES PLAYER(PLAYER_ID),
    RUNS NUMBER,
    WICKETS NUMBER,
    CATCHES NUMBER
);
