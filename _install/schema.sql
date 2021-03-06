CREATE TABLE users (
  email VARCHAR(128) PRIMARY KEY,
  name VARCHAR(128) NOT NULL
);

CREATE TABLE projects (
  id SERIAL PRIMARY KEY,
  owner VARCHAR(128) REFERENCES users(email),
  title text NOT NULL,
  description text,
  start_date DATE NOT NULL,
  end_date DATE,
  duration INT CHECK (duration > 0),
  categories text,
  amount FLOAT NOT NULL CHECK (amount > 0),
  curr_amount FLOAT DEFAULT 0
);

CREATE TABLE fundings (
  id SERIAL PRIMARY KEY,
  p_id INT REFERENCES projects(id),
  funder VARCHAR(128) REFERENCES users(email),
  amount FLOAT
);

CREATE OR REPLACE FUNCTION end_date_insert()
  RETURNS trigger AS
$$
BEGIN
    UPDATE projects
    SET end_date = start_date + duration where id = new.id;

    RETURN NULL;
END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER AddEndDate
AFTER INSERT
ON projects
FOR EACH ROW
EXECUTE PROCEDURE end_date_insert();
