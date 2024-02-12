create table master.dbo.users (
	uuid UNIQUEIDENTIFIER  PRIMARY KEY default NEWID(),
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	password varchar(255) NOT NULL,
	role varchar(5) NOT NULL, 
	account_non_expired bit NOT NULL default 1,
	account_non_locked bit NOT NULL default 1,
	credentials_non_expired bit NOT NULL default 1,
	enabled bit NOT NULL default 1,
	
	CONSTRAINT AK_email UNIQUE(email)
);

create table master.dbo.clients (
	uuid UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	address varchar(255) NOT NULL,
	phone_number varchar(255) NOT NULL
);

create table master.dbo.stores (
	uuid UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
	name varchar(255) NOT NULL
);

create table master.dbo.trucks (
	hawa UNIQUEIDENTIFIER PRIMARY KEY default NEWID(),
	description varchar(255) NOT NULL,
	quantity INT NOT NULL,
	price FLOAT NOT NULL,
	discount FLOAT NOT NULL
);

CREATE TABLE master.dbo.orders (
	uuid UNIQUEIDENTIFIER  PRIMARY KEY default NEWID(),
	store_uuid UNIQUEIDENTIFIER NOT NULL,
	user_uuid UNIQUEIDENTIFIER NOT NULL,
	client_uuid UNIQUEIDENTIFIER NOT NULL,
	sale_date DATETIME NOT NULL default CURRENT_TIMESTAMP,
	ip VARCHAR(255) NOT NULL,
	status TINYINT NOT NULL,
	subtotal FLOAT NOT NULL,
	total FLOAT NOT NULL,
	--CONSTRAINT FK_store_uuid FOREIGN KEY(store_uuid) REFERENCES master.dbo.stores (uuid) ON UPDATE CASCADE,
	--CONSTRAINT FK_user_uuid FOREIGN KEY(user_uuid) REFERENCES master.dbo.users (uuid) ON UPDATE CASCADE,
	--CONSTRAINT FK_client_uuid FOREIGN KEY(client_uuid) REFERENCES master.dbo.clients (uuid) ON UPDATE CASCADE
);

CREATE TABLE master.dbo.order_truck (
	id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	order_uuid UNIQUEIDENTIFIER NOT NULL,
	hawa UNIQUEIDENTIFIER NOT NULL,
	quantity INT NOT NULL,
	price FLOAT NOT NULL,
	discount FLOAT NOT NULL,
	subtotal FLOAT NOT NULL,
	total FLOAT NOT NULL,
	
	--CONSTRAINT FK_order_uuid FOREIGN KEY (order_uuid) REFERENCES master.dbo.orders (uuid) ON UPDATE CASCADE,
	--CONSTRAINT FK_hawa FOREIGN KEY (hawa) REFERENCES master.dbo.trucks (hawa) ON UPDATE CASCADE
);

--drop TABLE master.dbo.order_truck;
--drop table master.dbo.orders; 
--drop table master.dbo.users;
--drop TABLE master.dbo.clients;
--drop TABLE master.dbo.stores;
--drop TABLE master.dbo.trucks;


