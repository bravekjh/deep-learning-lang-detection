--------------------------------------------------------
--  DDL for Table LIBRARY_BOOK
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."LIBRARY_BOOK" 
   (	"BOOK_NAME" VARCHAR2(200 BYTE), 
	"BOOK_ID" VARCHAR2(15 BYTE), 
	"AUTHOR" VARCHAR2(100 BYTE), 
	"PRICE_BOOK" NUMBER(10,0), 
	"TYPE" VARCHAR2(100 BYTE), 
	"PUBLISHER" VARCHAR2(50 BYTE), 
	"YEAR_OF_PUBLICATION" VARCHAR2(20 BYTE), 
	"NUMBER_OF_BOOK" NUMBER(5,0), 
	"STATUS" VARCHAR2(20 BYTE), 
	"ISBN" VARCHAR2(15 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
