CREATE TABLE user_table (
    user_id VARCHAR2(10) PRIMARY KEY,
    user_name VARCHAR2(30),
    user_password VARCHAR2(10),
    user_Flag VARCHAR2(1)
);

CREATE TABLE Supplier (
    supplier_id VARCHAR2(8) PRIMARY KEY,
    supp_name VARCHAR2(50),
    supp_address VARCHAR2(250),
    supp_region VARCHAR2(50),
    supp_Telp VARCHAR2(15),
    supp_email VARCHAR2(50),
    supp_Flag VARCHAR2(1)
);

CREATE TABLE Manufacture (
    manu_id VARCHAR2(8) PRIMARY KEY,
    manu_name VARCHAR2(50),
    manu_country VARCHAR2(50),
    manu_Flag VARCHAR2(1)
);

CREATE TABLE Unit (
    unit_id VARCHAR2(8) PRIMARY KEY,
    unit_name VARCHAR2(50)
);

CREATE TABLE product_type (
    type_id VARCHAR2(2) PRIMARY KEY,
    type_name VARCHAR2(30)
);

CREATE TABLE location (
    location_id VARCHAR2(8) PRIMARY KEY,
    location_name VARCHAR2(30),
    location_type VARCHAR2(1)
);

CREATE TABLE Product (
    type_id VARCHAR2(2),
    product_id VARCHAR2(8) PRIMARY KEY,
    product_name VARCHAR2(50),
    manu_id VARCHAR2(8),
    supplier_id VARCHAR2(8),
    unit_id VARCHAR2(8),
    location_id VARCHAR2(8),
    remark VARCHAR2(100),
    safety_level NUMBER(5, 0)
);

CREATE TABLE Product_test (
    product_id VARCHAR2(8),
    test_code VARCHAR2(6)
);

CREATE TABLE li_trx (
    li_trx_id VARCHAR2(8) PRIMARY KEY,
    li_DO VARCHAR2(50),
    li_lot_no VARCHAR2(50),
    product_id VARCHAR2(8),
    supplier_id VARCHAR2(8),
    li_stock_in_date DATE,
    li_stock_in_qty NUMBER(5, 0),
    li_stock_expired DATE,
    li_stock_out_date DATE,
    li_stock_out_type VARCHAR2(1),
    li_stock_out_location VARCHAR2(8),
    li_remark VARCHAR2(100),
    li_status VARCHAR2(1),
    li_update_by VARCHAR2(8),
    li_update_on DATE
);

CREATE TABLE reagent_use (
    li_trx_id VARCHAR2(8),
    re_trx_id VARCHAR2(8),
    product_id VARCHAR2(8),
    re_start_date DATE,
    re_end_date DATE,
    re_start_by VARCHAR2(8),
    re_end_by VARCHAR2(8),
    PRIMARY KEY (li_trx_id, re_trx_id)
);