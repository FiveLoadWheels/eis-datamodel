
CREATE TABLE 'customers' ('id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
						 'password' VARCHAR NOT NULL,
						 'first_name' VARCHAR NOT NULL,
						 'last_name' VARCHAR NOT NULL,
						 'ctime' DATETIME NOT NULL,
						 'mtime' DATETIME NOT NULL,
						 'last_login' DATETIME NOT NULL,
						 'email' VARCHAR UNIQUE NOT NULL,
						 'tel' CHAR);
						 

CREATE TABLE 'personnel' ('id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
						 'password' VARCHAR NOT NULL,
						 'first_name' VARCHAR NOT NULL,
						 'last_name' VARCHAR NOT NULL,
						 'ctime' DATETIME NOT NULL,
						 'mtime' DATETIME NOT NULL,
						 'last_login' DATETIME NOT NULL,
						 'email' VARCHAR UNIQUE NOT NULL,
						 'tel' CHAR,
			 			 'role' CHAR NOT NULL);

CREATE TABLE 'orders' ('id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
		      			'ctime' DATETIME NOT NULL,
					'mtime' DATETIME NOT NULL,
					'status' INTEGER DEFAULT '1' NOT NULL,
					'cid' INTEGER NOT NULL);
					  
CREATE TABLE 'addresses' ('address' VARCHAR NOT NULL,
						'cid' INTEGER NOT NULL);
						
CREATE TABLE 'credit_cards' ('card_num' CHAR PRIMARY KEY NOT NULL,
							'validate_code' CHAR NOT NULL,
							'cid' INTEGER NOT NULL);
							
CREATE TABLE 'product_models' ('id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
						'model_name' VARCHAR NOT NULL,
						'primary_price' INTEGER NOT NULL,
						'screen_size' INTEGER NOT NULL);
						
CREATE TABLE 'pro_consist_acc' ('pid' INTEGER NOT NULL,
								'aid' INTEGER NOT NULL);
								
CREATE TABLE 'end_consist_acc' ('eid'  NOT NULL,
								'aid'  NOT NULL);
								
CREATE TABLE 'cart_items' ('id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
					 'cid' INTEGER NOT NULL,
					 'eid' INTEGER NOT NULL);
					 
CREATE TABLE 'products' ('id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
							'status' INTEGER DEFAULT '1' NOT NULL,
							'oid' INTEGER NOT NULL,
							'serial_number' VARCHAR UNIQUE NOT NULL);
							
CREATE TABLE 'suppliers' ('id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
						 'email' VARCHAR UNIQUE NOT NULL,
						 'tele' CHAR NOT NULL, 'address' VARCHAR NOT NULL);
						 
CREATE TABLE 'accessories' ('id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
						  'model_name' VARCHAR NOT NULL,
						  'purchase_price' DOUBLE NOT NULL,
						  'quantity' INTEGER NOT NULL,
						  'type' VARCHAR NOT NULL,
						  'supplier_id' INTEGER NOT NULL);
