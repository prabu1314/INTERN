SQL> CREATE OR REPLACE PROCEDURE GetPlayerStats (
  2      p_player_id IN NUMBER
  3  )
  4  AS
  5      v_runs    NUMBER;
  6      v_wickets NUMBER;
  7      v_catches NUMBER;
  8  BEGIN
  9      SELECT NVL(SUM(runs), 0),
 10             NVL(SUM(wickets), 0),
 11             NVL(SUM(catches), 0)
 12      INTO v_runs, v_wickets, v_catches
 13      FROM SCORE
 14      WHERE player_id = p_player_id;
 15  
 16      DBMS_OUTPUT.PUT_LINE('Runs: ' || v_runs);
 17      DBMS_OUTPUT.PUT_LINE('Wickets: ' || v_wickets);
 18      DBMS_OUTPUT.PUT_LINE('Catches: ' || v_catches);
 19  END;
 20  /

Procedure created.

SQL> SET SERVEROUTPUT ON;
SQL> EXEC GetPlayerStats(1);
Runs: 45
Wickets: 0
Catches: 1

PL/SQL procedure successfully completed.

SQL> CREATE OR REPLACE FUNCTION GetTotalRuns (
  2      p_player_id IN NUMBER
  3  ) RETURN NUMBER
  4  AS
  5      v_total_runs NUMBER;
  6  BEGIN
  7      SELECT NVL(SUM(runs), 0)
  8      INTO v_total_runs
  9      FROM SCORE
 10      WHERE player_id = p_player_id;
 11  
 12      RETURN v_total_runs;
 13  END;
 14  /

Function created.

SQL> SELECT PLAYER_NAME, GetTotalRuns(PLAYER_ID) AS Total_Runs
  2  FROM PLAYER;

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

