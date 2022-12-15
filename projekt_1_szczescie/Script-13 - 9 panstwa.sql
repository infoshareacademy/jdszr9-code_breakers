--wyznaczmy kilka (np 5)krajów, które zajmują najwyższe miejsca pod względem poszczególnych czynników:

--PKB na mieszkańca - najwyższe - 5 krajów 
-- PKB wartości największe
 WITH PKB_na_mieszkańca AS 
 (
	SELECT 
	ROW_NUMBER () OVER (PARTITION BY "Year" ORDER BY "Economy (GDP per Capita)"  desc) AS id,
	CAST ("Year" AS varchar (5)),
	country, 
	"Happiness Rank", 
	round (CAST( "Economy (GDP per Capita)"  AS NUMERIC), 3) AS PKB
	FROM  wszystkie_lata wl 
)
SELECT *
FROM PKB_na_mieszkańca
WHERE id <=5

--PKB na mieszkańca - wartości najmniejsze
 WITH PKB_na_mieszkańca AS 
 (
	SELECT 
	ROW_NUMBER () OVER (PARTITION BY "Year" ORDER BY "Economy (GDP per Capita)"  asc) AS id,
	CAST ("Year" AS varchar (5)),
	country, 
	"Happiness Rank", 
	round (CAST( "Economy (GDP per Capita)"  AS NUMERIC), 3) AS PKB
	FROM  wszystkie_lata wl 
)
SELECT *
FROM PKB_na_mieszkańca
WHERE id <=5

-- pomoc socjalna 
-- wartości największe 
 WITH pomoc_socjalna AS 
 (
	SELECT 
	ROW_NUMBER () OVER (PARTITION BY "Year" ORDER BY "Social support" desc) AS id,
	CAST ("Year" AS varchar (5)),
	country,
	"Happiness Rank", 
	"Social support" 
	FROM  wszystkie_lata wl 
	WHERE "Social support" >= '0'
)
SELECT *
FROM pomoc_socjalna
WHERE id <=5

--pomoc socjalna - wartości najmniejsze 
 WITH pomoc_socjalna AS 
 (
	SELECT 
	ROW_NUMBER () OVER (PARTITION BY "Year" ORDER BY "Social support"  asc) AS id,
	CAST ("Year" AS varchar (5)),
	country, 
	"Happiness Rank",
	"Social support" 
	FROM  wszystkie_lata wl 
	WHERE "Social support" >= '0'
)
SELECT *
FROM pomoc_socjalna
WHERE id <=5

--OCZEKIWANA DŁUGOŚC ŻYCIA
-- wartości największe
 WITH oczekiwana_długość_życia AS 
 (
	SELECT 
	ROW_NUMBER () OVER (PARTITION BY "Year" ORDER BY "Health (Life Expectancy)"  desc) AS id,
	CAST ("Year" AS varchar (5)),
	country, 
	"Happiness Rank",
	round (CAST( "Health (Life Expectancy)"  AS NUMERIC), 3) AS health
	FROM  wszystkie_lata wl 
)
SELECT *
FROM oczekiwana_długość_życia
WHERE id <=5

--oczekiwana długość życia - wartości najmniejsze
 WITH oczekiwana_długość_życia AS 
 (
	SELECT 
	ROW_NUMBER () OVER (PARTITION BY "Year" ORDER BY "Health (Life Expectancy)"  asc) AS id,
	CAST ("Year" AS varchar (5)),
	country, 
	"Happiness Rank", 
	round (CAST("Health (Life Expectancy)"  AS NUMERIC), 3) AS health
	FROM  wszystkie_lata wl 
)
SELECT *
FROM oczekiwana_długość_życia
WHERE id <=5


--wolność dokonywania życiowych wyborów -wartości największe
 WITH wolność AS 
 (
	SELECT 
	ROW_NUMBER () OVER (PARTITION BY "Year" ORDER BY freedom  desc) AS id,
	CAST ("Year" AS varchar (5)),
	country,  
	"Happiness Rank", 
	round (CAST(freedom  AS NUMERIC), 3) AS freedom
	FROM  wszystkie_lata wl 
)
SELECT *
FROM wolność
WHERE id <=5

--wolność - wartości najmniejsze
 WITH wolność AS 
 (
	SELECT 
	ROW_NUMBER () OVER (PARTITION BY "Year" ORDER BY freedom  asc) AS id,
	CAST ("Year" AS varchar (5)),
	country, 
	"Happiness Rank", 
	round (CAST(freedom  AS NUMERIC), 3) AS generosity
	FROM  wszystkie_lata wl 
)
SELECT *
FROM wolność
WHERE id <=5

