<h1 align="center">📦MySQL Database📦</h1>

Overview
--------

This project uses a MySQL OLTP database schema to simulate the day-to-day operations of a postal company. The schema is designed to model the operational side of a postal business before the data is later transformed, summarized, or visualized for business intelligence purposes.

The database is intentionally designed as an OLTP system rather than a pure OLAP/reporting schema. This means the tables focus on recording real business events as they happen: customers creating package records, employees handling packages, facilities processing packages, lockers being assigned, inventory being sold, incidents being reported, and package movement events being tracked over time.

The main goal of this schema is to provide a realistic operational data source that can later feed dashboards, reports, analytics views, and machine learning workflows.




Main Design Philosophy
----------------------

The schema was designed around the idea that a postal company is not just one local post office. Instead, the company contains multiple facility types that perform different roles in the delivery network.

Earlier versions of the design focused mostly on customer-facing postal offices. The current schema improves that by using a generalized facility model. This allows the system to represent retail offices, processing centers, distribution centers, and local delivery centers without needing completely separate schemas for each type of location.

This facility-based approach makes the schema more flexible and realistic. A package can now be received at one facility, processed at another, transferred between facilities, delayed at a facility, sent out for delivery, and eventually delivered or placed in a locker.


Core Entity Groups
------------------