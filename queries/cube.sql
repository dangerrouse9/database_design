-- Average sales for every combination of year and country, including per-year,
-- per-country, and overall averages (IBM Db2).
SELECT CO.country, D.year, AVG(amount) AS AverageSales
FROM FactSales AS F
LEFT JOIN DimCountry AS CO
ON F.countryid = CO.countryid
LEFT JOIN DimDate as D
ON F.dateid = d.dateid
GROUP BY CUBE(year, country)
ORDER BY year, country;
