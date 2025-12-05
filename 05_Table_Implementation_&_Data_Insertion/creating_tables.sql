CREATE TABLE regions (
    region_id      NUMBER(5)      CONSTRAINT pk_regions PRIMARY KEY,
    region_name    VARCHAR2(50)   CONSTRAINT uq_region_name UNIQUE NOT NULL
);




CREATE TABLE customers (
    customer_id     NUMBER(6)     CONSTRAINT pk_customers PRIMARY KEY,
    customer_name   VARCHAR2(60)  NOT NULL,
    region_id       NUMBER(5)     CONSTRAINT fk_cust_region REFERENCES regions(region_id),
    contact_number  VARCHAR2(20),
    category        VARCHAR2(30)
);


CREATE TABLE products (
    product_id     NUMBER(5)      CONSTRAINT pk_products PRIMARY KEY,
    product_name   VARCHAR2(50)   NOT NULL,
    category       VARCHAR2(30)   CHECK (category IN ('Cereals','Vegetables','Cash Crop','Legumes','Fruits','Livestock','Horticulture')),
    unit_price     NUMBER(10,2)   CONSTRAINT chk_price CHECK (unit_price > 0)
);


CREATE TABLE sales (
    sale_id       NUMBER(10)     CONSTRAINT pk_sales PRIMARY KEY,
    customer_id   NUMBER(6)      CONSTRAINT fk_sale_customer REFERENCES customers(customer_id),
    product_id    NUMBER(5)      CONSTRAINT fk_sale_product REFERENCES products(product_id),
    region_id     NUMBER(5)      CONSTRAINT fk_sale_region REFERENCES regions(region_id),
    sale_date     DATE           DEFAULT SYSDATE NOT NULL,
    quantity      NUMBER(10,2)   CHECK (quantity > 0),
    total_amount  NUMBER(12,2)   DEFAULT 0
);


CREATE TABLE payments (
    payment_id      NUMBER(10)    CONSTRAINT pk_payments PRIMARY KEY,
    sale_id         NUMBER(10)    CONSTRAINT fk_payment_sale REFERENCES sales(sale_id),
    payment_date    DATE          DEFAULT SYSDATE,
    payment_method  VARCHAR2(20),
    amount_paid     NUMBER(12,2),
    payment_status  VARCHAR2(20)
);
