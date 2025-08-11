SQL> INSERT INTO TEAM VALUES (5, 'Sunrisers Hyderabad', NULL, 'Rajiv Gandhi International Stadium');

1 row created.

SQL> INSERT INTO PLAYER VALUES (9, 'Abdul Samad', NULL, 'All-rounder', 5);

1 row created.

SQL> INSERT INTO PLAYER VALUES (10, 'Kane Williamson', DATE '1990-08-08', 'Batsman', 5);

1 row created.

SQL> INSERT INTO MATCHES VALUES (4, DATE '2025-03-25', 'Rajiv Gandhi International Stadium', 5, 1, NULL);

1 row created.

SQL> INSERT INTO SCORE VALUES (13, 4, 9, 35, NULL, NULL);

1 row created.

SQL> UPDATE TEAM
  2  SET CAP_NAME = 'Kane Williamson'
  3  WHERE TEAM_ID = 5;

1 row updated.

SQL> UPDATE SCORE
  2  SET RUNS = 45
  3  WHERE SCORE_ID = 13;

1 row updated.

SQL> DELETE FROM PLAYER
  2  WHERE PLAYER_ID = 10;

1 row deleted.

SQL> DELETE FROM MATCHES
  2  WHERE MATCH_ID = 4
  3  AND MATCH_ID NOT IN (SELECT DISTINCT MATCH_ID FROM SCORE);

0 rows deleted.

SQL> SELECT * FROM TEAM;

   TEAM_ID TEAM_NAME                                          CAP_NAME                                           HOME_GROUND
---------- -------------------------------------------------- --------------------------------------
         1 Chennai Super Kings                                Ruturaj Gaikwad                                    M. A. Chidambaram Stadium
         2 Mumbai Indians                                     Hardik Pandya                                      Wankhede Stadium
         3 Royal Challengers Bangalore                        Faf du Plessis                                     M. Chinnaswamy Stadium
         4 Kolkata Knight Riders                              Shreyas Iyer                                       Eden Gardens
         5 Sunrisers Hyderabad                                Kane Williamson                                    Rajiv Gandhi International Stadium

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
         9 Abdul Samad                                                  All-rounder                             5

9 rows selected.

SQL> SELECT * FROM MATCHES;

  MATCH_ID MATCH_DAT VENUE                                      TEAM1_ID   TEAM2_ID WINNER_TEAM_ID
---------- --------- ---------------------------------------- ---------- ---------- --------------
         1 20-MAR-25 M. A. Chidambaram Stadium                         1          2              1
         2 21-MAR-25 M. Chinnaswamy Stadium                            3          4              3
         3 23-MAR-25 Wankhede Stadium                                  2          4              2
         4 25-MAR-25 Rajiv Gandhi International Stadium                5          1

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
        13          4          9         45

12 rows selected.
