-- reset tables
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS campaign;

-- create tables
CREATE TABLE contacts (
    contact_id int NOT NULL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE category (
    category_id VARCHAR(10) NOT NULL PRIMARY KEY,
    category VARCHAR(100)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) NOT NULL PRIMARY KEY,
    subcategory VARCHAR(100)
);

CREATE TABLE campaign (
    cf_id int NOT NULL PRIMARY KEY,
    contact_id int,
    company_name VARCHAR(100),
    description VARCHAR(256),
    goal NUMERIC(10,2),
    pledged NUMERIC(10,2),
    outcome VARCHAR(100),
    backers_count int,
    country VARCHAR(2),
    currency VARCHAR(3),
    category_id VARCHAR(10),
    subcategory_id VARCHAR(10),
    FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
    FOREIGN KEY (category_id) REFERENCES category (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);