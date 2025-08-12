SQL> SELECT P.PLAYER_NAME, SUM(S.RUNS) AS TOTAL_RUNS
  2  FROM SCORE S
  3  JOIN PLAYER P ON S.PLAYER_ID = P.PLAYER_ID
  4  GROUP BY P.PLAYER_NAME;

PLAYER_NAME                                        TOTAL_RUNS
-------------------------------------------------- ----------
Faf du Plessis                                             40
Andre Russell                                              25
Suryakumar Yadav                                          110
Hardik Pandya                                             115
MS Dhoni                                                   45
Abdul Samad                                                45
Shreyas Iyer                                              100
Ruturaj Gaikwad                                            60
Virat Kohli                                                75

9 rows selected.

SQL> SELECT P.PLAYER_NAME, SUM(S.WICKETS) AS TOTAL_WICKETS
  2  FROM SCORE S
  3  JOIN PLAYER P ON S.PLAYER_ID = P.PLAYER_ID
  4  GROUP BY P.PLAYER_NAME;

PLAYER_NAME                                        TOTAL_WICKETS
-------------------------------------------------- -------------
Faf du Plessis                                                 0
Andre Russell                                                  2
Suryakumar Yadav                                               0
Hardik Pandya                                                  0
MS Dhoni                                                       0
Abdul Samad
Shreyas Iyer                                                   0
Ruturaj Gaikwad                                                0
Virat Kohli                                                    0

9 rows selected.

SQL> SELECT T.TEAM_NAME, AVG(S.RUNS) AS AVG_RUNS
  2  FROM SCORE S
  3  JOIN PLAYER P ON S.PLAYER_ID = P.PLAYER_ID
  4  JOIN TEAM T ON P.TEAM_ID = T.TEAM_ID
  5  GROUP BY T.TEAM_NAME;

TEAM_NAME                                            AVG_RUNS
-------------------------------------------------- ----------
Chennai Super Kings                                      52.5
Sunrisers Hyderabad                                        45
Royal Challengers Bangalore                              57.5
Kolkata Knight Riders                              41.6666667
Mumbai Indians                                          56.25

SQL> SELECT T.TEAM_NAME, COUNT(*) AS MATCHES_PLAYED
  2  FROM MATCHES M
  3  JOIN TEAM T ON M.TEAM1_ID = T.TEAM_ID OR M.TEAM2_ID = T.TEAM_ID
  4  GROUP BY T.TEAM_NAME;

TEAM_NAME                                          MATCHES_PLAYED
-------------------------------------------------- --------------
Chennai Super Kings                                             2
Sunrisers Hyderabad                                             1
Royal Challengers Bangalore                                     1
Kolkata Knight Riders                                           2
Mumbai Indians                                                  2

SQL> SELECT P.PLAYER_NAME, SUM(S.RUNS) AS TOTAL_RUNS
  2  FROM SCORE S
  3  JOIN PLAYER P ON S.PLAYER_ID = P.PLAYER_ID
  4  GROUP BY P.PLAYER_NAME
  5  HAVING SUM(S.RUNS) > 100;

PLAYER_NAME                                        TOTAL_RUNS
-------------------------------------------------- ----------
Suryakumar Yadav                                          110
Hardik Pandya                                             115

SQL> SELECT T.TEAM_NAME, AVG(S.RUNS) AS AVG_RUNS
  2  FROM SCORE S
  3  JOIN PLAYER P ON S.PLAYER_ID = P.PLAYER_ID
  4  JOIN TEAM T ON P.TEAM_ID = T.TEAM_ID
  5  GROUP BY T.TEAM_NAME
  6  HAVING AVG(S.RUNS) > 50;

TEAM_NAME                                            AVG_RUNS
-------------------------------------------------- ----------
Chennai Super Kings                                      52.5
Royal Challengers Bangalore                              57.5
Mumbai Indians                                          56.25
