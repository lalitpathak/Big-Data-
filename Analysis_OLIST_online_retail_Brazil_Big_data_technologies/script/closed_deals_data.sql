LOAD DATA INFILE "/home/cloudera/PDA_PROJECT_OLIST/PROCESSED/m_olist_closed_deals_dataset.csv" INTO TABLE Olist.closed_deals COLUMNS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES;
