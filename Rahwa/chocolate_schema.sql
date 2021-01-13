-- Create Three Tables
CREATE TABLE chocolate_company (
  company_id INT PRIMARY KEY,
  company TEXT)
  
CREATE TABLE chocolate_rating (
  chocolate_id INT PRIMARY KEY,
  company TEXT,
  review_date INT,
  rating DECIMAL(3,2))
  
CREATE TABLE chocolate_rating (
  chocolate_id INT PRIMARY KEY,
  company TEXT,
  review_date INT,
  rating DECIMAL(3,2))
  
 CREATE TABLE chocolate_ingredients (
  chocolate_id int,
  company TEXT,
  country_of_bean_origin TEXT,
  cocoa_percent INT,
  cocoa_butter BOOLEAN,
  vanilla BOOLEAN,
  lecithin BOOLEAN,
  salt BOOLEAN,
  sugar BOOLEAN,
  sweetener_without_sugar BOOLEAN,
  FOREIGN KEY (chocolate_id) REFERENCES chocolate_rating(chocolate_id)
 )
