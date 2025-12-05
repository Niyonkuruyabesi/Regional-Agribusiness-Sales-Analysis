# AgriPlus Rwanda MIS Business Process Modeling

## Project Overview
This project models the business process of **AgriPlus Rwanda** using **Business Process Modeling Notation (BPMN)** and **swimlanes**. The focus is on the **Management Information System (MIS)** that supports order processing, sales management, payment tracking, and analytics reporting. The model illustrates the complete workflow from customer order initiation to data-driven decision-making.

## Objective
The objective of this phase is to clearly model and document business processes relevant to the MIS, ensuring:
- Accurate tracking of orders and sales
- Efficient payment management
- Timely generation of actionable analytics
- Clear assignment of responsibilities across departments

## Scope
This process covers:
- **Order processing:** Receiving and validating customer orders
- **Sales transaction management:** Recording orders in the sales system
- **Payment management:** Tracking and updating payment status
- **MIS analytics:** Generating reports on top-selling products, payment trends, and customer performance

## Key Entities
- **Users:**
  - Customers (retailers, cooperatives, wholesalers)
  - Employees (Sales and Finance staff)
- **Departments/Systems:**
  - Sales Department
  - Finance Department
  - MIS/Analytics System
- **Data Sources:**
  - Customers, Regions, Products, Sales, Payments tables

## Roles and Responsibilities
- **Customer:** Initiates order request  
- **Sales Department:** Validates order, checks stock, calculates total, records sales  
- **Finance Department:** Records payment, updates payment status, flags incomplete payments  
- **MIS:** Stores transaction data, generates analytics, supports management decisions  

## Process Design
- **Swimlanes:** Clearly separate responsibilities across Customer, Sales, Finance, and MIS  
- **BPMN Elements:** Start/end events, decision gateways, data flows, and sequential activities  
- **Flow:** 
  1. Customer places order  
  2. Sales validates and records order  
  3. Finance records payment and updates status  
  4. MIS generates analytics reports for management  

## Documentation & Analytical Insights
- **MIS Functions:** Supports decision-making, monitors stock levels, tracks payments, identifies top-performing products and customers  
- **Organizational Impact:** Streamlines operations, reduces errors, improves financial tracking, and enhances strategic planning  
- **Analytics Opportunities:**  
  - Product demand per region  
  - Payment trends  
  - Outstanding balances and follow-ups  

## Tools Used
BPMN.io  

## Deliverables
- **BPMN Diagram:** GitHub repository includes the diagram with swimlanes  
- **Explanation Document:** One-page summary of the business process, MIS role, and organizational impact  
