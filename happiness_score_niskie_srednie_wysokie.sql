--percentyl 30 dla wszystkich lat
SELECT
	PERCENTILE_DISC(0.3) WITHIN GROUP (ORDER BY "Happiness Score") AS percentyl_30_happiness_score,
	PERCENTILE_DISC(0.7) WITHIN GROUP (ORDER BY "Happiness Score") AS percentyl_70_happiness_score
FROM wszystkie_lata wl;


select
CASE 
		when "Happiness Score" < 4.5 then 'low'
		when "Happiness Score" > 6 then 'high'
		else 'medium'
END,
*
from wszystkie_lata wl;
