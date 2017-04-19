
CREATE TABLE 'customers' ('id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
						 'password' VARCHAR NOT NULL,
						 'firstName' VARCHAR NOT NULL,
						 'lastName' VARCHAR NOT NULL,
						 'ctime' INTEGER NOT NULL,
						 'mtime' INTEGER NOT NULL,
						 'lastLogin' INTEGER NOT NULL,
						 'email' VARCHAR UNIQUE NOT NULL,
						 'tel' CHAR);
						 

CREATE TABLE 'users' ('id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
						 'password' VARCHAR NOT NULL,
						 'firstName' VARCHAR NOT NULL,
						 'lastName' VARCHAR NOT NULL,
						 'ctime' INTEGER NOT NULL,
						 'mtime' INTEGER NOT NULL,
						 'lastLogin' INTEGER NOT NULL,
						 'email' VARCHAR UNIQUE NOT NULL,
						 'tel' CHAR,
			 			 'role' CHAR NOT NULL);

CREATE TABLE 'orders' ('id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
		      		'ctime' INTEGER NOT NULL,
					'mtime' INTEGER NOT NULL,
					'status' INTEGER DEFAULT '1' NOT NULL,
					'cid' INTEGER NOT NULL,
					'address' VARCHAR NOT NULL,
		      		'arriveTime' INTEGER);
					  
CREATE TABLE 'addresses' ('address' VARCHAR NOT NULL,
						'cid' INTEGER NOT NULL);
						
CREATE TABLE 'credit_cards' ('card_num' CHAR PRIMARY KEY NOT NULL,
							'validateCode' CHAR NOT NULL,
							'cid' INTEGER NOT NULL);
							
CREATE TABLE 'product_models' ('id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
						'modelName' VARCHAR NOT NULL,
						'primaryPrice' INTEGER NOT NULL,
						'screenSize' INTEGER NOT NULL);
						
CREATE TABLE 'mod_consist_acc' ('modelId' INTEGER NOT NULL,
								'aid' INTEGER NOT NULL);
								
CREATE TABLE 'pro_consist_acc' ('pid' INTEGER NOT NULL,
								'aid' INTEGER NOT NULL);
								
CREATE TABLE 'cart_items' ('id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
					 'cid' INTEGER NOT NULL,
					 'eid' INTEGER NOT NULL);
					 
CREATE TABLE 'products' ('id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
							'ctime' INTEGER NOT NULL,
							'mtime' INTEGER NOT NULL,
							'status' INTEGER DEFAULT '1' NOT NULL,
			 				'modelId' INTEGER NOT NULL,
							'oid' INTEGER NOT NULL,
							'serialNumber' VARCHAR UNIQUE NOT NULL);
							
CREATE TABLE 'suppliers' ('id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
						 'email' VARCHAR UNIQUE NOT NULL,
						 'tele' CHAR NOT NULL, 'address' VARCHAR NOT NULL);
						 
CREATE TABLE 'accessories' ('id' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
						  'modelName' VARCHAR NOT NULL,
						  'purchasePrice' DOUBLE NOT NULL,
						  'quantity' INTEGER NOT NULL,
						  'type' VARCHAR NOT NULL,
						  'supplierId' INTEGER NOT NULL);
