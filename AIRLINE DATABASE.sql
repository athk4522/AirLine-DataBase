DROP DATABASE IF EXISTS AirlineDB;
CREATE DATABASE AirlineDB;

USE AirlineDB;

CREATE TABLE Airports (
    airport_id INT PRIMARY KEY,
    airport_code VARCHAR(10) UNIQUE,
    airport_name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE Airlines (
    airline_id INT PRIMARY KEY,
    airline_name VARCHAR(100),
    airline_code VARCHAR(10) UNIQUE
);

CREATE TABLE Flights (
    flight_id INT PRIMARY KEY,
    airline_id INT,
    flight_number VARCHAR(20),
    source_airport_id INT,
    destination_airport_id INT,
    departure_time DATETIME,
    arrival_time DATETIME,
    status VARCHAR(20),
    FOREIGN KEY (airline_id) REFERENCES Airlines(airline_id),
    FOREIGN KEY (source_airport_id) REFERENCES Airports(airport_id),
    FOREIGN KEY (destination_airport_id) REFERENCES Airports(airport_id)
);

CREATE TABLE Passengers (
    passenger_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    date_of_birth DATE,
    nationality VARCHAR(50)
);

CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    passenger_id INT,
    flight_id INT,
    seat_number VARCHAR(10),
    booking_date DATETIME,
    fare DECIMAL(10,2),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);

show tables;
select * from airlines;
insert into airlines values(12,"indigo","BOM");
insert into airlines values(142,"indigo","NAG");
insert into airlines values(122,"AirIndia","DEL");
insert into airlines values(42,"AirIndia","char");
INSERT INTO airlines VALUES (601, "Indigo", "GOI");
INSERT INTO airlines VALUES (715, "AirAsia", "MAA");
INSERT INTO airlines VALUES (824, "Vistara", "LKO");
INSERT INTO airlines VALUES (933, "SpiceJet", "IXC");
INSERT INTO airlines VALUES (1045, "GoFirst", "AMD");
INSERT INTO airlines VALUES (1152, "AkasaAir", "TRV");

INSERT INTO airports VALUES (12, 12, "Chhatrapati Shivaji Maharaj International Airport", "Mumbai", "India");
INSERT INTO airports VALUES (58, 142, "Dr. Babasaheb Ambedkar International Airport", "Nagpur", "India");
INSERT INTO airports VALUES (74, 122, "Indira Gandhi International Airport", "Delhi", "India");
INSERT INTO airports VALUES (95, 42, "Chennai International Airport", "Chennai", "India");
INSERT INTO airports VALUES (108, 601, "Goa International Airport", "Goa", "India");
INSERT INTO airports VALUES (135, 715, "Chennai International Airport", "Chennai", "India");
INSERT INTO airports VALUES (149, 824, "Chaudhary Charan Singh International Airport", "Lucknow", "India");
INSERT INTO airports VALUES (167, 933, "Shaheed Bhagat Singh International Airport", "Chandigarh", "India");
INSERT INTO airports VALUES (185, 1045, "Sardar Vallabhbhai Patel International Airport", "Ahmedabad", "India");
INSERT INTO airports VALUES (212, 1152, "Trivandrum International Airport", "Thiruvananthapuram", "India");

INSERT INTO Flights VALUES 
(201, 12,  "6E-201", 12, 58, "2025-01-10 06:30:00", "2025-01-10 08:15:00", "On Time"),
(202, 142, "6E-142", 58, 74, "2025-02-05 09:45:00", "2025-02-05 11:30:00", "Delayed"),
(203, 122, "AI-122", 74, 95, "2025-03-12 15:00:00", "2025-03-12 17:20:00", "On Time"),
(204, 42,  "AI-042", 95, 108, "2025-04-22 20:10:00", "2025-04-22 22:00:00", "Cancelled"),
(205, 601, "6E-601", 108, 149, "2025-05-16 07:00:00", "2025-05-16 09:10:00", "On Time"),
(206, 715, "I5-715", 135, 167, "2025-06-01 18:30:00", "2025-06-01 20:40:00", "On Time"),
(207, 824, "UK-824", 149, 185, "2025-07-10 05:15:00", "2025-07-10 07:25:00", "On Time"),
(208, 933, "SG-933", 167, 212, "2025-08-20 11:45:00", "2025-08-20 14:30:00", "Delayed"),
(209, 1045,"G8-1045",185, 12, "2025-09-14 21:30:00", "2025-09-14 23:45:00", "On Time"),
(210, 1152,"QP-1152",212, 58, "2025-10-28 10:00:00", "2025-10-28 12:15:00", "On Time");

INSERT INTO Passengers VALUES (301, "Rohan", "Patil", "M", "1993-04-12", "Indian");
INSERT INTO Passengers VALUES (302, "Priya", "Menon", "F", "1989-09-05", "Indian");
INSERT INTO Passengers VALUES (303, "Kunal", "Verma", "M", "1995-02-18", "Indian");
INSERT INTO Passengers VALUES (304, "Sneha", "Iyer", "F", "1998-12-22", "Indian");
INSERT INTO Passengers VALUES (305, "Vikas", "Jain", "M", "1987-07-15", "Indian");
INSERT INTO Passengers VALUES (306, "Meera", "Pillai", "F", "1990-03-28", "Indian");
INSERT INTO Passengers VALUES (307, "Ankit", "Shah", "M", "1992-11-02", "Indian");
INSERT INTO Passengers VALUES (308, "Divya", "Reddy", "F", "1996-06-10", "Indian");
INSERT INTO Passengers VALUES (309, "Arjun", "Mishra", "M", "1984-08-19", "Indian");
INSERT INTO Passengers VALUES (310, "Kavya", "Desai", "F", "1999-01-09", "Indian");

