show global variables like "local_infile";
set global local_infile=1;
show global variables like "local_infile";
/*****************************************/

use august;
CREATE TABLE bank_customers (
    rownumber INT,
    customerid VARCHAR(20),
    surname VARCHAR(40),
    CreditScore INT,
    Geography VARCHAR(20),
    Gender VARCHAR(10),
    Age INT,
    Tenure INT,
    Balance NUMERIC,
    NumOfProducts INT,
    HasCrCard INT,
    IsActiveMember INT,
    EstimatedSalary NUMERIC,
    Exited INT
);
select * from bank_customers;
local data local infile 'C:\\Users\\gilang\\Documents\\No Work\\Data Scientist\\One Month Bootcamp\\BootUP DAS\\Bank_churn_modelling.csv' into table bank_customers character set latin1 fields terminated by ',' enclosed by '"' lines terminated by '\r\n' ignore 1 lines;