######################################hbase_table_creation.sh################################################################
#    Ttile : Hbase table creation 
#    Description : script is used to create the tables in hbase table for the files generated by MapReduce,Hive and Pig  
#    
# ###########################################################################################################################


echo  "------------- Table creation for MApreduce result  ------------------------" 

echo "create 'olist_Filter_order_MapR','UID','order_id','customer_id','order_status','order_purchase_timestamp','Month','day','year','order_approved_at','order_delivered_carrier_date','order_delivered_customer_date','order_estimated_delivery_date'" | hbase shell
 
echo "-------------Table creation of Hive_view_result -------------------------------"  
# hive_table_creation 
echo "create 'olist_sts_order_payment','count_order_id','count_customer_state','count_payment_value'" | hbase shell
echo "create 'olist_avergae_order_value','average_payment_value'" | hbase shell
echo "create 'olist_average_order_value_year','average_payment_value','Year'" | hbase shell
echo "create 'olist_Busiest_Hrs','count_order_id','Hrs','year'" | hbase shell
echo "create 'olist_Product_Category_sell','count_product_id','product_category_name','product_category_name_english'" | hbase shell

echo "---------------- Table_creation of Pig Result ----------------------"

echo "create 'olist_seller_state','count_olist_seller','state'" | hbase shell
echo "create 'olist_customer_state','count_olist_customer','state'" | hbase shell
echo "create 'olist_sellers','count_of_orders','sellers'" | hbase shell
echo "create 'olist_marketing_qualified_leads','origin','count_mql_id'" | hbase shell
echo "create 'olist_marketing_qualified_leads_MQL','month','count_of_mql_id'" | hbase shell
echo "create 'olist_closed_deals','month','count(mql_id)'" | hbase shell

echo "-----------------Tables Created in Hbase -----------------------------" 
