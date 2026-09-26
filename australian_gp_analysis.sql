-- AUSTRALIAN GRAND PRIX DRIVER PREFORMANCE ANALYSIS --
-- SQL Portfolio Project --
-- ----------------------------------------------------
-- Project Objective: --
-- Analyze driver performance throughout the Australian Grand Prix weekend using practice, qualifying, race finish, and points data --
-- ----------------------------------------------------
-- CREATE TABLE --
-- ----------------------------------------------------
CREATE TABLE Australia_GP (
  Driver_Number INTEGER PRIMARY KEY,
  First_Name TEXT ,
  Last_Name TEXT,
  PRACTICE_1 INTEGER,
  PRACTICE_2 INTEGER,
  PRACTICE_3 INTEGER,
  Qualifying_Position INTEGER,
  FINISHED INTEGER,
  POINTS INTEGER
);
-- ----------------------------------------------------
-- INSERT DATA --
-- ----------------------------------------------------
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (12, 'KIMI', 'ANTONELLI', 8, 2, 7, 2, 2, 18);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (63, 'George', 'Russell', 7, 3, 1, 1, 1, 25);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (16, 'Charles', 'Leclerc', 1, 5, 3, 4, 3, 15);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (44, 'Lewis', 'Hamilton', 2, 4, 2, 7, 4, 12);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (1, 'Lando', 'Norris', 19, 7, 8, 6, 5, 10);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (81, 'Oscar', 'Piastri', 6, 1, 4, 5, NULL, 0);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (3, 'Max', 'Verstappen', 3, 6, 6, NULL, 6, 8);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (6, 'Isack', 'Hadjar', 4, 9, 5, 3, NULL, 0);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (30, 'Liam', 'Lawson', 13, 13, 12, 8, 13, 0);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (41, 'Arvid', 'Lindblad', 5, 8, 11, 9, 8, 4);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (10, 'Pierre', 'Gasly', 18, 16, 15, 14, 10, 1);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (43, 'Franco', 'Colapinto', 16, 18, 16, 16, 14, 0);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (31, 'Esteban', 'Ocon', 11, 10, 13, 13, 11, 0);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (87, 'Oliver', 'Bearman', 14, 11, 10, 12, 7, 6);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (27, 'Nico', 'Hulkenberg', 10, 12, 14, 11, NULL, 0);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (5, 'Gabriel', 'Bortoleto', 9, 14, 9, 10, 9, 2);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (55, 'Carlos', 'Sainz', 12, 17, 21, NULL, 15, 0);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (23, 'Alexander', 'Albon', 15, 15, 17, 15, 12, 0);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (14, 'Fernando', 'Alonso', NULL, 20, 18, 17, NULL, 0);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (18, 'Lance', 'Stroll', 21, 21, NULL, NULL, NULL, 0);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (11, 'Sergio', 'Perez', 20, 22, 20, 18, 16, 0);
INSERT INTO Australia_GP (Driver_Number, First_Name, Last_Name, Practice_1, PRACTICE_2, PRACTICE_3, Qualifying_Position, FINISHED, POINTS)
VALUES (77, 'Valtteri', 'Bottas', 17, 19, 19, 19, NULL, 0);
-- ----------------------------------------------------
-- SECTION 1: RACE RESULTS AND POINTS 
-- ----------------------------------------------------
SELECT * FROM Australia_GP;
-- Which driver scored the most points? --
SELECT First_Name, Last_Name, POINTS
FROM Australia_GP
ORDER BY POINTS DESC 
LIMIT 1;
-- Who won the Australian Grand Prix? --
SELECT First_Name, Last_Name, Driver_Number FROM Australia_GP
WHERE FINISHED = 1; 
-- Which drivers finished in the top 5? --
SELECT First_Name, Last_Name, FINISHED FROM Australia_GP
WHERE FINISHED < 6
ORDER BY FINISHED ASC
Limit 5;
-- Which drivers scored zero points? --
SELECT First_Name, Last_Name, POINTS FROM Australia_GP
WHERE POINTS = 0; 
-- Which drivers did not finish the race? --
SELECT First_Name, Last_Name, FINISHED FROM Australia_GP
WHERE FINISHED IS NULL;
-- How many drivers scored points? --
SELECT COUNT(*) AS Drivers_Who_Scored_Points
FROM Australia_GP
WHERE POINTS > 0;
-- ----------------------------------------------------
-- SECTION 2: PRACTICE & QUALIFYING --
-- ----------------------------------------------------
-- Who had the best result in Practice 1, Practice 2, and Practice 3? --
SELECT First_Name, Last_Name, 'PRACTICE_1' AS PRACTICE 
FROM Australia_GP
WHERE PRACTICE_1 =1 

