create table customers (
id serial primary key,
first_name varchar(100),
last_name varchar(200),
email varchar(300)
)
create table items (
id serial primary key,
name varchar(200),
sku varchar(50),
inventory integer
)
create table purchases (
id serial primary key,
item_id integer references items(id),
purchase_qty integer
)

-- create a couple customers
INSERT into customers(first_name, last_name, email) 
VALUES ('John', 'Smith', 'jsmith@email.com'),
('Bob', 'Robertson', 'bobistheman@bob.com');

-- create some items that customers can purchase
INSERT into items(name, sku, inventory)
VALUES ('chair', 'A100', 50),
('ottoman', 'A101', 5),
('table', 'A102', 10),
('bench', 'A103', 19);

-- create a purchase
INSERT into purchases(item_id, purchase_qty)
VALUES (4, 1);

