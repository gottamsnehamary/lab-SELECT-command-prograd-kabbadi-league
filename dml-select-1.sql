## Progression


-- 1. **Write a query to display the team details. Display the records sorted in the order of team name.**
SELECT NAME FROM TEAM ORDER BY NAME;

-- 2. **Write a query to display the player details whose name starts with a letter `S` and who do not belong to the country 'South Africa'. Display the records sorted in descending order based on player name.**
SELECT NAME FROM PLAYERS WHERE NAME LIKE 'S%' AND COUNTRY!='SOUTH AFRICA' ORDER BY NAME DESC;

-- 3. **Write a query to display the event number and the seconds taken for each event. Display the records sorted in ascending order based on event number.**
SELECT EVENTS_NO,CLOCK_IN_SECONDS FROM EVENT ORDER BY EVENTS_NO ASC;

-- 4. **Write a query to display the event numbers of those events which has sum of raid points and defending points greater than or equal to 3. Display the records sorted in ascending order based on event_no.**
SELECT EVENTS_NO FROM EVENT WHERE RAIDER_POINTS+DEFENDIND_POINTS >=3 ORDER BY EVENTS_NO;

-- 5. **Write a query to display the name of all the players who belong to the country India or Iran. Display the records sorted in ascending order based on player name.**
SELECT NAME FROM PLAYER WHERE (COUNTRY='INDIA' OR COUNTRY='IRAN') ORDER BY NAME ASC;

-- 6. **Write a query to display the name of all the players who does not belong to the country India and Iran. Display the records sorted in ascending order based on player name.**
SELECT NAME FROM PLAYER WHERE (COUNTRY !='INDIA' AND COUNTRY!='IRAN') ORDER BY NAME ASC;

-- 7. **Write a query to display the names of all the skills that start with `Defend`. Display the records sorted in ascending order based on skill name.**
SELECT NAME FROM SKILL WHERE NAME LIKE 'DEFEND%' ORDER BY NAME ASC;

-- 8. **Write a query to display all the stadium names that ends with `Complex`. Display the records sorted in ascending order based on stadium names.**
SELECT STADIUM_NAME FROM VENUE WHERE STADIUM_NAME LIKE '%COMPLEX' ORDER BY STADIUIM_NAME  ASC;

-- 9. **Write a query to display the winner team ids and the scores of those teams whose scores are less than 35. Display the records sorted in descending order based on outcome id.**
SELECT ID FROM OUTCOME WHERE SCORE<35 ORDER BY ID DESC;

-- 10. **Write a query to display the game details of those games that were played between January and March of 2020. Display the records sorted in descending order based on id.**
SELECT GAME_DATE FROM GAME WHERE GAME_DATE BETWEEN TO_DATE('01-JAN-2020','DD-MM-YYYY')AND '31-MAR-2020'
ORDER BY GAME_DATE DESC;

-- 11. **Write a query to display the names of players who are Raiders. Display the records sorted in ascending order based on player name.**
SELECT NAME FROM PLAYER WHERE SKILL_ID >1 ORDER BY NAME ASC;

-- 12. **Write a query to display the event number, raid points and defence points scored in the first innings of the game that was played on `2020-01-26`. Display the records sorted in ascending order based on event number.**
SELECT EVENTS_NO, RAIDER_POINTS,DEFENDING_POINTS FROM EVENT,GAME WHERE INNINGS_ID=1 AND GAME_DATE=TO_DATE('26-JAN-2020','DD-MM-YYYY)
ORDER BY EVENTS_NO ASC;

-- 13. **Write a query to display the name of the winner team in the game played on `2020-03-09`. Display the records sorted in ascending order based on team name.**
SELECT WINNER_TEAM_ID FROM OUTCOME ,GAME,TEAM WHERE GAME_DATE=TO_DATE('09-MAR-2020','DD-MM-YYYY') ORDER BY NAME ASC;

-- 14. **Write a query to display the names of players who were the player of the match in the game played on 2020-03-09'. Display the records sorted in ascending order based on player name.**
SELECT NAME FROM GAME ,PLAYER,OUTCOME WHERE GAME_DATE=TO_DATE('09-MAR-2020','DD-MM-YYYY')ORDER BY PLAYER_OF_MATCH ASC;

-- 15. **Write a query to display the names of players who are All rounders. Display the records sorted in ascending order based on player name.**
SELECT NAME FROM PLAYER WHERE SKILL_ID=12 ORDER BY NAME ASC;

-- 16. **Write a query to display the venue names for all the games that were played on `2020-03-09`. Display the records sorted in ascending order based on venue name.**
SELECT STADIUM_NAME FROM GAME,VENUE WHERE GAME_DATE=TO_DATE('09-MAR-2020','DD-MM-YYYY) ORDER BY GAME.VENUE_ID ASC;

-- 17. **Write a query to display the Coach's name of the team `Iran`**
SELECT COACH FROM TEAM,PLAYER WHERE COUNTRY='IRAN' ORDER BY TEAM.NAME;

-- 18. **Write a query to display the event number and the defence points of `Fazel Atrachali` in each event. Display the records sorted in ascending order based on event number.**
SELECT EVENTS_NO ,DEFENDING_POINTS FROM EVENT,PLAYER WHERE PLAYER.NAME='FAZEL ATRACHALI' ORDER BY EVENTS.EVENST_NO;

-- 19. **Write a query to display the names of the Winning teams in the month of March 2020. Display the records sorted in ascending order based on team name.**
SELECT NAME FROM TEAM,OUTCOME,GAME WHERE GAME_DATE BETWEEN TO_DATE ('01-MAR-2020','DD-MM-YYYY')AND '31-MAR-2010'
ORDER BY TEAM.NAME;

-- 20. **Write a query to display the names of players who were the player of the match in the games held in March 2020. Display the records sorted in ascending order based on player name.**
SELECT NAME FROM PLAYER,OUTCOME,GAME WHERE GAME_DATE BETWEEN TO_DATE ('01-MAR-2020','DD-MM-YYYY')AND '31-MAR-2020 ORDER BY PLAYER.NAME;
