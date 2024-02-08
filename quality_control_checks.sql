----------------------------------------- TEAM - "CALL OF DATA" ----------------------------------
---------------------------------- SQL code for quality control checks -----------------------------------------
--------------------------------------------- 16-01-2024 -----------------------------------------

-------- 1. COUNT OF ROWS --------
SELECT 
	COUNT(*)
FROM 
	student.call_of_data;           

-- OUTPUT: 3480 ROWS
    
-------- 2. COUNT OF DISTINCT ROWS ----------
SELECT 
	COUNT(DISTINCT(ID))
FROM 
	student.call_of_data;           

-- OUTPUT: 3480 ROWS
    
-------- 3. COUNT OF COLUMNS ----------
SELECT 
	COUNT(*) as Number_of_columns
FROM
	information_schema.columns
WHERE 
	table_name ='call_of_data';     

-- OUTPUT: 36 COLUMNS
    
-------- 4. SUM OF COLUMN SUMS  ----------
	SELECT 
	  sum(id)
	+ sum(qtr) 
	+ sum(year)
	+ sum(month)
	+ sum(date_1)
	+ sum("Special Day")
	+ sum("Online Sale Offers ")
	+ sum(day)
	+ sum(weekend)
	+ sum(morning)
	+ sum(afternoon)
	+ sum(evening)
	+ sum(night)
	+ sum(gender)
	+ sum(quantity) 
	+ sum("Item Price")
	+ sum("Shipping-Price")
	+ sum("Ship-Postal-Code")
	+ sum(total_amount)
	+ sum(profit_percentage)
	+ sum("Profit (INR)")
	+ sum ("Cost Price") sum_of_sums
FROM 
	student.call_of_data cod;       

-- OUTPUT: 1481390811.79

--------- 5. SUM OF ROW SUMS ------------
WITH row_sum AS (
SELECT 
	sum(
	id
	+ qtr
	+ year
	+ month
	+ date_1
	+ "Special Day"
	+ "Online Sale Offers "
	+ day
	+ weekend
	+ morning
	+ afternoon
	+ evening
	+ night
	+ gender
	+ quantity
	+ "Item Price"
	+ "Shipping-Price"
	+ "Ship-Postal-Code"
	+ total_amount
	+ profit_percentage
	+ "Profit (INR)"
	+ "Cost Price"
	) as all_col_sum
FROM 
	student.call_of_data cod 
GROUP BY 
	id)
SELECT SUM(all_col_sum) from row_sum;     

-- OUTPUT: 1481390811.79
    
--------- 6. DATE FORMAT CHECK ----------
SELECT 
	id,date,"Purchase-date" 
FROM 
	student.call_of_data cod 
WHERE 
	id IN (5, 200, 300, 600, 750);      

/* OUTPUT:
    
id	"date"	    "Purchase-date"
5	04-01-2018	01-04-2018 20:12
200	20-02-2018	20-02-2018 16:53
300	07-03-2018	03-07-2018 08:59
600	28-04-2018	28-04-2018 06:14
750	13-05-2018	13-05-2018 10:23
*/   


--------- 7. MANUALLY COMPARE 5 RANDOMLY ROWS --------
SELECT 
	* 
FROM 
	student.call_of_data cod 
WHERE 
	id IN (71, 742, 1494, 2072, 3256);


---------- 8. COUNT OF NULLS ----------
SELECT 
    COUNT(*) number_of_nulls
FROM 
    student.call_of_data cod
WHERE 
    id IS NULL
    OR "Purchase-date"  IS NULL
    OR date IS NULL
    OR time IS null
    OR quarter IS null 
    OR qtr IS NULL
    OR year IS null
    OR month is null 
    OR date_1 IS NULL
    OR "Special Day" IS NULL
    OR "Online Sale Offers " IS null 
    OR day IS NULL 
    OR weekend IS NULL 
    OR morning IS NULL 
    OR afternoon IS NULL 
    OR evening IS NULL 
    OR night IS NULL 
    OR gender IS null 
    OR "Customer ID" IS NULL 
    OR genderfm  IS NULL
    OR "Product-Name" IS NULL 
    OR "Item-Status" IS NULL 
    OR quantity IS NULL 
    OR currency IS NULL 
    OR "Item Price" IS NULL 
    OR "Shipping-Price" IS NULL 
    OR "Ship-City" IS NULL
    OR "Ship-State" IS NULL 
    OR "Ship-Postal-Code" IS NULL 
    OR category IS NULL 
    OR total_amount IS NULL 
    OR "Author " IS NULL 
    OR "publication" IS NULL 
    OR profit_percentage  IS NULL 
    OR "Profit (INR)" IS NULL 
    OR "Cost Price" IS NULL;    
-- OUTPUT: 0
    
SELECT 
	COUNT(NULL)
FROM
	student.call_of_data cod;

-- OUTPUT: 0

---------- 9a. SUM ----------
SELECT 
    SUM("Cost Price") AS Cost_Price,
    SUM("Profit (INR)") AS Profit,
    SUM(Profit_Percentage) AS Profit_Percentage,
    SUM(Total_amount) AS Total_amount,
    SUM("Ship-Postal-Code") AS Ship_Postal_Code,
    SUM("Shipping-Price") AS Shipping_Price,
    SUM("Item Price") AS Item_Price,
    SUM(Quantity) AS Quantity,
    SUM(gender) AS gender,
    SUM(Night) AS Night,
    SUM(Evening) AS Evening,
    SUM(Afternoon) AS Afternoon,
    SUM(Morning) AS Morning,
    SUM(Weekend) AS Weekend,
    SUM(Day) AS Day,
    SUM("Online Sale Offers ") AS Online_Sale_Offers,
    SUM("Special Day") AS Special_Day,
    SUM(Date_1) AS Date_1,
    SUM(Month) AS Month,
    SUM(Year) AS Year,
    SUM(Qtr) AS Qtr,
    SUM(ID) AS ID
