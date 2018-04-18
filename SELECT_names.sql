-- Find the country that start with Y

SELECT name FROM world
  WHERE name LIKE 'Y%'

-- Find the countries that end with land
SELECT name FROM world
  WHERE name LIKE '%land'

-- Find the countries that start with C and end with ia

SELECT name FROM world
  WHERE name LIKE 'C%ia'

  -- Find the countries that have "t" as the second character.

SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name

-- Find the country where the name is the capital city.

SELECT name
  FROM world
 WHERE name = capital

 -- Find the country where the capital is the country plus "City".

SELECT name
  FROM world
 WHERE capital = concat(name, ' City')
