SQL> SELECT * FROM TEAM;

   TEAM_ID TEAM_NAME                                          CAP_NAME                                           HOME_GROUND
---------- -------------------------------------------------- --------------------------------------
         1 Chennai Super Kings                                Ruturaj Gaikwad                                    M. A. Chidambaram Stadium
         2 Mumbai Indians                                     Hardik Pandya                                      Wankhede Stadium
         3 Royal Challengers Bangalore                        Faf du Plessis                                     M. Chinnaswamy Stadium
         4 Kolkata Knight Riders                              Shreyas Iyer                                       Eden Gardens
         5 Sunrisers Hyderabad                                Kane Williamson                                    Rajiv Gandhi International Stadium

SQL> SELECT TEAM_NAME, CAP_NAME FROM TEAM;

TEAM_NAME                                          CAP_NAME
-------------------------------------------------- -------------------------------------------------
Chennai Super Kings                                Ruturaj Gaikwad
Mumbai Indians                                     Hardik Pandya
Royal Challengers Bangalore                        Faf du Plessis
Kolkata Knight Riders                              Shreyas Iyer
Sunrisers Hyderabad                                Kane Williamson

SQL> SELECT PLAYER_NAME, ROLE
  2  FROM PLAYER
  3  WHERE ROLE = 'Batsman'
  4* AND TEAM_ID = (SELECT TEAM_ID FROM TEAM WHERE TEAM_NAME = 'Chennai Super Kings');

PLAYER_NAME                                        ROLE
-------------------------------------------------- ------------------------------
Ruturaj Gaikwad                                    Batsman

SQL> SELECT PLAYER_NAME, TEAM_ID
  2  FROM PLAYER
  3* WHERE TEAM_ID = 2 OR TEAM_ID = 3

PLAYER_NAME                                           TEAM_ID
-------------------------------------------------- ----------
Hardik Pandya                                               2
Suryakumar Yadav                                            2
Virat Kohli                                                 3
Faf du Plessis                                              3

SQL> SELECT PLAYER_NAME
  2  FROM PLAYER
  3  WHERE PLAYER_NAME LIKE 'S%';

PLAYER_NAME
--------------------------------------------------
Suryakumar Yadav
Shreyas Iyer

SQL> SELECT PLAYER_ID, RUNS
  2  FROM SCORE
  3  WHERE RUNS BETWEEN 40 AND 80;

 PLAYER_ID       RUNS
---------- ----------
         1         45
         2         60
         3         50
         5         75
         6         40
         7         55
         3         65
         4         80
         7         45
         9         45

10 rows selected.

SQL> SELECT PLAYER_NAME, DOB
  2  FROM PLAYER
  3  ORDER BY DOB DESC;

PLAYER_NAME                                        DOB
-------------------------------------------------- ---------
Abdul Samad
Ruturaj Gaikwad                                    31-JAN-97
Shreyas Iyer                                       06-DEC-94
Hardik Pandya                                      11-OCT-93
Suryakumar Yadav                                   14-SEP-90
Virat Kohli                                        05-NOV-88
Andre Russell                                      29-APR-88
Faf du Plessis                                     13-JUL-84
MS Dhoni                                           07-JUL-81

9 rows selected.

SQL> SELECT M.MATCH_ID, M.MATCH_DATE, T.TEAM_NAME AS WINNER
  2  FROM MATCHES M
  3  JOIN TEAM T ON M.WINNER_TEAM_ID = T.TEAM_ID
  4  ORDER BY M.MATCH_DATE, WINNER;

  MATCH_ID MATCH_DAT WINNER
---------- --------- --------------------------------------------------
         1 20-MAR-25 Chennai Super Kings
         2 21-MAR-25 Royal Challengers Bangalore
         3 23-MAR-25 Mumbai Indians
