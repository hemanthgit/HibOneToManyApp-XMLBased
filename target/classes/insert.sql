--------------------------------------------------------
--  DDL for Table ITEM
--------------------------------------------------------

  CREATE TABLE "ITEM" 
   (	"ID" NUMBER(20,0), 
	"NAME" VARCHAR2(20 BYTE), 
	"QUANTITY" NUMBER(20,0), 
	"CART_ID" NUMBER(20,0)
   )  ;
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "CART" 
   (	"ID" NUMBER(20,0), 
	"NAME" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Index ITEM_PK
--------------------------------------------------------
  CREATE UNIQUE INDEX "ITEM_PK" ON "ITEM" ("ID") ;
--------------------------------------------------------
--  Constraints for Table ITEM
--------------------------------------------------------
  ALTER TABLE "ITEM" ADD CONSTRAINT "ITEM_PK" PRIMARY KEY ("ID");
  ALTER TABLE "ITEM" MODIFY ("ID" NOT NULL ENABLE);
  --------------------------------------------------------
--  DDL for Index CART_PK
--------------------------------------------------------
  CREATE UNIQUE INDEX "CART_PK" ON "CART" ("ID") ;
--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------
  ALTER TABLE "CART" ADD CONSTRAINT "CART_PK" PRIMARY KEY ("ID");
  ALTER TABLE "CART" MODIFY ("ID" NOT NULL ENABLE);
  
Insert into SYSTEM.ITEM (ID,NAME,QUANTITY,CART_ID) values (1,'shirt',5,1);
Insert into SYSTEM.ITEM (ID,NAME,QUANTITY,CART_ID) values (2,'mobile',3,1);
Insert into SYSTEM.ITEM (ID,NAME,QUANTITY,CART_ID) values (3,'shoe',2,2);
Insert into SYSTEM.ITEM (ID,NAME,QUANTITY,CART_ID) values (4,'book',6,2);

Insert into SYSTEM.CART (ID,NAME) values (1,'Flipkart');
Insert into SYSTEM.CART (ID,NAME) values (2,'Amazon');
Insert into SYSTEM.CART (ID,NAME) values (3,'Paytm');
