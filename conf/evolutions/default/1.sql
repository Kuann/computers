# --- First database schema

# --- !Ups

create table company (
  id                        integer primary key,
  name                      varchar(255)
)
;

create table computer (
  id                        integer primary key,
  name                      varchar(255),
  company_id                integer references company(id)
);

create sequence company_seq start 1000;
create sequence computer_seq start 1000;

# --- !Downs

SET REFERENTIAL_INTEGRITY FALSE;

drop table if exists company;

drop table if exists computer;

SET REFERENTIAL_INTEGRITY TRUE;

drop sequence if exists company_seq;

drop sequence if exists computer_seq;
