USE mta_tod1;

/* View 1*/
CREATE OR REPLACE VIEW county_highest_avg_transit_score AS
SELECT c.county_name AS "County Name", AVG(s.station_facility_score) AS "Average Transit Score"
FROM county c
JOIN station s ON s.county_id = c.county_id
JOIN transit_station ts ON ts.station_id = s.station_id
WHERE s.station_facility_score > 1
GROUP BY c.county_name
ORDER BY 'Average Transit Score' DESC;


/* View 2*/
CREATE OR REPLACE VIEW rail_line_highest_avg_parking_spots AS
SELECT rl.rail_line AS "Rail Line", AVG(p.parking_score) AS "Avg Parking Spots Per Station"
FROM rail_line rl
JOIN rail_station rs ON rs.rail_id = rl.rail_id
JOIN station s ON s.station_id = rs.station_id
JOIN parking p ON p.parking_id = s.parking_id
GROUP BY rl.rail_line
HAVING AVG(p.parking_score) > 2
ORDER BY 'Avg Parking Spots Per Station' DESC;


/* View 3*/
CREATE OR REPLACE VIEW stations_with_over_8_bike_lockers_subquery AS
SELECT subquery_alias.station_name AS "Station Name", subquery_alias.total_bike_lockers AS "Total Bike Lockers"
FROM (
    SELECT s.station_name, SUM(ba.num_bike_lockers) as total_bike_lockers
    FROM station s
    JOIN access a ON a.access_id = s.access_id
    JOIN bike_access ba ON ba.bike_access_id = a.bike_access_id
    GROUP BY s.station_name
    HAVING total_bike_lockers > 8
) AS subquery_alias;


/* View 4*/
CREATE OR REPLACE VIEW counties_with_stations_over_3_bike_racks AS
SELECT c.county_name AS "County Name", COUNT(s.station_name) AS "Stations With Bike Racks"
FROM county c
JOIN station s ON s.county_id = c.county_id
JOIN access a ON a.access_id = s.access_id
JOIN bike_access ba ON ba.bike_access_id = a.bike_access_id
WHERE ba.num_bike_racks > 3
GROUP BY c.county_name;


/* View 5*/
CREATE OR REPLACE VIEW highintersectionstationswithcounty AS
SELECT 
    s.station_id,
    s.station_name,
    a.intersection_density,
    c.county_name
FROM
    station s
JOIN
    access a ON s.access_ID = a.access_ID
JOIN
    county c ON s.county_ID = c.county_ID
WHERE
    a.intersection_Density > (SELECT AVG(intersection_density) FROM access);

/* View 6*/

CREATE OR REPLACE VIEW stationcountystats AS 
SELECT 
	c.county_name, 
    COUNT(s.station_ID) AS station_count, 
    AVG(s.area_population) AS avg_population 
    FROM county c 
    LEFT JOIN station s 
    ON c.county_ID = s.county_ID 
GROUP BY c.county_name;

/* View 7*/
CREATE OR REPLACE VIEW shorttripopportunitystations AS
SELECT 
    s.station_id,
    s.station_name,
    a.short_trip_opp_analysis,
    c.county_name
FROM
    station s
JOIN
    access a ON s.access_id = a.access_id
JOIN
    county c ON s.county_id = c.county_id
WHERE
    a.short_trip_opp_analysis > (SELECT AVG(short_trip_opp_analysis) FROM access)

ORDER BY short_trip_opp_analysis;

/* View 8*/
CREATE OR REPLACE VIEW parkinganalysis AS 
SELECT s.station_id, s.station_name, c.county_name,
SUM(parking_spots_reg+parking_spots_ada) AS total_parking, 
AVG(p.vehicles_Parked) AS avg_vehicles_parked, 
AVG(p.vehicles_parked)/(SUM(parking_spots_reg+parking_spots_ada)) AS filled_parking_ratio,
AVG(p.parking_Score) AS avg_parking_score 
FROM station s 
	JOIN parking p ON s.Parking_ID = p.parking_ID 
    JOIN county c ON s.County_ID = c.County_ID
    WHERE p.vehicles_parked > 0 
GROUP BY s.Station_ID, s.Station_Name 
ORDER BY Avg_Parking_Score, county_name, filled_parking_ratio;