CREATE TABLE student (
    student_id integer,
	last_name text,
	first_name text,
);

INSERT INTO student
    VALUES
   (2134, 'Wallace', 'Mia'),
   (1230, 'Vega', 'Vincent'),
   (5357, 'Winnfield', 'Jules'),
   (9087, 'Rhames', 'Ving'),
   (6523, 'Coolidge', 'Butch'),
   (8976, 'Holly', 'Buddy'),
   (5002, 'Buscemi', 'Steve'),
   (4379, 'Jones', 'Sally'),
   (9965, 'Roth', 'Tina'),
   (2345, 'Delaney', 'Claire');
   
   CREATE TABLE grades (
    class_year integer,
	student_id integer,
	class_id varchar(8),
	grade varchar(2),
);

INSERT INTO grades
    VALUES
   (9, 2134, 'bio101', 'B+'),
   (9, 1230, 'phys_ed', 'A'),
   (10, 5357, 'chem209', 'C'),
   (10, 9087, 'bio101', 'A-'),
   (10, 6523, 'phys_ed', 'A'),
   (11, 8976, 'chem209', 'D'),
   (11, 5002, 'span101', 'A-'),
   (12, 4379, 'bio101', 'C+'),
   (12, 9965, 'bio101', 'A'),
   (12, 2345, 'chem209', 'D');

CREATE TABLE classes (
    class_id varchar(10),
	class_name varchar(15)
);

INSERT INTO classes
    VALUES
   ('bio101', 'intro_to_bio'),
   ('phys_ed', 'gym'),
   ('chem209', 'organic_chem'),
   ('span101', 'spanish1');