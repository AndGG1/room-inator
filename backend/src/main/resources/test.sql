//Initialization process
CREATE record_company;
USE record_company;

CREATE TABLE bands (
  //'Primary key' -- how you acces this table
  id INTEGER NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  
  //tables commas/'values'
  name VARCHAR(100) NOT NULL
);

CREATE TABLE album (
  //'Primary key and Foreign Key' -- used to acces an outer table that needs to be used/ref here
  id INTEGER NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  band_id INTEGER NOT NULL,
  FOREIGN KEY (band_id) REFERENCES bands(id),
  
  //tables commas/'values'
  name VARCHAR(50) NOT NULL,
  release_year INTEGER,
);

//adding bands
INSERT INTO bands (name) VALUES ('Imagine Dragons'), ('Royal Blood'),
  ('Queen'), ('Maneskin');

//'selecting data'
SELECT * FROM bands;
SELECT * FROM bands LIMIT 2;

