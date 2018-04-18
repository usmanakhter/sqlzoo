-- List each country name where the population is larger than that of 'Russia'.

SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia');

-- Which country has a population that is more than Canada but less than Poland? Show the name and the population.

SELECT name, population FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Canada') 
  AND population <
     (SELECT population FROM world
      WHERE name='Poland');

-- Which countries have a GDP greater than every country in Europe? [Give the name only.] (Some countries may have NULL gdp values)

SELECT name
FROM world
   WHERE gdp IS NOT NULL 
   AND gdp > 
   (SELECT MAX(gdp) FROM world WHERE gdp IS NOT NULL AND continent='Europe')

-- List each continent and the name of the country that comes first alphabetically.

SELECT continent, name FROM world x
  WHERE name <=  ALL(SELECT name FROM world y
  WHERE x.continent = y.continent);