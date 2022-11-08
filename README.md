# ITEC4200
Final Project from my Advanced Databases course at GGC taught by [Dr. Lissa Pollacia](https://www.linkedin.com/in/lissa-pollacia-college-professor/).

I worked on this with another student, Yaris Cotto-Quinones. The objective was to make a database centered around the management of multiple concert halls and venues. We were to keep track of the customers, the venues, booking, as well as tickets. This data would theoretically be used to ensure that no concert hall would ever be overbooked, every performer can perform at the scheduled date and time at each venue, and that every paying customer would get a valid, working ticket. We made six tables in Oracle 18c Express to accomplish this: Customer, Hall, Order, PerformanceT (Performance Ticket), Ticket, and Performer. All queries were made and tested in Oracle SQL Developer.

## Schema Design
CUSTOMER (Customer_ID, Last_Name, First_Name, Email_Address)

ORDER (Order_ID, Order_Date, Total, Customer_ID)
FK Customer_ID -> CUSTOMER

HALL (Hall_ID, CapacityH, Hall_Name)

PERFORMER (Performer_ID, Performer_First_Name, Performer_Last_Name, Genre)

PERFORMANCET (Performance_ID, Hall_ID, Performer_ID, Performance_Date)
FK Hall_ID -> HALL
FK Performer_ID -> PERFORMER

TICKET (Ticket_Number, Order_ID, Performance_ID)
FK Order_ID -> ORDER
FK Performance_ID -> PERFORMANCET


See the included word documents for a more detailed writeup including everything about the queries and table creation.