FROM 
    student.call_of_data;
    
/*  OUTPUT:
Cost Price	        1,106,422.61
Profit (INR)	    208,139.18
Profit_Percentage	57,981
Total_amount	    1,589,599
Ship-Postal-Code	1,463,652,909
Shipping-Price	    275,019
Item Price	        1,314,521
Quantity	        3,655
Date_1	            51,551
Month	            20,701
Year	            7,024,924
Qtr	                8,194
ID	                6,056,940
*/

---------- 9b. MIN ----------
SELECT 
    MIN("Cost Price") AS Cost_Price,
    MIN("Profit (INR)") AS Profit,
    MIN(Profit_Percentage) AS Profit_Percentage,
    MIN(Total_amount) AS Total_amount,
    MIN("Ship-Postal-Code") AS Ship_Postal_Code,
    MIN("Shipping-Price") AS Shipping_Price,
    MIN("Item Price") AS Item_Price,
    MIN(Quantity) AS Quantity,
    MIN(gender) AS gender,
    MIN(Night) AS Night,
    MIN(Evening) AS Evening,
    MIN(Afternoon) AS Afternoon,
    MIN(Morning) AS Morning,
    MIN(Weekend) AS Weekend,
    MIN(Day) AS Day,
    MIN("Online Sale Offers ") AS Online_Sale_Offers,
    MIN("Special Day") AS Special_Day,
    MIN(Date_1) AS Date_1,
    MIN(Month) AS Month,
    MIN(Year) AS Year,
    MIN(Qtr) AS Qtr,
    MIN(ID) AS ID
FROM 
    student.call_of_data;
    
/* OUTPUT:
Cost Price          34.80
Profit (INR)        5.20
Profit_Percentage   13
Total_amount        80
Ship-Postal-Code    110,001
Shipping-Price      0
Item Price          40
Quantity            1
Date_1              1
Month               1
Year                2018
Qtr                 1
ID                  1

*/
    
---------- 9c. MAX ----------
SELECT 
    MAX("Cost Price") AS Cost_Price,
    MAX("Profit (INR)") AS Profit,
    MAX(Profit_Percentage) AS Profit_Percentage,
    MAX(Total_amount) AS Total_amount,
    MAX("Ship-Postal-Code") AS Ship_Postal_Code,
    MAX("Shipping-Price") AS Shipping_Price,
    MAX("Item Price") AS Item_Price,
    MAX(Quantity) AS Quantity,
    MAX(gender) AS gender,
    MAX(Night) AS Night,
    MAX(Evening) AS Evening,
    MAX(Afternoon) AS Afternoon,
    MAX(Morning) AS Morning,
    MAX(Weekend) AS Weekend,
    MAX(Day) AS Day,
    MAX("Online Sale Offers ") AS Online_Sale_Offers,
    MAX("Special Day") AS Special_Day,
    MAX(Date_1) AS Date_1,
    MAX(Month) AS Month,
    MAX(Year) AS Year,
    MAX(Qtr) AS Qtr,
    MAX(ID) AS ID
FROM 
    student.call_of_data;
    
/*
Cost Price          5,611.50
Profit (INR)        838.50
Profit_Percentage   18
Total_amount        7,300
Ship-Postal-Code    855,107
Shipping-Price      850
Item Price          6,450
Quantity            10
Date_1              31
Month               12
Year                2,019
Qtr                 4
ID                  3,480
*/

---------- 10. ADDITIONAL CHECK - DUPLICATE ROWS IN DATA CHECK ----------
SELECT 
	COUNT(*),
	ID
FROM 
	student.call_of_data cod 
GROUP BY 
	ID
HAVING 
    COUNT(*)>1;

-- OUTPUT: No records

---------- 11. ADDITIONAL CHECK - MEAN OF THE COLUMN SUMS  ----------
SELECT 
	 ROUND((SUM(id)
	+ SUM(qtr) 
	+ SUM(year)
	+ SUM(month)
	+ SUM(date_1)
	+ SUM("Special Day")
	+ SUM("Online Sale Offers ")
	+ SUM(day)
	+ SUM(weekend)
	+ SUM(morning)
	+ SUM(afternoon)
	+ SUM(evening)
	+ SUM(night)
	+ SUM(gender)
	+ SUM(quantity) 
	+ SUM("Item Price")
	+ SUM("Shipping-Price")
	+ SUM("Ship-Postal-Code")
	+ SUM(total_amount)
	+ SUM(profit_percentage)
	+ SUM("Profit (INR)")
	+ SUM ("Cost Price")) / 22) mean_of_columns
FROM 
	student.call_of_data cod;
    
-- OUTPUT: 67,335,946

---------- 12. ADDITIONAL CHECK - MEAN OF THE ROW SUMS  ----------
WITH row_mean AS (
SELECT 
	SUM(
	id
	+ qtr
	+ year
	+ month
	+ date_1
	+ "Special Day"
	+ "Online Sale Offers "
	+ day
	+ weekend
	+ morning
	+ afternoon
	+ evening
	+ night
	+ gender
	+ quantity
	+ "Item Price"
	+ "Shipping-Price"
	+ "Ship-Postal-Code"
	+ total_amount
	+ profit_percentage
	+ "Profit (INR)"
	+ "Cost Price"
	) as all_col_sum
FROM 
	student.call_of_data cod 
GROUP BY 
	id )
SELECT 
    ROUND(SUM(all_col_sum) / 3480)
FROM
	row_mean;

-- OUTPUT: 425,687


------------------------------------------------------------ END ------------------------------------------------------------
