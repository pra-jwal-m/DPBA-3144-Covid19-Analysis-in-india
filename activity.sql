create database sampledata;
use sampledata;
SELECT SUM(`Sales`) AS Total_Sales FROM `sample data`;
SELECT SUM(`Units Sold`) AS Total_Units_Sold FROM `sample data`;
SELECT SUM(`Profit`) AS Total_Profit FROM `sample data`;
-- bar chart
SELECT `Product`,SUM(`Sales`) AS Total_Sales FROM `sample data`GROUP BY `Product`ORDER BY Total_Sales DESC;
-- line chart
SELECT STR_TO_DATE(`Date`, '%d-%m-%Y') AS Order_Date,SUM(`Sales`) AS Total_Sales FROM `sample data`
GROUP BY Order_Date ORDER BY Order_Date;
-- stacked column chart
SELECT `Country`,`Segment`,SUM(`Sales`) AS Total_Sales FROM `sample data`GROUP BY `Country`, `Segment`;
-- pie chart
SELECT `Segment`,SUM(`Sales`) AS Total_Sales FROM `sample data`GROUP BY `Segment`;
-- donut chart
SELECT `Country`,SUM(`Profit`) AS Total_Profit FROM `sample data`GROUP BY `Country`;




