SQL> CREATE TABLE TEAM(TEAM_ID NUMBER PRIMARY KEY,
  2 TEAM_NAME VARCHAR(50) NOT NULL,
  3 CAP_NAME VARCHAR(50),
  4 HOME_GROUND VARCHAR(50));

Table created.

SQL> CREATE TABLE PLAYER(PLAYER_ID NUMBER PRIMARY KEY,
   2 PLAYER_NAME VARCHAR(50) NOT NULL,
   3 DOB DATE,ROLE VARCHAR(30),
   4 TEAM_ID NUMBER REFERENCES TEAM(TEAM_ID));

Table created.

SQL> CREATE TABLE MATCHES(
  2  MATCH_ID NUMBER(4) PRIMARY KEY,
  3  MATCH_DATE DATE,
  4  VENUE VARCHAR(40),
  5  TEAM1_ID NUMBER REFERENCES TEAM(TEAM_ID),
  6  TEAM2_ID NUMBER REFERENCES TEAM(TEAM_ID),
  7  WINNER_TEAM_ID NUMBER REFERENCES TEAM(TEAM_ID));

Table created.

SQL> CREATE TABLE SCORE(SCORE_ID NUMBER PRIMARY KEY,
  2  MATCH_ID NUMBER REFERENCES MATCHES(MATCH_ID),
  3  PLAYER_ID NUMBER REFERENCES PLAYER(PLAYER_ID),
  4  RUNS NUMBER,WICKETS NUMBER,CATCHES NUMBER);

Table created.

SQL> INSERT INTO TEAM VALUES (1, 'Chennai Super Kings', 'Ruturaj Gaikwad', 'M. A. Chidambaram Stadium');

1 row created.

SQL> INSERT INTO TEAM VALUES (2, 'Mumbai Indians', 'Hardik Pandya', 'Wankhede Stadium');

1 row created.

SQL> INSERT INTO TEAM VALUES (3, 'Royal Challengers Bangalore', 'Faf du Plessis', 'M. Chinnaswamy Stadium');

1 row created.

SQL> INSERT INTO TEAM VALUES (4, 'Kolkata Knight Riders', 'Shreyas Iyer', 'Eden Gardens');

1 row created.

SQL> INSERT INTO PLAYER VALUES (1, 'MS Dhoni', DATE '1981-07-07', 'Wicketkeeper Batsman', 1);

1 row created.

SQL> INSERT INTO PLAYER VALUES (2, 'Ruturaj Gaikwad', DATE '1997-01-31', 'Batsman', 1);

1 row created.

SQL> INSERT INTO PLAYER VALUES (3, 'Hardik Pandya', DATE '1993-10-11', 'All-rounder', 2);

1 row created.

SQL> INSERT INTO PLAYER VALUES (4, 'Suryakumar Yadav', DATE '1990-09-14', 'Batsman', 2);

1 row created.

SQL> INSERT INTO PLAYER VALUES (5, 'Virat Kohli', DATE '1988-11-05', 'Batsman', 3);

1 row created.

SQL> INSERT INTO PLAYER VALUES (6, 'Faf du Plessis', DATE '1984-07-13', 'Batsman', 3);

1 row created.

SQL> INSERT INTO PLAYER VALUES (7, 'Shreyas Iyer', DATE '1994-12-06', 'Batsman', 4);

1 row created.

SQL> INSERT INTO PLAYER VALUES (8, 'Andre Russell', DATE '1988-04-29', 'All-rounder', 4);

1 row created.

SQL> INSERT INTO MATCHES VALUES (1, DATE '2025-03-20', 'M. A. Chidambaram Stadium', 1, 2, 1);

1 row created.

SQL> INSERT INTO MATCHES VALUES (2, DATE '2025-03-21', 'M. Chinnaswamy Stadium', 3, 4, 3);

1 row created.