UNION ALL 

SELECT First_Name, Last_Name, 'PRACTICE_2' AS PRACTICE 
FROM Australia_GP
WHERE PRACTICE_2 =1

UNION ALL

SELECT First_Name, Last_Name, 'PRACTICE_3' AS PRACTICE 
FROM Australia_GP
WHERE PRACTICE_3 =1; 
-- Which driver had the best average practice position? --
SELECT First_Name, Last_Name, PRACTICE_1, PRACTICE_2, PRACTICE_3, ROUND((PRACTICE_1 + PRACTICE_2 + PRACTICE_3)/ 3.0, 2) AS Average_Practice_Position 
FROM Australia_GP
WHERE PRACTICE_1 IS NOT NULL
  AND PRACTICE_2 IS NOT NULL
  AND PRACTICE_3 IS NOT NULL
ORDER BY Average_Practice_Position ASC
LIMIT 1; 
-- Which drivers qualified in the top 5? --
SELECT First_Name, Last_Name, Qualifying_Position
FROM Australia_GP
WHERE Qualifying_Position < 6
ORDER BY Qualifying_Position ASC;
-- What was the average finishing position of drivers who completed the race? --
SELECT ROUND(AVG(FINISHED)) AS Average_Finished_Position
FROM Australia_GP
WHERE FINISHED IS NOT NULL;
-- What was the average qualifying position? --
SELECT ROUND(AVG(Qualifying_Position)) AS Average_Qualifying_Position
FROM Australia_GP
WHERE Qualifying_Position IS NOT NULL;
-- ----------------------------------------------------
-- SECTION 4: DRIVER PERFORMANCE ANALYSIS --
-- ----------------------------------------------------
-- Which driver gained the most positions from qualifying to the race? --
SELECT First_Name, 
Last_Name, 
Qualifying_Position, 
FINISHED,
Qualifying_Position - FINISHED AS Positions_Gained
FROM Australia_GP
WHERE Qualifying_Position IS NOT NULL
AND FINISHED IS NOT NULL
ORDER BY Positions_Gained DESC
LIMIT 1;
-- Which driver lost the most positions from qualifying to the race? --
SELECT First_Name, 
Last_Name, 
Qualifying_Position, 
FINISHED,
FINISHED - Qualifying_Position AS Positions_Lost
FROM Australia_GP
WHERE Qualifying_Position IS NOT NULL
AND FINISHED IS NOT NULL
ORDER BY Positions_Lost DESC
LIMIT 1;
-- Did drivers who qualified in the top 5 generally finish in the top 5? --
SELECT First_Name, Last_Name, Qualifying_Position, FINISHED
FROM Australia_GP
WHERE Qualifying_Position <=5
ORDER BY Qualifying_Position ASC; 
--  Which driver showed the biggest improvement from Practice 1 to their final race position? --
SELECT First_Name, Last_Name, PRACTICE_1, FINISHED,
  PRACTICE_1 - FINISHED AS Positions_Improved
FROM Australia_GP
WHERE PRACTICE_1 IS NOT NULL 
  AND FINISHED IS NOT NULL
ORDER BY Positions_Improved DESC
LIMIT 1;

-- ----------------------------------------------------
-- MISSING DATA --
-- ---------------------------------------------------
-- Which drivers had missing (NULL) qualifying or finishing results? -- 
SELECT First_Name, Last_Name, Qualifying_Position, FINISHED
FROM Australia_GP
WHERE Qualifying_Position IS NULL
  OR FINISHED IS NULL; 
-- ----------------------------------------------------
-- END Of ANALYSIS --
-- ----------------------------------------------------



























