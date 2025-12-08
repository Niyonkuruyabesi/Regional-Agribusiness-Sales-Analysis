# **Logical Model Design**

### 

### **Normalization**

#### 

1. #### **Eliminate Repeating Groups (1NF)**



My  tables already follow 1NF:



customers has one value per field (one region, one phone, one customer name)



products has one product name, one category, and a single numeric price



sales stores one product per sale record



payments stores one payment record per sale





Each table contains atomic, non-repeating values → 1NF satisfied



**1NF satisfied**





#### 2\. **Eliminate Partial Dependencies (2NF)**



Table must already be in 1NF





In my schema, all tables use single-column primary keys:



region\_id



customer\_id



product\_id



sale\_id



payment\_id



No non-key attribute partially depends on a key → 2NF satisfied



**2NF satisfied**





#### **3. Eliminate Transitive Dependencies (3NF)**

#### 

Must already be in 2NF



No transitive dependencies → 3NF satisfied



**3NF satisfied**









### **DATA DICTIONARY**

### 

This section describes all database objects used in the Regional Agricultural Sales Analysis System.

&nbsp;It includes the structure of each table, data types, constraints, and assumptions supporting the implementation.



#### **1. TABLE: regions**

Column Name	Data Type	Description	Constraints

region\_id	NUMBER(5)	Unique region identifier	Primary Key (PK)

region\_name	VARCHAR2(50)	Name of the region	NOT NULL, UNIQUE

Constraints



PK\_regions: PRIMARY KEY (region\_id)



U\_regions\_name: UNIQUE(region\_name)

#### 

#### **2. TABLE: customers**

Column Name	Data Type	Description	Constraints

customer\_id	NUMBER(6)	Unique customer identifier	Primary Key (PK)

customer\_name	VARCHAR2(60)	Full customer name	NOT NULL

region\_id	NUMBER(5)	Customer region	Foreign Key (FK) to regions

contact\_number	VARCHAR2(20)	Customer phone	NOT NULL

category	VARCHAR2(30)	Customer type	CHECK (category IN ('Retailer','Wholesaler','Cooperative'))

Constraints



PK\_customers: PRIMARY KEY (customer\_id)



FK\_customer\_region: FOREIGN KEY (region\_id) REFERENCES regions(region\_id)



#### **3. TABLE: products**

Column Name	Data Type	Description	Constraints

product\_id	NUMBER(5)	Unique product identifier	Primary Key (PK)

product\_name	VARCHAR2(50)	Product name	NOT NULL

category	VARCHAR2(30)	Product category	NOT NULL

unit\_price	NUMBER(10,2)	Price per unit	CHECK (unit\_price > 0)

Constraints



PK\_products: PRIMARY KEY (product\_id)



#### **4. TABLE: sales**

Column Name	Data Type	Description	Constraints

sale\_id	NUMBER(10)	Sale transaction ID	Primary Key (PK)

customer\_id	NUMBER(6)	Customer making purchase	Foreign Key (FK) to customers

product\_id	NUMBER(5)	Product purchased	Foreign Key (FK) to products

region\_id	NUMBER(5)	Region of the sale	Foreign Key (FK) to regions

sale\_date	DATE	Date of sale	NOT NULL

quantity	NUMBER(10,2)	Quantity sold	CHECK (quantity > 0)

total\_amount	NUMBER(12,2)	Quantity × unit price	CHECK (total\_amount >= 0)

Constraints



PK\_sales: PRIMARY KEY (sale\_id)



FK\_sales\_customer: FOREIGN KEY (customer\_id) REFERENCES customers(customer\_id)



FK\_sales\_product: FOREIGN KEY (product\_id) REFERENCES products(product\_id)



FK\_sales\_region: FOREIGN KEY (region\_id) REFERENCES regions(region\_id)



#### **5. TABLE: payments**

Column Name	Data Type	Description	Constraints

payment\_id	NUMBER(10)	Payment record ID	Primary Key (PK)

sale\_id	NUMBER(10)	Payment linked to sale	Foreign Key (FK) to sales

payment\_date	DATE	Date of payment	NOT NULL

payment\_method	VARCHAR2(20)	Payment method	CHECK(payment\_method IN ('Cash','Bank','Mobile Money'))

amount\_paid	NUMBER(12,2)	Paid amount	CHECK(amount\_paid >= 0)

payment\_status	VARCHAR2(20)	Payment status	CHECK(payment\_status IN ('Paid','Pending','Partial'))

Constraints



PK\_payments: PRIMARY KEY (payment\_id)



FK\_payment\_sale: FOREIGN KEY (sale\_id) REFERENCES sales(sale\_id)





### 

### **6. ASSUMPTIONS**



To support database design, the following assumptions were made:



#### **6.1 Regional Structure**



Each customer belongs to exactly one region.



Region names are unique across Rwanda.



#### **6.2 Customers**



Customer identifiers are system-generated.



Customer categories are limited to Retailer, Wholesaler, Cooperative.



Customer contact numbers are stored in a standard format.



#### **6.3 Products**



Unit price is constant for each product during the recorded period.



Product category follows agribusiness classifications (e.g., cereals, vegetables).



##### **6.4 Sales**

##### 

Each sale record is associated with one customer, one product, one region.



total\_amount is always calculated by the database as:



total\_amount = quantity × unit\_price





quantity represents measurable units (kg, tons, liters, etc.).



#### **6.5 Payments**



Each payment is associated with one sale, but a sale may have multiple payments.



Supported payment methods are Cash, Bank, Mobile Money.



Payment status indicates:



Paid – fully settled



Pending – no payment yet



Partial – partially paid



#### **6.6 General**



Dates use Oracle DATE format.



Numeric precision supports realistic agribusiness values.



Primary keys are numeric auto-generated or assigned by sequence.