SQL> INSERT INTO MATCHES VALUES (3, DATE '2025-03-23', 'Wankhede Stadium', 2, 4, 2);

1 row created.
 
SQL> INSERT INTO SCORE VALUES (1, 1, 1, 45, 0, 1); 

1 row created.
 
SQL> INSERT INTO SCORE VALUES (2, 1, 2, 60, 0, 0);

1 row created.

SQL> INSERT INTO SCORE VALUES (3, 1, 3, 50, 0, 0);

1 row created.

SQL> INSERT INTO SCORE VALUES (4, 1, 4, 30, 0, 1);

1 row created.

SQL> INSERT INTO SCORE VALUES (5, 2, 5, 75, 0, 0);

1 row created.

SQL> INSERT INTO SCORE VALUES (6, 2, 6, 40, 0, 1);

1 row created.

SQL> INSERT INTO SCORE VALUES (7, 2, 7, 55, 0, 0);

1 row created.

SQL> INSERT INTO SCORE VALUES (8, 2, 8, 25, 2, 1);

1 row created.

SQL> INSERT INTO SCORE VALUES (9, 3, 3, 65, 0, 0);

1 row created.

SQL> INSERT INTO SCORE VALUES (10, 3, 4, 80, 0, 0);

1 row created.

SQL> INSERT INTO SCORE VALUES (11, 3, 7, 45, 0, 0);

1 row created.

SQL> 

SQL> SELECT * FROM TEAM;

   TEAM_ID TEAM_NAME                                          CAP_NAME                                           HOME_GROUND
---------- -------------------------------------------------- --------------------------------------
         1 Chennai Super Kings                                Ruturaj Gaikwad                                    M. A. Chidambaram Stadium
         2 Mumbai Indians                                     Hardik Pandya                                      Wankhede Stadium
         3 Royal Challengers Bangalore                        Faf du Plessis                                     M. Chinnaswamy Stadium
         4 Kolkata Knight Riders                              Shreyas Iyer                                       Eden Gardens

SQL> SELECT * FROM PLAYER;

 PLAYER_ID PLAYER_NAME                                        DOB       ROLE                              TEAM_ID
---------- -------------------------------------------------- --------- ----------------------------
         1 MS Dhoni                                           07-JUL-81 Wicketkeeper Batsman                    1
         2 Ruturaj Gaikwad                                    31-JAN-97 Batsman                                 1
         3 Hardik Pandya                                      11-OCT-93 All-rounder                             2
         4 Suryakumar Yadav                                   14-SEP-90 Batsman                                 2
         5 Virat Kohli                                        05-NOV-88 Batsman                                 3
         6 Faf du Plessis                                     13-JUL-84 Batsman                                 3
         7 Shreyas Iyer                                       06-DEC-94 Batsman                                 4
         8 Andre Russell                                      29-APR-88 All-rounder                             4

8 rows selected.

SQL> SELECT * FROM MATCHES;

  MATCH_ID MATCH_DAT VENUE                                      TEAM1_ID   TEAM2_ID WINNER_TEAM_ID
---------- --------- ---------------------------------------- ---------- ---------- --------------
         1 20-MAR-25 M. A. Chidambaram Stadium                         1          2              1
         2 21-MAR-25 M. Chinnaswamy Stadium                            3          4              3
         3 23-MAR-25 Wankhede Stadium                                  2          4              2

SQL> SELECT * FROM SCORE;

  SCORE_ID   MATCH_ID  PLAYER_ID       RUNS    WICKETS    CATCHES
---------- ---------- ---------- ---------- ---------- ----------
         1          1          1         45          0          1
         2          1          2         60          0          0
         3          1          3         50          0          0
         4          1          4         30          0          1
         5          2          5         75          0          0
         6          2          6         40          0          1
         7          2          7         55          0          0
         8          2          8         25          2          1
         9          3          3         65          0          0
        10          3          4         80          0          0
        11          3          7         45          0          0

11 rows selected.


