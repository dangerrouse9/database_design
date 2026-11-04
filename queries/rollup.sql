-- Total sales by year and country, with a subtotal per year and a grand total (IBM Db2).
SELECT CO.country, D.year, SUM(amount) AS TotalSales
FROM FactSales AS F
LEFT JOIN DimCountry AS CO
ON F.countryid = CO.countryid
LEFT JOIN DimDate as D
ON F.dateid = d.dateid
GROUP BY ROLLUP(year, country)
ORDER BY year, country;