INSERT INTO Bookings VALUES (401, 301, 201, "12A", "2025-01-05", 6200.00);
INSERT INTO Bookings VALUES (402, 302, 202, "14C", "2025-02-12", 7300.00);
INSERT INTO Bookings VALUES (403, 303, 203, "9B",  "2025-03-20", 8100.00);
INSERT INTO Bookings VALUES (404, 304, 204, "6D",  "2025-04-15", 9500.00);
INSERT INTO Bookings VALUES (405, 305, 205, "18F", "2025-05-22", 7000.00);
INSERT INTO Bookings VALUES (406, 306, 206, "20A", "2025-06-08", 8900.00);
INSERT INTO Bookings VALUES (407, 307, 207, "7C",  "2025-07-17", 9200.00);
INSERT INTO Bookings VALUES (408, 308, 208, "11E", "2025-08-25", 6400.00);
INSERT INTO Bookings VALUES (409, 309, 209, "4B",  "2025-09-19", 8700.00);
INSERT INTO Bookings VALUES (410, 310, 210, "15D", "2025-10-27", 9900.00);

select * from airlines;
select * from airports;
select * from bookings;
select * from passengers;
select * from flights;

-- 1. Find all flights operated by "Indigo"
select * from airlines 
where airline_name = "Indigo";

-- 2. Get the departure and arrival times for flight number "AI-122"
select departure_time, arrival_time 
from flights 
where flight_number = "AI-122";

-- 3. Find all passengers with nationality "Indian."
select * from passengers where nationality="Indian";

-- 4. Show booking details including passenger name, flight number, and seat number.
select
concat(p.first_name, " " , p.last_name) as Full_Name,
f.flight_number,
b.seat_number 
from bookings b
JOIN Passengers p ON b.passenger_id = p.passenger_id
JOIN Flights f ON b.flight_id = f.flight_id;

-- 5. Count the number of flights operated by each airline.
SELECT airline_id, COUNT(*) AS number_of_flights
FROM flights
GROUP BY airline_id;

-- 6. Find all flights that are currently "Delayed."
select * from flights where status = "Delayed";

-- 7. List passengers who have booked flights departing from "Delhi"
SELECT DISTINCT p.*
FROM Bookings b
JOIN Passengers p ON b.passenger_id = p.passenger_id
JOIN Flights f ON b.flight_id = f.flight_id
JOIN Airports a ON f.source_airport_id = a.airport_id
WHERE a.city = 'Delhi';

-- 8. Find the total fare collected for bookings on flight_id 201
SELECT SUM(fare) AS total_fare
FROM bookings
WHERE flight_id = 201;

-- 9. Display all flights with their source and destination airport names
SELECT f.flight_id, f.flight_number, 
       a1.airport_name AS source_airport, 
       a2.airport_name AS destination_airport FROM Flights f
JOIN Airports a1 ON f.source_airport_id = a1.airport_id
JOIN Airports a2 ON f.destination_airport_id = a2.airport_id;

-- 10. Get the list of all passengers born after 1990
select * from passengers 
where date_of_birth>'1990-12-31';

-- 11 Update the flight status of flight_id 202 to "On Time"
update flights set 
status="On Time" 
where flight_id=202;

SET SQL_SAFE_UPDATES = 0;

-- 12 Delete bookings where fare is less than 7000
select * from bookings;
delete from bookings 
where fare < 7000;

-- 13 Find the average fare for bookings made by female passengers.
select AVG(b.fare) as AVG_FARE
from passengers  p
join bookings b on p.passenger_id = b.passenger_id
where p.gender="F";

-- 14 Insert a new airport into the Airports table.
insert into airports values(265,758,"Pune International","Pune","India");

-- 15 Add a new flight for an existing airline
select * from airlines;
insert into airlines values(2560,"Vistara","PNQ");

-- 16 Retrieve all passengers along with their booked flight details using JOIN
SELECT p.*, f.*
FROM passengers p
JOIN bookings b ON p.passenger_id = b.passenger_id
JOIN flights f ON b.flight_id = f.flight_id;

-- 17 List all bookings made in the month of January 2025
select * from bookings 
where booking_date >= 2025-01-01 and 
booking_date < 2025-02-01;

-- 18 Count the number of bookings per passenger
select passenger_id,
count(*) as booking_count 
from bookings 
group by passenger_id;

-- 19 Find the airline with the most flights
select airline_name, 
count(*) as count_of_flights from airlines
group by airline_name 
order by count_of_flights DESC
LIMIT 1;

-- 20 Get all flights where departure time is lesser than arrival time
select * from flights where departure_time > arrival_time;

-- 21 Update the seat number for booking_id 405 to "19B."
update bookings 
set seat_number="19B" 
where booking_id=405;

-- 22 Remove all flights with status "Cancelled"
DELETE FROM bookings WHERE flight_id IN (SELECT flight_id FROM flights WHERE status = 'Cancelled');
DELETE FROM flights WHERE status = 'Cancelled';

 -- 23 Show all bookings with fares greater than the average fare
 select * from bookings 
 where fare>(select avg(fare) from bookings);
 
 -- 24 list all passengers along with flights even if they didn’t book
SELECT p.*, b.booking_id, f.flight_number
FROM Passengers p
LEFT JOIN Bookings b ON p.passenger_id = b.passenger_id
LEFT JOIN Flights f ON b.flight_id = f.flight_id;

-- 25 Fetch all bookings where the flight departs from Mumbai and arrives in Delhi
SELECT b.* 
FROM Bookings b
JOIN Flights f ON b.flight_id = f.flight_id
JOIN Airports a1 ON f.source_airport_id = a1.airport_id
JOIN Airports a2 ON f.destination_airport_id = a2.airport_id
WHERE a1.city = 'Mumbai' AND a2.city = 'Delhi';