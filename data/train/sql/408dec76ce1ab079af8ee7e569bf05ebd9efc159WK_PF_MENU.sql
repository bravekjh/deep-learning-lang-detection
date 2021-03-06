--------------------------------------------------------
--  DDL for Table WK_PF_MENU
--------------------------------------------------------

  CREATE TABLE "WK_PF_MENU" 
   (	"LVL" NUMBER(*,0), 
	"LABEL" NVARCHAR2(100), 
	"PAGE_ID" NVARCHAR2(50), 
	"IS_CURRENT_LIST_ENTRY" NVARCHAR2(255), 
	"IMAGE" NVARCHAR2(255), 
	"IMAGE_ATTRIBUTE" NVARCHAR2(255), 
	"IMAGE_ALT_ATTRIBUTE" NVARCHAR2(255), 
	"ORDER1" NUMBER(*,0), 
	"MENU_ID" NUMBER(*,0), 
	"ORDER2" NUMBER(*,0), 
	"TREATM_GROUP_ID" NUMBER(*,0), 
	"APEX_VARIABLE" NVARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
