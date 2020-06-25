-- Drops the "company" database if it exists currently --
DROP DATABASE IF EXISTS company;
-- Creates the "company" database --
CREATE DATABASE company;

-- Makes it so all of the following code will affect "company" --
USE company;

-- Creates the table "department" within company --
CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  -- Makes a string column called "name" which cannot contain null --
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(10,2) NOT NULL,
  department_id INT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT,
  PRIMARY KEY (id)
);