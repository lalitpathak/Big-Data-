LOAD DATA INFILE "/home/cloudera/PDA_PROJECT_OLIST/PROCESSED/m_sellers_data.csv" INTO TABLE Olist.sellers COLUMNS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES;
