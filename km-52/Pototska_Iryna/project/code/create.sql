/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     18.11.2018 20:40:38                          */
/*==============================================================*/


alter table CLOTHES
   drop constraint "FK_CLOTHES_RULE CONT_RULE";

alter table USER_RULE
   drop constraint FK_USER_RUL_RELATIONS_USER;

alter table USER_RULE
   drop constraint "FK_USER_RUL_RULE HAS _RULE";

drop index "rule contains clothes_FK";

drop table CLOTHES cascade constraints;

drop table RULE cascade constraints;

drop table "USER" cascade constraints;

drop index "rule has user_FK";

drop index Relationship_1_FK;

drop table USER_RULE cascade constraints;

/*==============================================================*/
/* Table: CLOTHES                                               */
/*==============================================================*/
create table CLOTHES 
(
   clothes_id           NUMBER(5)            not null,
   rule_id_fk           NUMBER(5),
   clothes_size         NUMBER(3)            not null,
   constraint PK_CLOTHES primary key (clothes_id)
);

/*==============================================================*/
/* Index: "rule contains clothes_FK"                            */
/*==============================================================*/
create index "rule contains clothes_FK" on CLOTHES (
   rule_id_fk ASC
);

/*==============================================================*/
/* Table: RULE                                                  */
/*==============================================================*/
create table RULE 
(
   rule_id              NUMBER(5)            not null,
   rule_name            VARCHAR2(20)         not null,
   rule_description     CLOB                 not null,
   constraint PK_RULE primary key (rule_id)
);

/*==============================================================*/
/* Table: "USER"                                                */
/*==============================================================*/
create table "USER" 
(
   user_email           VARCHAR2(20)         not null,
   user_password        VARCHAR2(20)         not null,
   user_height          NUMBER(3)            not null,
   user_weight          NUMBER(3)            not null,
   user_gender          SMALLINT             not null,
   user_age             NUMBER(3)            not null,
   constraint PK_USER primary key (user_email)
);

/*==============================================================*/
/* Table: USER_RULE                                             */
/*==============================================================*/
create table USER_RULE 
(
   time_add_rule        DATE                 not null,
   user_email_fk        VARCHAR2(20)         not null,
   rule_id_fk           NUMBER(5)            not null,
   constraint PK_USER_RULE primary key (time_add_rule)
);

/*==============================================================*/
/* Index: Relationship_1_FK                                     */
/*==============================================================*/
create index Relationship_1_FK on USER_RULE (
   user_email_fk ASC
);

/*==============================================================*/
/* Index: "rule has user_FK"                                    */
/*==============================================================*/
create index "rule has user_FK" on USER_RULE (
   rule_id_fk ASC
);

alter table CLOTHES
   add constraint "FK_CLOTHES_RULE CONT_RULE" foreign key (rule_id_fk)
      references RULE (rule_id);

alter table USER_RULE
   add constraint FK_USER_RUL_RELATIONS_USER foreign key (user_email_fk)
      references "USER" (user_email);

alter table USER_RULE
   add constraint "FK_USER_RUL_RULE HAS _RULE" foreign key (rule_id_fk)
      references RULE (rule_id);

alter table "USER"
    add constraint user_height_value check (user_height <= 200);
	

alter table "USER"
    add constraint user_weight_value check (user_weight <= 120);
	
alter table "USER"
    add constraint user_age_value check (user_age <= 70);
	
alter table "USER"
    add constraint user_email_unique UNIQUE (user_email);
	
alter table "USER"
    add constraint user_password_unique UNIQUE (user_password);
	
alter table "User"
    add constraint user_password_symbols check (Regexp_like(user_password, '[A-Za-z0-9]'));
	
alter table "User"
    add constraint user_email_symbols check (Regexp_like(user_email, '[a-z0-9.@]'));
	

