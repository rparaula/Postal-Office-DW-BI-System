README

<h1 align="center">📝Overview📝</h1>
---------------------------------------------------------

This project is an end-to-end data warehouse and business intelligence demo that simulates a postal company's operational and reporting environment. It starts with a MySQL OLTP database and ASP.NET web application, moves source data through an Azure-style medallion pipeline, models the cleaned data into a reporting-friendly gold layer, exposes the warehouse through Synapse serverless SQL views, and presents financial and logistical insights through Power BI dashboards embedded into the web application.


My goal for this repository was to show that I am knowledgeable and capable of understanding the full flow of a modern data platform: upskilling myself with all source of concepts like, source system design, batch ingestion, cloud storage, data cleaning, dimensional modeling, semantic/reporting views, dashboard development, and role-aware web access.

This is a portfolio/demo project, so some parts are intentionally simplified or still being improved, but the repository represents a complete rough draft of the full architecture.

---------------------------------------------------------
Within our web application, you can log in with the following credentials to view different perspectives of the system. Each perspective has different permissions and access to data. All info regarding the different types of "user roles" can be found within the source layer folder.

### Permissions:
Username, Password



Facility Managers:

* danielle.johnson.1.1.1@postal-demo.local, Emp-000001!
* tricia.roman.2.4.1@postal-demo.local, Emp-000005!
* richard.david.3.22.1@postal-demo.local, Emp-000008!
* laura.perez.4.7.1@postal-demo.local, Emp-000011!
* stacie.marshall.5.11.1@postal-demo.local, Emp-000015!

Administrative Office Employees (Report Analysts):

* lisa.silva.56.30.1@postal-demo.local, Emp-000163!
* jeff.bush.156.31.1@postal-demo.local, Emp-000460!
* jonathan.lawson.198.32.1@postal-demo.local, Emp-000584!
* benjamin.vazquez.410.33.1@postal-demo.local, Emp-001210!
* brittany.lozano.56.30.2@postal-demo.local, Emp-002452!

Department Managers:

* jesse.garcia.1.2.1@postal-demo.local, Emp-000002!
* jason.hahn.1.1091.1@postal-demo.local, Emp-000003!
* sherri.frazier.2.3.1@postal-demo.local, Emp-000004!
* timothy.hancock.3.21.1@postal-demo.local, Emp-000007!
* brandi.hernandez.4.6.1@postal-demo.local, Emp-000010!

Employees:

* anthony.gonzalez.1.1.2@postal-demo.local, Emp-002048!
* noah.howard.1.1.3@postal-demo.local, Emp-002049!
* nicole.ward.1.1.4@postal-demo.local, Emp-002050!
* jessica.martin.1.2.2@postal-demo.local, Emp-002051!
* reginald.robinson.1.1091.2@postal-demo.local, Emp-002052!


Customers:

* kevin.patel.0000366f@postal-demo.example, Cust-0000366f!
* elena.martinez.0000b849@postal-demo.example, Cust-0000b849!
* lauren.johnson.0000f46a@postal-demo.example, Cust-0000f46a!
* gabriela.taylor.0000f6cc@postal-demo.example, Cust-0000f6cc!
* gabriela.vasquez.0004aac8@postal-demo.example, Cust-0004aac8!



<h1 align="center">📋To-do List📋</h1>
---------------------------------------------------------

Here is a list of all flaws I have found in the project so far. I will be working on these issues in the coming weeks:


#### Synthetic Dataset
* Spread customers/packages across lesser counties. Larger counties like Harris and Dallas have too large of a monopoly.

* Ensure realistic incident/refund data.

* Expand to either a larger date range or larger geographical range if possible.


#### MySQL OLTP Database
* Normalize entire database to ensure all tables satisfy 1NF, 2NF, & 3NF
* Figure out a better formula to determine costs and revenue



#### Azure Data factory
* Redesign pipeline so that all scripts are an iterative program runs through each table individually. Scripts should utilize metadata so that the actual transformations depend on the table instead of being hardcoded.

#### ADLS Gen2
* Design strict data contracts to prevent schema drift and unforeseen changes.

#### Databricks
* Redesign pipeline so that all scripts are an iterative program runs through each table individually. Scripts should utilize metadata so that the actual transformations depend on the table instead of being hardcoded.
* Add better Databricks documentation


#### Azure Synapse
* Refactor db0 pipeline and data mart pipeline to be integrated as one process.



