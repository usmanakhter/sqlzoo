-- Modify it to show the matchid and player name for all goals scored by Germany. To identify German players, check for: teamid = 'GER'

SELECT matchid, player 
FROM goal 
  WHERE teamid='GER'

-- Modify it to show the player, teamid, stadium and mdate for every German goal.
SELECT player, teamid, stadium, mdate
FROM game
JOIN goal 
ON (game.id = goal.matchid) 
WHERE teamid = 'GER'

-- List the the dates of the matches and the name of the team in which 'Fernando Santos' was the team1 coach.
SELECT mdate, teamname
FROM game
JOIN eteam
ON eteam.id = game.team1
WHERE eteam.coach = 'Fernando Santos';

-- Instead show the name of all players who scored a goal against Germany.
SELECT DISTINCT player
FROM game
JOIN goal ON goal.matchid = game.id 
WHERE (team1='GER' OR team2='GER')
AND teamid != 'GER'