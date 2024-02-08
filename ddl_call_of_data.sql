----------------------------------------- TEAM - "CALL OF DATA" ----------------------------------
----------------------------------- DDL TABLE - student.call_of_data -----------------------------
--------------------------------------------- 16-01-2024 -----------------------------------------

CREATE TABLE student.call_of_data(
    ID                      INT
    ,"Purchase-date"        VARCHAR(40)
    ,Date					VARCHAR(40)
    ,Time                   TIME
    ,Quarter                VARCHAR(20)
    ,Qtr                    INT
    ,Year                   INT
    ,Month                  INT
    ,Date_1                 INT
    ,"Special Day"          INT
    ,"Online Sale Offers "  INT
    ,Day                    INT
    ,Weekend                INT
    ,Morning                INT
    ,Afternoon              INT
    ,Evening                INT
    ,Night                  INT
    ,Gender                 INT
    ,"Customer ID"          VARCHAR(40)
    ,GenderFM				VARCHAR(1)                     
    ,"Product-Name"         VARCHAR(200)
    ,"Item-Status"          VARCHAR(40)
    ,Quantity               INT
    ,Currency               VARCHAR(20)
    ,"Item Price"           FLOAT
    ,"Shipping-Price"       FLOAT 
    ,"Ship-City"            VARCHAR(100)
    ,"Ship-State"           VARCHAR(100)
    ,"Ship-Postal-Code"     INT
    ,Category               VARCHAR(50)
    ,Total_amount			FLOAT
    ,"Author "              VARCHAR(100)
    ,Publication            VARCHAR(100)
    ,Profit_Percentage		FLOAT
    ,"Profit (INR)"         FLOAT
    ,"Cost Price"           FLOAT
);

ALTER TABLE 
	student.call_of_data 
ADD CONSTRAINT 
	call_of_data_pk PRIMARY KEY (id);
--------------------------------------------- END -----------------------------------------