#### PowerBI
* Implement OLS/RLS that's based on the new web authentication layer.
	


---------------------------------------------------------
<h1 align="center">🏗️Warehouse Architecture🏗️</h1>




![Architecture Diagram](images/warehouse_architecture.drawio.svg)


<p align="center">
  <a href="images/warehouse_architecture.drawio.svg">Open full-size diagram</a>
</p>

---------------------------------------------------------

The architecture follows a layered flow from operational data creation to business intelligence consumption. The MySQL OLTP database and ASP.NET web application represent the source system, Azure Data Factory handles ingestion, ADLS Gen2 stores the data lake layers, Databricks performs cleaning and dimensional modeling, Synapse exposes SQL views over the gold layer, and Power BI provides the final reports.

This README gives only the high-level architecture. Each folder is intended to contain its own README with deeper details about the implementation, scripts, schemas, notebooks, reports, and design decisions.

<h1 align="center">🧱Architecture Layers🧱</h1>

### Source Layer

The source layer is built around a MySQL OLTP database that simulates the operational system of a postal company. It contains entities such as customers, businesses, facilities, departments, employees, packages, package movements, incidents, refunds, smart lockers, shipping details, shipping costs, user logins, roles, and user-role assignments.

The source design supports both Business-to-Customer and Peer-to-Peer package flows. It also includes business rules for facility hierarchy, employee department assignment, package movement events, incidents, refunds, and role-based web access.

### Staging / Ingestion Layer

Azure Data Factory is used to extract operational tables from MySQL and land them into cloud storage as raw bronze data. This layer is meant to preserve the source system structure while moving the data into the analytical environment.

The current version works as a batch-style ingestion process. A future improvement is to make the pipeline more metadata-driven so each table can be ingested, validated, and documented through a repeatable framework.

### Storage Layer

ADLS Gen2 stores the data lake layers used by the warehouse. The bronze layer represents raw ingested data, the silver layer represents cleaned and standardized data, and the gold layer represents business-ready dimensional data.

Databricks notebooks transform data across these layers. The bronze-to-silver process focuses on cleaning, standardization, type handling, and validation, while the silver-to-gold process reshapes the data into reporting-ready fact and dimension tables.

### Warehouse / Serving Layer

Azure Synapse serverless SQL is used as the serving layer for Power BI. Instead of importing directly from raw files, Power BI can connect to SQL views that sit on top of the gold Delta tables.

This layer also supports data mart organization. For example, financial reporting and logistical reporting can be separated into curated views so each report receives the tables and columns it needs without exposing every warehouse object.

### Presentation Layer

The presentation layer contains Power BI reports and the ASP.NET web application that exposes those reports to users. The goal is to make the warehouse usable through dashboards that answer practical business questions about revenue, cost, package flow, facility performance, incidents, refunds, and customer/package geography.

The web application adds an additional access layer by routing users to different pages based on their login role. The design prepares finance and logistics reports for scoped access based on the authenticated user's facility, department, employee, or customer context.




<h1 align="center">🔄Data Pipeline Flow🔄</h1>

1. Synthetic postal data is generated and loaded into the MySQL OLTP database.
2. Azure Data Factory extracts the source tables from MySQL.
3. Raw source data is written to ADLS Gen2 as the bronze layer.
4. Databricks cleans and standardizes the bronze data into the silver layer.
5. Databricks transforms silver tables into gold fact and dimension tables.
6. Synapse serverless SQL creates views over the gold Delta tables.
7. Power BI connects to Synapse views and builds financial and logistics reports.
8. The ASP.NET web application authenticates demo users and exposes pages or embedded reports based on their role and access scope.


<h1 align="center">🪙Data Model🪙</h1>

The operational model is designed around a postal business process. Facilities contain departments, departments contain employees, customers and businesses create package demand, packages move through facilities, movements can generate incidents, and incidents can lead to refunds. The source database also includes lookup and rule tables that help keep package status, movement events, staffing rules, and user roles consistent.

The warehouse gold layer converts this operational model into a BI-friendly star schema. The main fact tables include packages, package movements, shipping revenue/cost, incidents, refunds, and smart locker assignments. The main dimension tables include customer, business, date, geography, package, facility, department, employee, service type, package status, package flow type, incident type, refund status, and smart locker.



<h1 align="center">📊Reports & Dashboards📊</h1>

The Power BI layer is organized around financial reporting and logistical reporting. Financial reports focus on shipping revenue, cost, net revenue, gross margin, refunds, service type performance, customer/business behavior, and facility-level financial patterns.

