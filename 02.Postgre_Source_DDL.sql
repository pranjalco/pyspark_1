

-- -----------------------------------------------------
-- Table Country
-- -----------------------------------------------------

CREATE TABLE Country (
  cn_id character varying(10) PRIMARY KEY,
  cn_name character varying(45));


-- -----------------------------------------------------
-- Table City
-- -----------------------------------------------------
CREATE TABLE City (
  ct_id character varying(10) PRIMARY KEY,
  ct_name character varying(45) ,
  cn_id character varying(10));


-- -----------------------------------------------------
-- Table Address
-- -----------------------------------------------------
CREATE TABLE Address (
  add_id character varying(10) PRIMARY KEY,
  street character varying(45) ,
  ct_id character varying(10));


-- -----------------------------------------------------
-- Table Card_Type
-- -----------------------------------------------------
CREATE TABLE Card_Type (
  c_type character varying(10) PRIMARY KEY,
  max_limit NUMERIC(10));


-- -----------------------------------------------------
-- Table Card
-- -----------------------------------------------------
CREATE TABLE Card (
  c_number NUMERIC(10) PRIMARY KEY,
  full_name character varying(45) ,
  mob NUMERIC(10),
  email character varying(45) ,
  issue_date TIMESTAMP ,
  update_date TIMESTAMP ,
  exp_date TIMESTAMP ,
  billing_date int ,
  c_limit NUMERIC(10) ,
  act_flag CHAR(1) ,
  add_id character varying(10),
  c_type character varying(10));


-- -----------------------------------------------------
-- Table CC_Debit
-- -----------------------------------------------------
CREATE TABLE CC_Debit (
  c_number NUMERIC(10),
  tx_id character varying(45),
  tx_date TIMESTAMP ,
  amt_spend NUMERIC(10) ,
  category character varying(45) ,
  d_status character varying(10));


-- -----------------------------------------------------
-- Table Tx_Type
-- -----------------------------------------------------
CREATE TABLE Tx_Type (
  tx_type_id character varying(10) PRIMARY KEY,
  tx_type_desc character varying(45));


-- -----------------------------------------------------
-- Table CC_Paid
-- -----------------------------------------------------
CREATE TABLE CC_Paid (
  c_number NUMERIC(10),
  tx_id character varying(45),
  tx_date TIMESTAMP ,
  amt_paid NUMERIC(10) ,
  c_status character varying(45) ,
  tx_type_id character varying(10));

commit;
