# Australian Grand Prix

## Project Overview
This project uses SQL to analyze driver performance throughout the Australian Grand Prix weekend. 
The analysis examines practice results, qualifying positions, race finishing positions, and points.

The goal of this project was to practice using SQL to organize, query, 
and analyze a dataset while identifying meaningful patterns in driver performance. 

## Tools Used
- SQL
- OneCompiler
- Github

## Dataset
The dataset contains 22 drivers and the following information:
- Driver number
- First name
- Last name
- Practice 1 position
- Practice 2 position
- Practice 3 position
- Qualifying position
- Race finishing position
- Points
NULL values were used when qualifying or finishing results were not available.

## Questions Analyzed
### Race Results & Points
- Which driver scored the most points?
- Who won the Australian Grand Prix?
- Which drivers finished in the top 5?
- Which drivers scored zero points?
- Which drivers did not finish the race?
- How many drivers scored points?

### Practice & Qualifying
- Who had the best result in each practice session?
- Which driver had the best average practice position?
- Which drivers qualified in the top 5?
- What was the average finishing position?
- What was the average qualifying position?

### Driver Performance
- Which driver gained the most positions from qualifying to the race?
- Which driver lost the most positions?
- Did drivers who qualified in the top 5 generally finish in the top 5?
- Which driver showed the biggest improvement from Practice 1 to the race

## Missing Data
- Which driver had missing qualifying or finishing results?

## SQL Skills Demonstrated
- CREATE TABLE
- INSERT INTO
- SELECT
- WHERE
- ORDER BY
- COUNT
- AVG
- ROUND
- UNION ALL
- IS NULL
- Calculated columns
- Aliases
- LIMIT

## Key Findings
- George Russell won the race and scored the most points with 25 points.
- 10 driver scored at least one point
- Charles Leclerc place first in Practice 1, Oscar Piastri placed first in Practice 2, and George Russell placed first in Practice 3
- Lewis Hamilton had the best average practice position at 2.67
- Oliver Bearman had the best gained the most positions from qualifying to the race, moving from 12th to 7th for a gain of 5 positions
- Liam Lawson last the most positions from qualifying to the race, moving from 8th to 13th for a loss of 5 positions
- Lando Norris showed the largest improvement from Practice 1 to the race, moving from 19th in Practice 1 to a 5ht-place race finish

## Conclusion
This project demonstrates my ability to use SQL to organize, query, and analyze structured data. Through this analysis, I practiced filtering, sorting, aggregation, NULL handling, calculated fields, and combing query results to answer questions about driver performance. 
