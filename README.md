README

<h1 align="center">📝Overview📝</h1>
---------------------------------------------------------
Get Started:

To access the Web application: Click on the link [https://postalofficeportal-frgkd9fqd8a3cfc6.centralus-01.azurewebsites.net](https://post-office-bi-system-aefsgadccra3cffk.centralus-01.azurewebsites.net/Login)



---------------------------------------------------------
Within our web application, you can log in with the following credentials to view different perspectives of the system. Each perspective has different permissions and access to data. All info regarding the different types of "user roles" can be found within the source layer folder.

### Permissions:
Username, Password

Administrative Office Employees:
- 


Facility Managers:

* danielle.johnson.1.1.1@postal-demo.local, Emp-000001!
* tricia.roman.2.4.1@postal-demo.local, Emp-000005!
* richard.david.3.22.1@postal-demo.local, Emp-000008!
* laura.perez.4.7.1@postal-demo.local, Emp-000011!
* stacie.marshall.5.11.1@postal-demo.local, Emp-000015!

Report Analysts:

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


Synthetic Dataset
	- Spread customers/packages across lesser counties. Larger counties like Harris and Dallas have too large of a monopoly.
	- Ensure realistic incident/refund data.
	- Expand to either a larger date range or larger geographical range if possible.


MySQL OLTP Database
	- Normalize entire database to ensure all tables satisfy 1NF, 2NF, & 3NF
	- Figure out a better formula to determine costs and revenue



Azure Data factory
	- Redesign pipeline so that all scripts are an iterative program runs through each table individually. Scripts should utilize metadata so that the actual transformations depend on the table instead of being hardcoded.

ADLS Gen2
	- Design strict data contracts to prevent schema drift and unforeseen changes.

Databricks
	- Redesign pipeline so that all scripts are an iterative program runs through each table individually. Scripts should utilize metadata so that the actual transformations depend on the table instead of being hardcoded.
	- Add better Databricks documentation


Azure Synapse
	- Refactor db0 pipeline and data mart pipeline to be integrated as one process.



PowerBI
	- Implement OLS/RLS that's based on the new web authentication layer.
	

<h1 align="center">🎯Project Goals🎯</h1>
---------------------------------------------------------

* Build an end-to-end data warehouse pipeline from OLTP source data to BI reporting
* Simulate realistic postal operations such as packages, movements, facilities, incidents, refunds, and revenue
* Use a medallion-style architecture: source, staging, storage, warehouse, and presentation
* Create Power BI dashboards for financial and logistical reporting
* Prepare the system for web application embedding


---------------------------------------------------------
<h1 align="center">🏗️Warehouse Architecture🏗️</h1>




![Architecture Diagram](images/warehouse_architecture.drawio.svg)


<p align="center">
  <a href="images/warehouse_architecture.drawio.svg">Open full-size diagram</a>
</p>

---------------------------------------------------------



<h1 align="center">🧱Architecture Layers🧱</h1>
Overview
--------
Add stuff here




<h1 align="center">🔄Data Pipeline Flow🔄</h1>
Overview
--------
Add stuff here


<h1 align="center">🪙Data Model🪙</h1>
Overview
--------
Add stuff here



<h1 align="center">📊Reports & Dashboards📊</h1>
Overview
--------
Add stuff here


<h1 align="center">🌐Web Application🌐</h1>
Overview
--------
Add stuff here


<h1 align="center">🛠️Technology Stack🛠️</h1>
Overview
--------
Add stuff here


<h1 align="center">📁Repository Structure📁</h1>
Overview
--------
Add stuff here






