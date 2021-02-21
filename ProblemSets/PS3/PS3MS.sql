/*This is to create our table*/
CREATE TABLE Florida(
"policyID" CHAR,
"statecode" CHAR,
"county" CHAR,
"eq_site_limit" CHAR,
"hu_site_limit" CHAR,
"fl_site_limit" CHAR,
"fr_site_limit" CHAR,
"tiv_2011" CHAR,
"tiv_2012" CHAR,
"eq_site_deductible" CHAR,
"hu_site_deductible" CHAR,
"fl_site_deductible" CHAR,
"fr_site_deductible" CHAR,
"point_latitude" CHAR,
"point_longitude" CHAR,
"line" CHAR,
"construction" CHAR,
"point_granularity" CHAR
);
/*Import our data*/
.mode csv
.import FL_insurance_sample.csv Florida
/*Print out the first 10 rows*/
SELECT * FROM Florida LIMIT 10;
/*List counties*/
SELECT county, COUNT(*) FROM Florida GROUP BY county;
/*Average appreciation*/
SELECT AVG(tiv_2012 - tiv_2011) FROM Florida;
/*Frequency*/
SELECT construction, COUNT(construction) AS Frequency
FROM Florida
GROUP BY construction
ORDER BY
COUNT(construction) DESC
;
