-- Create Database
CREATE DATABASE IF NOT EXISTS energy_db;
USE energy_db;

-- Create Table
CREATE TABLE IF NOT EXISTS household_power (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    time TIME,
    global_active_power FLOAT,
    global_reactive_power FLOAT,
    voltage FLOAT,
    global_intensity FLOAT,
    sub_metering_1 FLOAT,
    sub_metering_2 FLOAT,
    sub_metering_3 FLOAT
);

-- Load Data
LOAD DATA INFILE 'household_power_consumption.txt'
INTO TABLE household_power
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;