CREATE TABLE COVID_INFO 
(
    id INT,
    updated_report DATE,
    confirmed INT,
    deaths INT,
    recovered INT,
    latitude FLOAT,
    longitude FLOAT,
    country_region NVARCHAR (100),
    admin_region_1 NVARCHAR (100)
)
WITH
(
     DISTRIBUTION = ROUND_ROBIN, 
     CLUSTERED COLUMNSTORE INDEX
)



INSERT INTO COVID_INFO
SELECT 
    id,
    CAST (updated AS DATE) AS updated_report,
    confirmed,
    deaths,
    recovered,
    latitude,
    longitude,
    country_region,
    admin_region_1
from raw_data   


SELECT * FROM COVID_INFO 

CREATE VIEW vu_top_contries
as
SELECT 
   top (10) 
   country_region,
   sum (CAST (confirmed AS BIGINT) /1000 ) as total_confirmed,
   sum (CAST (deaths AS BIGINT) /1000 ) as total_deaths
FROM COVID_INFO
where country_region != 'Worldwide'
GROUP by country_region
ORDER BY total_confirmed desc

CREATE VIEW vu_covid_summary
AS
SELECT 
   sum (CAST (confirmed AS BIGINT) /1000 ) as total_confirmed,
   sum (CAST (deaths AS BIGINT) /1000 ) as total_deaths,
   sum (CAST (recovered AS BIGINT) /1000 ) as tota_recovered,
   sum (CAST (confirmed AS BIGINT) /1000 ) - (sum (CAST (deaths AS BIGINT) /1000 ) + sum (CAST (recovered AS BIGINT) /1000 ) ) as total_active
FROM COVID_INFO

CREATE VIEW vu_covid_trend
as
SELECT 
   updated_report,
   sum (CAST (confirmed AS BIGINT) /1000 ) as total_confirmed,
   sum (CAST (deaths AS BIGINT) /1000 ) as total_deaths,
   sum (CAST (recovered AS BIGINT) /1000 ) as total_recovered
FROM COVID_INFO
GROUP by updated_report

CREATE VIEW vu_location
as
SELECT 
   DISTINCT country_region,
   latitude,
   longitude,
   sum (confirmed /1000 ) OVER (PARTITION by country_region) as total_confirmed
FROM COVID_INFO



SELECT * from vu_top_contries

SELECT * from vu_covid_summary

SELECT * from vu_covid_trend

SELECT * from vu_location



