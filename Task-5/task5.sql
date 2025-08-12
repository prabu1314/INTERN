SQL> SELECT P.PLAYER_NAME, T.TEAM_NAME
  2  FROM PLAYER P
  3  INNER JOIN TEAM T ON P.TEAM_ID = T.TEAM_ID;

PLAYER_NAME                                        TEAM_NAME
-------------------------------------------------- -------------------------------------------------
MS Dhoni                                           Chennai Super Kings
Ruturaj Gaikwad                                    Chennai Super Kings
Hardik Pandya                                      Mumbai Indians
Suryakumar Yadav                                   Mumbai Indians
Virat Kohli                                        Royal Challengers Bangalore
Faf du Plessis                                     Royal Challengers Bangalore
Shreyas Iyer                                       Kolkata Knight Riders
Andre Russell                                      Kolkata Knight Riders
Abdul Samad                                        Sunrisers Hyderabad

9 rows selected.

SQL> SELECT P.PLAYER_NAME, S.RUNS, S.WICKETS, S.CATCHES
  2  FROM PLAYER P
  3  LEFT JOIN SCORE S ON P.PLAYER_ID = S.PLAYER_ID;

PLAYER_NAME                                              RUNS    WICKETS    CATCHES
-------------------------------------------------- ---------- ---------- ----------
MS Dhoni                                                   45          0          1
Ruturaj Gaikwad                                            60          0          0
Hardik Pandya                                              50          0          0
Suryakumar Yadav                                           30          0          1
Virat Kohli                                                75          0          0
Faf du Plessis                                             40          0          1
Shreyas Iyer                                               55          0          0
Andre Russell                                              25          2          1
Hardik Pandya                                              65          0          0
Suryakumar Yadav                                           80          0          0
Shreyas Iyer                                               45          0          0
Abdul Samad                                                45

12 rows selected.

SQL> SELECT S.SCORE_ID, P.PLAYER_NAME, S.RUNS, S.WICKETS
  2  FROM PLAYER P
  3  RIGHT JOIN SCORE S ON P.PLAYER_ID = S.PLAYER_ID;

  SCORE_ID PLAYER_NAME                                              RUNS    WICKETS
---------- -------------------------------------------------- ---------- ----------
         1 MS Dhoni                                                   45          0
         2 Ruturaj Gaikwad                                            60          0
         9 Hardik Pandya                                              65          0
         3 Hardik Pandya                                              50          0
        10 Suryakumar Yadav                                           80          0
         4 Suryakumar Yadav                                           30          0
         5 Virat Kohli                                                75          0
         6 Faf du Plessis                                             40          0
        11 Shreyas Iyer                                               45          0
         7 Shreyas Iyer                                               55          0
         8 Andre Russell                                              25          2
        13 Abdul Samad                                                45

12 rows selected.

SQL> SELECT P.PLAYER_NAME, S.RUNS, S.WICKETS
  2  FROM PLAYER P
  3  LEFT JOIN SCORE S ON P.PLAYER_ID = S.PLAYER_ID
  4  UNION
  5  SELECT P.PLAYER_NAME, S.RUNS, S.WICKETS
  6  FROM PLAYER P
  7  RIGHT JOIN SCORE S ON P.PLAYER_ID = S.PLAYER_ID;

PLAYER_NAME                                              RUNS    WICKETS
-------------------------------------------------- ---------- ----------
Abdul Samad                                                45
Andre Russell                                              25          2
Faf du Plessis                                             40          0
Hardik Pandya                                              50          0
Hardik Pandya                                              65          0
MS Dhoni                                                   45          0
Ruturaj Gaikwad                                            60          0
Shreyas Iyer                                               45          0
Shreyas Iyer                                               55          0
Suryakumar Yadav                                           30          0
Suryakumar Yadav                                           80          0
Virat Kohli                                                75          0

12 rows selected.

SQL> SELECT P.PLAYER_NAME, S.RUNS, S.WICKETS
  2  FROM PLAYER P
  3  LEFT JOIN SCORE S ON P.PLAYER_ID = S.PLAYER_ID
  4  UNION
  5  SELECT P.PLAYER_NAME, S.RUNS, S.WICKETS
  6  FROM PLAYER P
  7  RIGHT JOIN SCORE S ON P.PLAYER_ID = S.PLAYER_ID;

PLAYER_NAME                                              RUNS    WICKETS
-------------------------------------------------- ---------- ----------
Abdul Samad                                                45
Andre Russell                                              25          2
Faf du Plessis                                             40          0
Hardik Pandya                                              50          0
Hardik Pandya                                              65          0
MS Dhoni                                                   45          0
Ruturaj Gaikwad                                            60          0
Shreyas Iyer                                               45          0
Shreyas Iyer                                               55          0
Suryakumar Yadav                                           30          0
Suryakumar Yadav                                           80          0
Virat Kohli                                                75          0

12 rows selected.
