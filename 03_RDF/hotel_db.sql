CREATE TABLE guest (
    name text,
	phone varchar,
	email varchar,
);

INSERT INTO guest
    VALUES
   ('John Smith', '312-2853', 'jsmith@gmail.com'),
   ('Sally Jennings', '597-3252', 'sjennings@gmail.com'),
   ('Tiger Woods', '123-4567', 'twoods@gmail.com'), 
   ('Al Einstein', '892-7650', 'einstein@gmail.com'),
   ('Jackson Browne', '312-9999', 'jack@gmail.com');


CREATE TABLE room (
    room_number integer, 
	floor integer, 
	cost_per_night money
);

INSERT INTO room
    VALUES
   (200, 2, 50.00), 
   (250, 2, 25.00), 
   (300, 3, 50.00), 
   (350, 3, 25.00), 
   (400, 4, 75.00), 
   (450, 4, 50.00), 
   (500, 5, 80.00), 
   (550, 5, 55.00), 
   (600, 6, 100.00);

CREATE TABLE booking (
    check_in_date date, 
	check_out_date date, 
	guest text, 
	room integer
);

INSERT INTO booking
    VALUES
   ('2017-11-23', '2017-11-25', 'John Smith', 300),
   ('2017-11-23', '2017-11-25', 'John Smith', 350),
   ('2017-11-25', '2017-12-12', 'Tiger Woods', 600),
   ('2017-12-25', '2017-12-30', 'Jackson Browne', 600),
   ('2017-11-27', '2017-11-30', 'Al Einstein', 300),
   ('2017-11-27', '2017-11-30', 'Al Einstein', 400),
   ('2017-11-27', '2017-11-30', 'Al Einstein', 500),
   ('2017-11-27', '2017-11-30', 'Al Einstein', 600);
