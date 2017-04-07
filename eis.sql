DROP TABLE IF EXISTS 'Customer';
DROP TABLE IF EXISTS 'Order';
DROP TABLE IF EXISTS 'Address';
DROP TABLE IF EXISTS 'CreditCard';
DROP TABLE IF EXISTS 'Product';
DROP TABLE IF EXISTS 'Pro_consist_Acc';
DROP TABLE IF EXISTS 'End_consist_Acc';
DROP TABLE IF EXISTS 'Cart';
DROP TABLE IF EXISTS 'EndProduct';
DROP TABLE IF EXISTS 'Supplier';
DROP TABLE IF EXISTS 'Accessory';

CREATE TABLE 'Customer' ('cid' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
						 'password' VARCHAR NOT NULL,
						 'first_name' VARCHAR NOT NULL,
						 'last_name' VARCHAR NOT NULL,
						 'create_time' DATETIME NOT NULL,
						 'modify_time' DATETIME NOT NULL,
						 'last_login' DATETIME NOT NULL,
						 'email' VARCHAR UNIQUE NOT NULL,
						 'tel' CHAR);
						 

CREATE TABLE 'Order' ('oid' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
		      			'create_time' DATETIME NOT NULL,
					'modify_time' DATETIME NOT NULL,
					'status' INTEGER DEFAULT '1' NOT NULL,
					'cid' INTEGER NOT NULL);
					  
CREATE TABLE 'Address' ('address' VARCHAR NOT NULL,
						'cid' INTEGER NOT NULL);
						
CREATE TABLE 'CreditCard' ('card_num' CHAR PRIMARY KEY NOT NULL,
							'validate_code' CHAR NOT NULL,
							'cid' INTEGER NOT NULL);
							
CREATE TABLE 'Product' ('pid' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
						'model_name' VARCHAR NOT NULL,
						'primary_price' INTEGER NOT NULL,
						'screen_size' INTEGER NOT NULL);
						
CREATE TABLE 'Pro_consist_Acc' ('pid' INTEGER NOT NULL,
								'aid' INTEGER NOT NULL);
								
CREATE TABLE 'End_consist_Acc' ('eid'  NOT NULL,
								'aid'  NOT NULL);
								
CREATE TABLE 'Cart' ('cart_id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
					 'cid' INTEGER NOT NULL,
					 'eid' INTEGER NOT NULL);
					 
CREATE TABLE 'EndProduct' ('eid' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
							'status' INTEGER DEFAULT '1' NOT NULL,
							'oid' INTEGER NOT NULL,
							'serial_number' VARCHAR UNIQUE NOT NULL);
							
CREATE TABLE 'Supplier' ('supplier_id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
						 'email' VARCHAR UNIQUE NOT NULL,
						 'tele' CHAR NOT NULL, 'address' VARCHAR NOT NULL);
						 
CREATE TABLE 'Accessory' ('aid' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
						  'model_name' VARCHAR NOT NULL,
						  'purchase_price' DOUBLE NOT NULL,
						  'quantity' INTEGER NOT NULL,
						  'type' VARCHAR NOT NULL,
						  'supplier_id' INTEGER NOT NULL);