--HOJNOŚĆ--
--wszystkie lata hojność - wartości największe 
 WITH ranking_hojność AS 
 (
	SELECT 
	ROW_NUMBER () OVER (PARTITION BY "Year" ORDER BY generosity  desc) AS id,
	CAST ("Year" AS varchar (5)),
	country, 
	"Happiness Rank", 
	round (CAST(generosity  AS NUMERIC), 3) AS generosity
	FROM  wszystkie_lata wl 
)
SELECT *
FROM ranking_hojność
WHERE id <=5

--hojność wartości najmniejsze
 WITH ranking_hojność AS 
 (
	SELECT 
	ROW_NUMBER () OVER (PARTITION BY "Year" ORDER BY generosity  ASC) AS id,
	CAST ("Year" AS varchar (5)),
	country, 
	"Happiness Rank",
	round (CAST(generosity  AS NUMERIC), 3) AS generosity
	FROM  wszystkie_lata wl 
)
SELECT *
FROM ranking_hojność
WHERE id <=5

-- postrzeganie korupcji - rok 2018 dobre -wartości największe

	SELECT  ROW_NUMBER() OVER (ORDER BY "Perceptions of corruption" desc), 
	"Country or region", 
	"Overall rank",
	"Perceptions of corruption" 
	FROM "2018"
	WHERE "Perceptions of corruption" ILIKE '_.%'
	LIMIT 5 
	
	--postrzeganie korupcji - rok 2019 - wartości najmniejsze
		SELECT  ROW_NUMBER() OVER (ORDER BY "Perceptions of corruption" asc), 
	"Country or region",
	"Overall rank",
	"Perceptions of corruption" 
	FROM "2018"
	WHERE "Perceptions of corruption" ILIKE '_.%'
	LIMIT 5 

-- postrzeganie korupcji rok 2019 - wartości największe 
SELECT ROW_NUMBER() OVER (ORDER BY "Perceptions of corruption" desc) AS id , 
"Country or region" , 
"Overall rank" ,
ROUND(CAST("Perceptions of corruption"  AS NUMERIC), 3) AS Corruption 
FROM "2019"  
LIMIT 5

-- postrzeganie korupcji rok 2019 - wartości najmniejsze
SELECT ROW_NUMBER() OVER (ORDER BY "Perceptions of corruption" ASC) AS id , 
"Country or region" , 
"Overall rank" ,
ROUND(CAST("Perceptions of corruption"  AS NUMERIC), 3) AS Corruption 
FROM "2019"  
LIMIT 5

--ogólne szczęście - najwyższa punktacja
 WITH ranking_szczęście AS 
 (
	SELECT 
	ROW_NUMBER () OVER (PARTITION BY "Year" ORDER BY  "Happiness Score"  desc) AS id,
	CAST ("Year" AS varchar (5)),
	country, 
	round (CAST("Happiness Score"  AS NUMERIC), 3) AS happiness_score
	FROM  wszystkie_lata w
)
SELECT *
FROM ranking_szczęście
WHERE id <=5

--ogólne szczęście - najniższa punktacja
 WITH ranking_szczęście AS 
 (
	SELECT 
	ROW_NUMBER () OVER (PARTITION BY "Year" ORDER BY  "Happiness Score" asc) AS id,
	CAST ("Year" AS varchar (5)),
	country, 
	"Happiness Rank", 
	round (CAST("Happiness Score"  AS NUMERIC), 3) AS happiness_score
	FROM  wszystkie_lata w
)
SELECT *
FROM ranking_szczęście
WHERE id <=5
 
-- rodzina - najwyzsza punktacja
 WITH ranking_rodzina AS 
 (
	SELECT 
	ROW_NUMBER () OVER (PARTITION BY "Year" ORDER BY  "Family" desc) AS id,
	CAST ("Year" AS varchar (5)),
	country, 
	"Happiness Rank", 
	round (CAST("Family" AS NUMERIC), 3) AS family_score
	FROM  wszystkie_lata w
)
SELECT *
FROM ranking_rodzina
WHERE id <=5

--rodzina - najmniejsza punktacja 
 WITH ranking_rodzina AS 
 (
	SELECT 
	ROW_NUMBER () OVER (PARTITION BY "Year" ORDER BY  "Family" asc) AS id,
	CAST ("Year" AS varchar (5)),
	country, 
	"Happiness Rank", 
	round (CAST("Family" AS NUMERIC), 3) AS family_score
	FROM  wszystkie_lata w
)
SELECT *
FROM ranking_rodzina
WHERE id <=5




