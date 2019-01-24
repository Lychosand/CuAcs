BEGIN TRANSACTION;

CREATE TABLE ANIMALS (
  animal_id INTEGER,
  name      TEXT,
  PRIMARY KEY(animal_id)
);

CREATE TABLE PHYSICAL_ATTRIBUTES (
  a_id        INTEGER,
  gender      TEXT,
  age         INTEGER,
  species     TEXT,
  breed       TEXT,
  hair_type   TEXT,
  hair_colour TEXT,
  FOREIGN KEY(a_id) REFERENCES ANIMALS(animal_id)
);

CREATE TABLE ANIMAL_CHARACTERISTICS (
  a_id INTEGER,
  FOREIGN KEY(a_id) REFERENCES ANIMALS(animal_id)
);

END TRANSACTION;
