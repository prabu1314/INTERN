SQL> SELECT PLAYER_NAME
  2  FROM PLAYER
  3  WHERE PLAYER_ID IN (
  4      SELECT PLAYER_ID
  5      FROM SCORE
  6      GROUP BY PLAYER_ID
  7      HAVING AVG(RUNS) > (
  8          SELECT AVG(RUNS) FROM SCORE
  9      )
 10  );

PLAYER_NAME
--------------------------------------------------
Ruturaj Gaikwad
Suryakumar Yadav
Virat Kohli
Hardik Pandya

SQL> SELECT PLAYER_NAME,
  2         (SELECT SUM(RUNS) FROM SCORE S WHERE S.PLAYER_ID = P.PLAYER_ID) AS Total_Runs
  3  FROM PLAYER P;

PLAYER_NAME                                        TOTAL_RUNS
-------------------------------------------------- ----------
MS Dhoni                                                   45
Ruturaj Gaikwad                                            60
Hardik Pandya                                             115
Suryakumar Yadav                                          110
Virat Kohli                                                75
Faf du Plessis                                             40
Shreyas Iyer                                              100
Andre Russell                                              25
Abdul Samad                                                45

9 rows selected.

SQL> SELECT PLAYER_ID, MAX(TotalRuns) AS Highest_Runs
  2  FROM (
  3      SELECT PLAYER_ID, SUM(RUNS) AS TotalRuns
  4      FROM SCORE
  5      GROUP BY PLAYER_ID
  6  ) PlayerRuns
  7  GROUP BY PLAYER_ID;

 PLAYER_ID HIGHEST_RUNS
---------- ------------
         1           45
         6           40
         2           60
         4          110
         5           75
         8           25
         3          115
         7          100
         9           45

9 rows selected.

SQL> SELECT PLAYER_NAME
  2  FROM PLAYER P
  3  WHERE EXISTS (
  4      SELECT 1
  5      FROM SCORE S
  6      WHERE S.PLAYER_ID = P.PLAYER_ID
  7        AND S.RUNS >= 50
  8  );

PLAYER_NAME
--------------------------------------------------
Ruturaj Gaikwad
Hardik Pandya
Virat Kohli
Shreyas Iyer
Suryakumar Yadav
