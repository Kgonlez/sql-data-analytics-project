/*
============================================================================
Create Database and Tables
============================================================================
Script Purpose:
  This script creates a new database named 'DataWarehoue' after checking is it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three 
  table groups within the database: 'bronze', 'silver', and 'gold'.

WARNING:
  Running this script will drop the entire 'DataWarehouse' database if it exists.
  All data in the database will be permanetly deleted. Process with caution and 
  ensure you have proper backups before runnung this script.
*/

--Create Database 'DataWarehouse'
DROP DATABASE IF EXISTS DataWarehouse;

--Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
USE DataWarehouse;

--Create Tables
DROP TABLE IF EXISTS bronze_crm_cust_info;
CREATE TABLE bronze_crm_cust_info(
    cst_id INT,
    cst_key VARCHAR(50),
    cst_firstname VARCHAR(50),
    cst_lastname VARCHAR(50),
    cst_marital_status VARCHAR(50),
    cst_gender VARCHAR(50),
    cst_create_date DATE
);

DROP TABLE IF EXISTS bronze_crm_prd_info;
CREATE TABLE bronze_crm_prd_info(
    prd_id INT,
    prd_key VARCHAR(50),
    prd_nm VARCHAR(50),
    prd_cost INT,
    prd_line VARCHAR(50),
    prd_start_dt DATE,
    prd_end_dt DATE
);

DROP TABLE IF EXISTS bronze_crm_sales_details;
CREATE TABLE bronze_crm_sales_details(
    sls_ord_num VARCHAR(50),
    sls_prd_key VARCHAR(50),
    sls_cust_id INT,
    sls_order_dt INT,
    sls_ship_dt INT,
    sls_due_dt INT,
    sls_sales INT,
    sls_quant INT,
    sls_price INT
);

DROP TABLE IF EXISTS bronze_erp_loc_a101;
CREATE TABLE bronze_erp_loc_a101(
    cid VARCHAR(50),
    cntry VARCHAR(50)
);

DROP TABLE IF EXISTS bronze_erp_cust_az12;
CREATE TABLE bronze_erp_cust_az12(
    cid VARCHAR(50),
    bdate DATE,
    gen VARCHAR(50)
);

DROP TABLE IF EXISTS bronze_erp_px_cat_g1v2;
CREATE TABLE bronze_erp_px_cat_g1v2(
    id VARCHAR(50),
    cat VARCHAR(50),
    subcat VARCHAR(50),
    maintenance VARCHAR(50)
);