Logistical reports focus on package volume, package movement history, facility operations, employee activity, delivery flow, incident tracking, refund root causes, and geographic distribution. The report layer is designed so future secure embeds can apply row-level security using the same user security context that powers the web application's authorization logic.


<h1 align="center">🌐Web Application🌐</h1>

The web application is an ASP.NET Web Forms application from a previous group project of mine (https://chatgpt.com/g/g-p-6a0a2c7c10688191869e803fac30df55-post-office-data-warehouse-demo/c/6a430ed1-ca28-83ea-990e-dbeaab2eb53f) where we had a Postal web application that was connected MySQL source database. It supported customer, employee, department manager, facility manager, report analyst, report admin, and web admin perspectives. Users log in through the application, and their access is derived from database-backed login, role, employee, customer, department, and facility context.

Changes we made to the original application include....
* We refactored authentication layer uses an `AuthService`, `CurrentUser` model, authorization helper methods, password verification, and a database-side security context view. Allowing th application to route customers to customer pages, employees to employee pages, and report users to financial or logistical reporting pages based on their role and scope.

To access the Web application: Click on the link [https://postalofficeportal-frgkd9fqd8a3cfc6.centralus-01.azurewebsites.net](https://post-office-bi-system-aefsgadccra3cffk.centralus-01.azurewebsites.net/Login)


<h1 align="center">🛠️Technology Stack🛠️</h1>

| Layer | Tools / Technologies | Purpose |
|---|---|---|
| Source System | MySQL, SQL stored procedures, triggers, views | Simulate the operational postal database |
| Synthetic Data | Olist-inspired e-commerce data, USPS/Texas-style geography assumptions | Create realistic customers, packages, locations, and order patterns |
| Web Application | ASP.NET Web Forms, C#, Bootstrap, MySQL Connector | Provide demo user workflows and role-aware access |
| Ingestion | Azure Data Factory | Move source tables into the data lake |
| Storage | ADLS Gen2 | Store bronze, silver, and gold data layers |
| Transformation | Azure Databricks, PySpark, Delta Lake | Clean, validate, and model data |
| Serving / Warehouse | Azure Synapse Serverless SQL | Expose SQL views over gold Delta tables |
| Reporting | Power BI Desktop / Power BI Service | Build financial and logistics dashboards |
| Deployment / DevOps | Azure App Service, GitHub Actions | Host and deploy the web application |



<h1 align="center">📁Repository Structure📁</h1>

```text
.
├── README.md
├── images/
│   └── warehouse_architecture.drawio.svg
├── COSCPFWA/
│   ├── COSCPFWA.sln
│   ├── COSCPFWA/
│   │   ├── Login.aspx
│   │   ├── CustomerDashboard.aspx
│   │   ├── EmployeeDashboard.aspx
│   │   ├── AdminDashboard.aspx
│   │   ├── FinancialReport.aspx
│   │   ├── DataReportRequest.aspx
│   │   ├── Models/
│   │   ├── Security/
│   │   ├── Services/
│   │   └── Web.config
│   └── WeeklyRiskNotification/
└── data_warehouse/
    ├── source_layer/
    │   └── README.md
    ├── storage_layer/
    │   └── Databricks/
    │       └── Notebooks/
    │           ├── bronze to silver - Alpha.ipynb
    │           └── silver to gold - Beta.ipynb
    └── presentation_layer/
        ├── PowerBI Security Context.txt
        └── PowerBI/
            ├── Postal Financial Reports.pbix
            ├── Postal Logistic Reports.pbix
            └── Postal Master File.pbix
```

The root README is intended to explain the overall project at a high level. More specific README files should be added inside each major folder to document source data generation, MySQL schema design, ADF ingestion, Databricks transformations, Synapse views, Power BI reports, and the ASP.NET web application.

---





<h1 align="center">✅ Current Status ✅</h1>

The project currently has a working rough draft across the full data platform flow: MySQL source database, ADF-style ingestion, ADLS medallion storage, Databricks transformations, gold fact/dimension tables, Synapse views, Power BI reports, and a deployed ASP.NET web application. The main value of the project is that it demonstrates how multiple tools can work together to turn a transactional application into a business intelligence platform.

The next phase is focused on polish: better automation, cleaner documentation, stronger security modeling, more realistic synthetic data, improved cost/revenue formulas, and better separation between source-system logic and analytics-layer logic.
