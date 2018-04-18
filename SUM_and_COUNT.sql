-- List all the continents - just once each.

SELECT DISTINCT continent
FROM world
ORDER BY continent;

-- How many countries have an area of at least 1000000

SELECT COUNT(*) 
FROM world
WHERE area >= 1000000;

-- For each continent show the continent and number of countries with populations of at least 10 million.

SELECT continent, COUNT(name)
FROM world
WHERE population>= 10000000
GROUP BY continent;

-- List the continents that have a total population of at least 100 million.

SELECT continent
FROM world
GROUP BY continent
HAVING sum(population) >= 100000000;
