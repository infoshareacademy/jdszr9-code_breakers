-- wartość minimalna i maksymalna ogółem (dla wszystkich lat łącznie)
SELECT 
	min("Happiness Score"),
	max("Happiness Score") 
from wszystkie_lata wl; 

-- wartość minimalna i maksymalna ogółem dla roku 2015
SELECT 
	min("Happiness Score"),
	max("Happiness Score") 
from "2015"; 

-- wartość minimalna i maksymalna ogółem dla roku 2016
SELECT 
	min("Happiness Score"),
	max("Happiness Score") 
from "2016"; 

-- wartość minimalna i maksymalna ogółem dla roku 2017
SELECT 
	min("Happiness.Score"),
	max("Happiness.Score") 
from "2017"; 

-- wartość minimalna i maksymalna ogółem dla roku 2018
SELECT 
	min(score),
	max(score) 
from "2018"; 

-- wartość minimalna i maksymalna ogółem dla roku 2019
SELECT 
	min(score),
	max(score) 
from "2019"; 

--mediana dla roku 2015
SELECT
	PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY "Happiness Score") AS mediana_happiness_score_2015
FROM "2015";

--mediana dla roku 2016
SELECT
	PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY "Happiness Score") AS mediana_happiness_score_2016
FROM "2016";

--mediana dla roku 2017
SELECT
	PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY "Happiness.Score") AS mediana_happiness_score_2017
FROM "2017";

--mediana dla roku 2018
SELECT
	PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY score) AS mediana_happiness_score_2018
FROM "2018";

--mediana dla roku 2019
SELECT
	PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY score) AS mediana_happiness_score_2019
FROM "2019";

--percentyl 10 dla roku 2015
SELECT
	PERCENTILE_DISC(0.1) WITHIN GROUP (ORDER BY "Happiness Score") AS percentyl_10_happiness_score_2015
FROM "2015";

--percentyl 10 dla roku 2016
SELECT
	PERCENTILE_DISC(0.1) WITHIN GROUP (ORDER BY "Happiness Score") AS percentyl_10_happiness_score_2016
FROM "2016";

--percentyl 10 dla roku 2017
SELECT
	PERCENTILE_DISC(0.1) WITHIN GROUP (ORDER BY "Happiness.Score") AS percentyl_10_happiness_score_2017
FROM "2017";

--percentyl 10 dla roku 2018
SELECT
	PERCENTILE_DISC(0.1) WITHIN GROUP (ORDER BY score) AS percentyl_10_happiness_score_2018
FROM "2018";

--percentyl 10 dla roku 2019
SELECT
	PERCENTILE_DISC(0.1) WITHIN GROUP (ORDER BY score) AS percentyl_10_happiness_score_2019
FROM "2019";

--percentyl 90 dla roku 2015
SELECT
	PERCENTILE_DISC(0.9) WITHIN GROUP (ORDER BY "Happiness Score") AS percentyl_90_happiness_score_2015
FROM "2015";

--percentyl 90 dla roku 2016
SELECT
	PERCENTILE_DISC(0.9) WITHIN GROUP (ORDER BY "Happiness Score") AS percentyl_90_happiness_score_2016
FROM "2016";

--percentyl 90 dla roku 2017
SELECT
	PERCENTILE_DISC(0.9) WITHIN GROUP (ORDER BY "Happiness.Score") AS percentyl_90_happiness_score_2017
FROM "2017";

--percentyl 90 dla roku 2018
SELECT
	PERCENTILE_DISC(0.9) WITHIN GROUP (ORDER BY score) AS percentyl_90_happiness_score_2018
FROM "2018";

--percentyl 90 dla roku 2019
SELECT
	PERCENTILE_DISC(0.9) WITHIN GROUP (ORDER BY score) AS percentyl_90_happiness_score_2019
FROM "2019";
