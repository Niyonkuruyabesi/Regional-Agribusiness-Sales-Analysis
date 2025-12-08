PHASE II: Business Process Modeling
This business process models how AgriPlus Rwanda receives customer orders, records sales transactions, manages payments, and generates analytics using the MIS. The process begins when a customer (retailer, cooperative, or wholesaler) places an order for agricultural products such as seeds, fertilizers, or crop chemicals. The Sales Department validates the order, checks the customer’s region, verifies product availability, calculates the total amount, and inserts the sale into the sales table.
Once the sale is created, the Finance Department becomes responsible for recording the corresponding payment into the payments table. Depending on the amount paid, the system updates the payment status as Paid, Pending, or Partial. If payment is incomplete, the MIS flags the transaction for financial follow-up.
Throughout the process, the MIS stores data across multip
le tables including customers, regions, products, sales, and payments. This data feeds the analytics engine, which identifies top-selling products per region, best-performing customers, payment trends, and outstanding balances. These analytics help management make informed decisions on marketing, stock distribution, and financial planning.
Using BPMN swimlanes ensures clear responsibility separation across Customer, Sales, Finance, and MIS departments. The process includes start/end events, decision gateways, data flows, and sequential activities, ensuring a logical and complete workflow from order initiation to analytical reporting.


