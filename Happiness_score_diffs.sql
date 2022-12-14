create view scores_diff as
select r.country, 
r."Happiness Score" as score_2015, 
r2.score as score_2019, 
(r."Happiness Score" - r2.score) as happiness_score_diff,
r."Economy (GDP per Capita)" as economy_2015,
r2."GDP per capita" as economy_2019,
abs(r."Economy (GDP per Capita)" - r2."GDP per capita") as economy_diff,
r."Family" as family_2015,
r2."Social support" as family_2019,
abs(r."Family" - r2."Social support") as family_diff,
r."Health (Life Expectancy)" as health_2015,
r2."Healthy life expectancy" as health_2019,
abs(r."Health (Life Expectancy)" - r2."Healthy life expectancy") as health_diff,
r.freedom as freedom_2015,
r2."Freedom to make life choices" as freedom_2019,
abs(r.freedom - r2."Freedom to make life choices") as freedom_diff,
r."Trust (Government Corruption)" as trust_2015,
r2."Perceptions of corruption" as trust_2019,
abs(r."Trust (Government Corruption)" - r2."Perceptions of corruption") as trust_diff,
r.generosity as generosity_2015,
r2.generosity as generosity_2019,
abs(r.generosity - r2.generosity) as generosity_diff
from "Report_2015" r
join "Report_2019" r2
on r.country = r2."Country or region"
order by happiness_score_diff
limit 5;

select 
corr(economy_diff, happiness_score_diff) as economy_diff_corr,
corr(family_diff, happiness_score_diff) as family_diff_corr,
corr(health_diff, happiness_score_diff) as health_diff_corr,
corr(freedom_diff, happiness_score_diff) as freedom_diff_corr,
corr(trust_diff, happiness_score_diff) as trust_diff_corr,
corr(generosity_diff, happiness_score_diff) as generosity_diff_corr
from scores_diff;


