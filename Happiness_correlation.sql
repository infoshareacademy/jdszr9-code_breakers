select corr(r."Economy (GDP per Capita)", r."Happiness Score") as economy_corr, 
		corr(r."Family", r."Happiness Score") as family_corr, 
		corr(r."Health (Life Expectancy)", r."Happiness Score") as health_corr, 
		corr(r.freedom, r."Happiness Score") as freedom_corr, 
		corr(r."Trust (Government Corruption)", r."Happiness Score") as trust_corr, 
		corr(r.generosity, r."Happiness Score") as generosity_corr
from "Report_2015" r;


select corr(r1."Economy (GDP per Capita)", r1."Happiness Score") as economy_corr, 
		corr(r1."Family", r1."Happiness Score") as family_corr, 
		corr(r1."Health (Life Expectancy)", r1."Happiness Score") as health_corr, 
		corr(r1.freedom, r1."Happiness Score") as freedom_corr, 
		corr(r1."Trust (Government Corruption)", r1."Happiness Score") as trust_corr, 
		corr(r1.generosity, r1."Happiness Score") as generosity_corr
from "Report_2016" r1;


select corr(r2."Economy..GDP.per.Capita.", r2."Happiness.Score") as economy_corr, 
		corr(r2."Family", r2."Happiness.Score") as family_corr, 
		corr(r2."Health..Life.Expectancy.", r2."Happiness.Score") as health_corr, 
		corr(r2.freedom, r2."Happiness.Score") as freedom_corr, 
		corr(r2."Trust..Government.Corruption.", r2."Happiness.Score") as trust_corr, 
		corr(r2.generosity, r2."Happiness.Score") as generosity_corr
from "Report_2017" r2;


select corr(r3."GDP per capita", r3.score) as economy_corr,
		corr(r3."Social support", r3.score) as social_corr,
		corr(r3."Healthy life expectancy", r3.score) as health_corr,
		corr(r3."Freedom to make life choices", r3.score) as freedom_corr,
		corr(cast(r3."Perceptions of corruption" as numeric), r3.score) as trust_corr,
		corr(r3.generosity, r3.score) as generosity_corr
from "Report_2018" r3
where r3."Perceptions of corruption" ~ '^[0-9]';


select r3."Perceptions of corruption"
from "Report_2018" r3
where r3."Perceptions of corruption" ~ '^[0-9]';


select corr(r4."GDP per capita", r4.score) as economy_corr,
		corr(r4."Social support", r4.score) as social_corr,
		corr(r4."Healthy life expectancy", r4.score) as health_corr,
		corr(r4."Freedom to make life choices", r4.score) as freedom_corr,
		corr(r4."Perceptions of corruption", r4.score) as trust_corr,
		corr(r4.generosity, r4.score) as generosity_corr
from "Report_2019" r4;






