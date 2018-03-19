CREATE TABLE employees (
    first_name text,
	last_name text,
	employee_id integer,
);

INSERT INTO employees
    VALUES
   ('Britta', 'Perry', '100'),
   ('Ben', 'Chang', '101'),
   ('Troy', 'Barnes', '102'), 
   ('Pierce', 'Hawthorne', '103'),
   ('Shirley', 'Bennet', '104'),
   ('Abed', 'Nadeer', '105'),
   ('Jeff', 'Winger', '106');

CREATE TABLE shifts (
	employee_id integer,
	shift text
);

INSERT INTO shifts
    VALUES
   ('100', 'Morning'),
   ('101', 'Noon'),
   ('102', 'Night'), 
   ('103', 'Morning'),
   ('104', 'Noon'),
   ('105', 'Night'),
   ('106', 'Noon');