--1. Selecciona el nombre de la ciudad (con alias 'city'), el código de país, el nombre del país (con alias 'country') 
--y la columna city_prop_population (población propia de la ciudad). Finalmente, ordena en orden 
--descendente por la columna que ambas tablas tienen en común.
SELECT cities.name as city,countries.code, countries.country_name as country, countries.region, cities.city_proper_pop
FROM cities
INNER JOIN countries
ON cities.country_code= countries.code;

--2. Utiliza un LEFT JOIN para cruzar la tablas countries y languages.
--Selecciona el país (con alias 'country'), el nombre local del país (local_name), el nombre del idioma y, finalmente, 
--el porcentaje del idioma hablado en cada país

SELECT country_name as country, local_name, name as language, percent
FROM countries
LEFT JOIN languages
ON countries.code = languages.code
ORDER BY countries.code DESC

--3. Utiliza nuevamente un LEFT JOIN (o RIGHT JOIN si quiere alocarte un poco 🤓) para cruzar las tablas countries y economies.
--Selecciona el nombre del país, región y GDP per cápita (de economies). Finalmente, filtra las filas para obtener solo los resultados del año 2010.

SELECT country_name,region, gdp_percapita
FROM countries
LEFT JOIN economies
ON countries.code = economies.code
WHERE year = 2010

--4. No soporta right join SQlite 
--5. No existe la tabla populations