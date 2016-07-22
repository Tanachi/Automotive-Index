DROP USER IF EXISTS index_cars_users;
CREATE USER index_cars_users;
DROP DATABASE IF EXISTS index_cars;
CREATE DATABASE index_cars;
GRANT ALL ON DATABASE index_cars TO index_cars_users;
DROP TABLE IF EXISTS car_models;
\i scripts/car_models.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\timing
  SELECT DISTINCT ON (make_title) make_title FROM car_models WHERE make_code = 'LAM';
  SELECT DISTINCT ON (model_title) model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
  SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
  SELECT  * FROM car_models WHERE year <= 2015 AND year >= 2010;
  SELECT  * FROM car_models WHERE year = 2010;
\timing
