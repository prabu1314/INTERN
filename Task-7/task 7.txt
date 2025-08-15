SQL> SELECT P.PLAYER_NAME, 
  2         T.TEAM_NAME, 
  3         SUM(S.RUNS) AS Total_Runs,
  4         COUNT(DISTINCT S.MATCH_ID) AS Matches_Played
  5  FROM PLAYER P
  6  JOIN TEAM T ON P.TEAM_ID = T.TEAM_ID
  7  LEFT JOIN SCORE S ON P.PLAYER_ID = S.PLAYER_ID
  8  GROUP BY P.PLAYER_NAME, T.TEAM_NAME;

PLAYER_NAME                                        TEAM_NAME                                          TOTAL_RUNS MATCHES_PLAYED
-------------------------------------------------- -------------------------------------------------
MS Dhoni                                           Chennai Super Kings                                        45              1
Abdul Samad                                        Sunrisers Hyderabad                                        45              1
Virat Kohli                                        Royal Challengers Bangalore                                75              1
Shreyas Iyer                                       Kolkata Knight Riders                                     100              2
Andre Russell                                      Kolkata Knight Riders                                      25              1
Hardik Pandya                                      Mumbai Indians                                            115              2
Faf du Plessis                                     Royal Challengers Bangalore                                40              1
Ruturaj Gaikwad                                    Chennai Super Kings                                        60              1
Suryakumar Yadav                                   Mumbai Indians                                            110              2

9 rows selected.

SQL> SELECT P.PLAYER_NAME, 
  2         P.ROLE, 
  3         T.TEAM_NAME
  4  FROM PLAYER P
  5  JOIN TEAM T ON P.TEAM_ID = T.TEAM_ID;

PLAYER_NAME                                        ROLE                           TEAM_NAME
-------------------------------------------------- ------------------------------ ------------------
MS Dhoni                                           Wicketkeeper Batsman           Chennai Super Kings
Ruturaj Gaikwad                                    Batsman                        Chennai Super Kings
Hardik Pandya                                      All-rounder                    Mumbai Indians
Suryakumar Yadav                                   Batsman                        Mumbai Indians
Virat Kohli                                        Batsman                        Royal Challengers Bangalore
Faf du Plessis                                     Batsman                        Royal Challengers Bangalore
Shreyas Iyer                                       Batsman                        Kolkata Knight Riders
Andre Russell                                      All-rounder                    Kolkata Knight Riders
Abdul Samad                                        All-rounder                    Sunrisers Hyderabad

9 rows selected.
