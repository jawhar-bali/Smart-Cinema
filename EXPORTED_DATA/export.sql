--------------------------------------------------------
--  File created - Tuesday-February-16-2021   
--------------------------------------------------------
DROP TABLE "SYSTEM"."CLIENTS";
DROP TABLE "SYSTEM"."EMPLOYEES";
DROP TABLE "SYSTEM"."MOVIES";
DROP TABLE "SYSTEM"."SHOWS";
DROP TABLE "SYSTEM"."TABLEIMAGE";
DROP TABLE "SYSTEM"."SUBSCRIPTIONS";
DROP TABLE "SYSTEM"."THEATRES";
DROP TABLE "SYSTEM"."TICKETS";
DROP TABLE "SYSTEM"."USERS";
--------------------------------------------------------
--  DDL for Table CLIENTS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CLIENTS" 
   (	"ID" NUMBER(*,0), 
	"NAME" VARCHAR2(200 BYTE), 
	"EMAIL" VARCHAR2(200 BYTE), 
	"SUBSCRIPTION_ID" NUMBER(*,0), 
	"SUBSCRIPTION_DATE" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EMPLOYEES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."EMPLOYEES" 
   (	"ID" NUMBER(*,0), 
	"NAME" VARCHAR2(200 BYTE), 
	"EMAIL" VARCHAR2(200 BYTE), 
	"USERNAME" VARCHAR2(200 BYTE), 
	"PASSWORD" VARCHAR2(200 BYTE), 
	"ROLE" VARCHAR2(20 BYTE), 
	"IMAGELINK" VARCHAR2(400 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MOVIES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MOVIES" 
   (	"ID" VARCHAR2(200 BYTE), 
	"NAME" VARCHAR2(200 BYTE), 
	"TYPE" VARCHAR2(200 BYTE), 
	"DESCRIPTION" VARCHAR2(200 BYTE), 
	"DUB_LANGUAGE" VARCHAR2(20 BYTE), 
	"SUB_LANGUAGE" VARCHAR2(20 BYTE), 
	"PRICE" VARCHAR2(200 BYTE), 
	"IMAGELINK" VARCHAR2(200 BYTE), 
	"DURATION" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SHOWS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SHOWS" 
   (	"ID" NUMBER, 
	"THEATRE_ID" VARCHAR2(20 BYTE), 
	"MOVIE_ID" VARCHAR2(20 BYTE), 
	"START_DATE" VARCHAR2(200 BYTE), 
	"RESERVED_SEATS" NUMBER(*,0), 
	"RESERVED_SEATS_VIP" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TABLEIMAGE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."TABLEIMAGE" 
   (	"COLUMN1" BFILE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SUBSCRIPTIONS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SUBSCRIPTIONS" 
   (	"ID" NUMBER(*,0), 
	"NAME" VARCHAR2(200 BYTE), 
	"PRICE" NUMBER(*,0), 
	"NUMBER_OF_DAYS" NUMBER(*,0), 
	"FREE_FOOD" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table THEATRES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."THEATRES" 
   (	"NAME" VARCHAR2(200 BYTE), 
	"SEATS" NUMBER(*,0), 
	"VIP_SEATS" NUMBER(*,0), 
	"ID" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TICKETS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."TICKETS" 
   (	"ID" NUMBER(*,0), 
	"VIP_SEAT" VARCHAR2(20 BYTE), 
	"PRICE" NUMBER(*,0), 
	"BUYER_EMAIL" VARCHAR2(200 BYTE), 
	"SHOW_ID" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."USERS" 
   (	"ID" NUMBER(*,0), 
	"EMAIL" VARCHAR2(20 BYTE), 
	"USERNAME" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"ROLE" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.CLIENTS
SET DEFINE OFF;
Insert into SYSTEM.CLIENTS (ID,NAME,EMAIL,SUBSCRIPTION_ID,SUBSCRIPTION_DATE) values (1,'baha','ksib@gmail.com',1,to_date('04-JAN-21','DD-MON-RR'));
Insert into SYSTEM.CLIENTS (ID,NAME,EMAIL,SUBSCRIPTION_ID,SUBSCRIPTION_DATE) values (5,'monaem','monaem@gmail.com',114,to_date('05-JAN-21','DD-MON-RR'));
REM INSERTING into SYSTEM.EMPLOYEES
SET DEFINE OFF;
Insert into SYSTEM.EMPLOYEES (ID,NAME,EMAIL,USERNAME,PASSWORD,ROLE,IMAGELINK) values (13,'skander','skan@gmail.com','user1','azerty123','EMPLOYEE','C:/Users/baha/Desktop/137500587_2770191369915205_9183269723440436060_n.jpg');
Insert into SYSTEM.EMPLOYEES (ID,NAME,EMAIL,USERNAME,PASSWORD,ROLE,IMAGELINK) values (1010,'baha eddine ksib','ksib@gmail.com','eddine.19998','55573783',null,null);
REM INSERTING into SYSTEM.MOVIES
SET DEFINE OFF;
Insert into SYSTEM.MOVIES (ID,NAME,TYPE,DESCRIPTION,DUB_LANGUAGE,SUB_LANGUAGE,PRICE,IMAGELINK,DURATION) values ('1','MODHER!','horror','Mother! was selected to compete for the Golden Lion at the 74th Venice International Film Festival, and premiered there on September 5, 2017.','arabic','englich','40','C:/Users/baha/Desktop/build-SmartCinema-Desktop_Qt_5_9_9_MinGW_32bit-Debug/debug/1.jpg',null);
Insert into SYSTEM.MOVIES (ID,NAME,TYPE,DESCRIPTION,DUB_LANGUAGE,SUB_LANGUAGE,PRICE,IMAGELINK,DURATION) values ('13','red dead','horror','International Film Festival, and premiered there on September 5, 2017.','arabic','englich','40','C:/Users/baha/Desktop/build-SmartCinema-Desktop_Qt_5_9_9_MinGW_32bit-Debug/debug/13.jpg',null);
Insert into SYSTEM.MOVIES (ID,NAME,TYPE,DESCRIPTION,DUB_LANGUAGE,SUB_LANGUAGE,PRICE,IMAGELINK,DURATION) values ('3','hacksaw ridge','action','At its core, it is a film about the male ego, the female instinct, and the most horrifying thing in the world','english','english','25','C:/Users/baha/Desktop/Review.jpg',null);
REM INSERTING into SYSTEM.SHOWS
SET DEFINE OFF;
Insert into SYSTEM.SHOWS (ID,THEATRE_ID,MOVIE_ID,START_DATE,RESERVED_SEATS,RESERVED_SEATS_VIP) values (1,'1','3','05/05/2020',4,4);
REM INSERTING into SYSTEM.TABLEIMAGE
SET DEFINE OFF;
Insert into SYSTEM.TABLEIMAGE (COLUMN1) values (null);
REM INSERTING into SYSTEM.SUBSCRIPTIONS
SET DEFINE OFF;
REM INSERTING into SYSTEM.THEATRES
SET DEFINE OFF;
Insert into SYSTEM.THEATRES (NAME,SEATS,VIP_SEATS,ID) values ('the dark theatre',500,10,1);
Insert into SYSTEM.THEATRES (NAME,SEATS,VIP_SEATS,ID) values ('theatre of love',200,50,2);
REM INSERTING into SYSTEM.TICKETS
SET DEFINE OFF;
Insert into SYSTEM.TICKETS (ID,VIP_SEAT,PRICE,BUYER_EMAIL,SHOW_ID) values (900,'0',25,'BAHA',1);
Insert into SYSTEM.TICKETS (ID,VIP_SEAT,PRICE,BUYER_EMAIL,SHOW_ID) values (5,'1',25,'moneeme@esprit.tn',1);
Insert into SYSTEM.TICKETS (ID,VIP_SEAT,PRICE,BUYER_EMAIL,SHOW_ID) values (2,'0',25,'yassine@esprit.tn',1);
Insert into SYSTEM.TICKETS (ID,VIP_SEAT,PRICE,BUYER_EMAIL,SHOW_ID) values (9,'1',25,'jawher@esprit.tn',1);
Insert into SYSTEM.TICKETS (ID,VIP_SEAT,PRICE,BUYER_EMAIL,SHOW_ID) values (10,'1',25,'skander@esprit.tn',1);
Insert into SYSTEM.TICKETS (ID,VIP_SEAT,PRICE,BUYER_EMAIL,SHOW_ID) values (11,'1',25,'khairi@esprit.tn',1);
Insert into SYSTEM.TICKETS (ID,VIP_SEAT,PRICE,BUYER_EMAIL,SHOW_ID) values (14,'1',25,'yasmin@esprit.tn',1);
Insert into SYSTEM.TICKETS (ID,VIP_SEAT,PRICE,BUYER_EMAIL,SHOW_ID) values (100,'0',25,'nour@esprit.tn',1);
Insert into SYSTEM.TICKETS (ID,VIP_SEAT,PRICE,BUYER_EMAIL,SHOW_ID) values (111,'0',25,'nardine@esprit.tn',1);
Insert into SYSTEM.TICKETS (ID,VIP_SEAT,PRICE,BUYER_EMAIL,SHOW_ID) values (121,'1',25,'chams@esprit.tn',1);
Insert into SYSTEM.TICKETS (ID,VIP_SEAT,PRICE,BUYER_EMAIL,SHOW_ID) values (145,'1',25,'loujey@esprit.tn',1);
Insert into SYSTEM.TICKETS (ID,VIP_SEAT,PRICE,BUYER_EMAIL,SHOW_ID) values (147,'1',25,'yasmin@esprit.tn',1);
Insert into SYSTEM.TICKETS (ID,VIP_SEAT,PRICE,BUYER_EMAIL,SHOW_ID) values (191,'1',25,'loujey@esprit.tn',1);
Insert into SYSTEM.TICKETS (ID,VIP_SEAT,PRICE,BUYER_EMAIL,SHOW_ID) values (777,'1',25,'nour@esprit.tn',1);
Insert into SYSTEM.TICKETS (ID,VIP_SEAT,PRICE,BUYER_EMAIL,SHOW_ID) values (1111111,'1',25,'chams@esprit.tn',1);
Insert into SYSTEM.TICKETS (ID,VIP_SEAT,PRICE,BUYER_EMAIL,SHOW_ID) values (40,'0',25,'bahaeddine.ksib@esprit.tn',1);
Insert into SYSTEM.TICKETS (ID,VIP_SEAT,PRICE,BUYER_EMAIL,SHOW_ID) values (1414,'0',25,'14',1);
REM INSERTING into SYSTEM.USERS
SET DEFINE OFF;
Insert into SYSTEM.USERS (ID,EMAIL,USERNAME,PASSWORD,NAME,ROLE) values (1,'admin','admin','admin','admin','1');
--------------------------------------------------------
--  DDL for Index CLIENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."CLIENT_PK" ON "SYSTEM"."CLIENTS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index EMPLOYEES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."EMPLOYEES_PK" ON "SYSTEM"."EMPLOYEES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MOVIES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."MOVIES_PK" ON "SYSTEM"."MOVIES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SHOWS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SHOWS_PK" ON "SYSTEM"."SHOWS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."TABLE1_PK" ON "SYSTEM"."SUBSCRIPTIONS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TAB_THEATRES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."TAB_THEATRES_PK" ON "SYSTEM"."THEATRES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TICKETS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."TICKETS_PK" ON "SYSTEM"."TICKETS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."USERS_PK" ON "SYSTEM"."USERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table CLIENTS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CLIENTS" ADD CONSTRAINT "CLIENT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."CLIENTS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."EMPLOYEES" ADD CONSTRAINT "EMPLOYEES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."EMPLOYEES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOVIES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."MOVIES" ADD CONSTRAINT "MOVIES_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."MOVIES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SHOWS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SHOWS" ADD CONSTRAINT "SHOWS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."SHOWS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SUBSCRIPTIONS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SUBSCRIPTIONS" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."SUBSCRIPTIONS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table THEATRES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."THEATRES" ADD CONSTRAINT "TAB_THEATRES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."THEATRES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TICKETS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TICKETS" ADD CONSTRAINT "TICKETS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."TICKETS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."USERS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table SHOWS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SHOWS" ADD CONSTRAINT "MOVIE_ID_FK" FOREIGN KEY ("MOVIE_ID")
	  REFERENCES "SYSTEM"."MOVIES" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TICKETS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TICKETS" ADD CONSTRAINT "SHOW_ID_FK" FOREIGN KEY ("SHOW_ID")
	  REFERENCES "SYSTEM"."SHOWS" ("ID") ENABLE;
