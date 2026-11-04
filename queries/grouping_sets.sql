-- Total sales per country and per category, as two breakdowns in one query (IBM Db2).
SELECT CO.country, CA.category, SUM(amount) AS TotalSales
FROM FactSales AS F
LEFT JOIN DimCountry AS CO
ON F.countryid = CO.countryid
LEFT JOIN DimCategory as CA
ON F.categoryid = CA.categoryid
GROUP BY GROUPING SETS(country, category)
ORDER BY country, category;
