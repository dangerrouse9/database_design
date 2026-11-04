-- Materialized query table (MQT) holding precomputed total sales per country (IBM Db2).
-- Populate or refresh it with: REFRESH TABLE total_sales_per_country;
CREATE TABLE total_sales_per_country (Country, Total_Sales) AS
    (SELECT CO.country, SUM(amount)
FROM FactSales AS F
LEFT JOIN DimCountry AS CO
ON F.countryid = CO.countryid
GROUP BY Country)
    DATA INITIALLY DEFERRED
    REFRESH DEFERRED
    MAINTAINED BY SYSTEM;
