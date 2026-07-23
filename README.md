# Airline Database Management System (MySQL)

A SQL-based Airline Database Management System developed using **MySQL**. This project demonstrates database design, table relationships, CRUD operations, and SQL queries for managing airline operations such as flights, passengers, airports, airlines, and bookings.

## Project Overview

The Airline Database Management System is designed to manage airline-related information efficiently. It includes multiple interconnected tables with primary and foreign key relationships and demonstrates real-world SQL operations.

## Features

- Database creation and initialization
- Airport management
- Airline management
- Flight scheduling
- Passenger management
- Booking management
- Primary & Foreign Key relationships
- Data insertion
- CRUD operations
- SQL Joins
- Aggregate Functions
- Subqueries
- Filtering and Sorting
- Database normalization concepts

---

## Technologies Used

- MySQL
- SQL
- MySQL Workbench

---

## Database Schema

The project contains the following tables:

| Table | Description |
|--------|-------------|
| Airports | Stores airport details |
| Airlines | Stores airline information |
| Flights | Stores flight schedules and status |
| Passengers | Stores passenger details |
| Bookings | Stores booking information |

---

## Entity Relationships

- One Airline ➜ Many Flights
- One Airport ➜ Source/Destination for Many Flights
- One Passenger ➜ Many Bookings
- One Flight ➜ Many Bookings

---

## 📊 SQL Concepts Covered

### DDL (Data Definition Language)

- CREATE DATABASE
- CREATE TABLE
- DROP DATABASE

### DML (Data Manipulation Language)

- INSERT
- UPDATE
- DELETE

### DQL (Data Query Language)

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- LIMIT

### SQL Functions

- COUNT()
- SUM()
- AVG()
- CONCAT()

### Joins

- INNER JOIN
- LEFT JOIN

### Other Concepts

- Aggregate Functions
- Subqueries
- Foreign Keys
- Constraints
- SQL Safe Updates

---

## Sample Queries Included

The project includes SQL queries such as:

- Find all flights operated by a specific airline.
- Retrieve departure and arrival times.
- Display booking details with passenger and flight information.
- Count flights operated by each airline.
- Find delayed flights.
- List passengers departing from a specific city.
- Calculate total fare collection.
- Display source and destination airports.
- Update flight status.
- Delete bookings based on fare.
- Find average booking fare by gender.
- Count bookings per passenger.
- Find airline with the highest number of flights.
- Retrieve bookings above average fare.
- Fetch passengers and flight details using joins.

---

## Project Structure

```
AIRLINE DATABASE.sql
README.md
```

---

## How to Run

1. Install MySQL Server.
2. Open MySQL Workbench.
3. Import or open `AIRLINE DATABASE.sql`.
4. Execute the script.
5. The database `AirlineDB` will be created automatically.
6. Run the provided SQL queries to explore the database.

---

## Sample Database Tables

- Airlines
- Airports
- Flights
- Passengers
- Bookings

---

## Learning Outcomes

This project demonstrates:

- Relational Database Design
- SQL Query Writing
- Database Normalization
- Foreign Key Relationships
- CRUD Operations
- Aggregate Functions
- Joins
- Subqueries
- Real-world Database Management

---

## Future Improvements

- Add Employee and Crew Management
- Flight Ticket Cancellation Module
- Payment Management
- User Authentication
- Stored Procedures
- Triggers
- Views
- Index Optimization

---

## Author

**Atharva Kadu**

- GitHub: https://github.com/your-github-username
- LinkedIn: https://linkedin.com/in/your-linkedin-profile

---

## ⭐ If you found this project helpful, consider giving it a Star!
