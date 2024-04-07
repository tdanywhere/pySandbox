-- ==============================================
--
-- ==============================================
select * from all_users where username = 'SANDBOX';

ALTER USER "SANDBOX" IDENTIFIED BY "sandbox" 
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP"
--PASSWORD EXPIRE 
ACCOUNT UNLOCK ;

-- QUOTAS
ALTER USER "SANDBOX" QUOTA UNLIMITED ON "USERS";

-- ROLES

-- SYSTEM PRIVILEGES
GRANT CREATE SESSION TO "SANDBOX" ;


-- ==============================================
--
-- ==============================================
drop table sandbox.sandbox;

create table sandbox.sandbox (
  id number
 ,value varchar2(8)
 ,description varchar2(200)
 ,created_on date
 ,created_by varchar2(200)
 ,modified_on date
 ,modified_by varchar2(200)
) 
    tablespace "USERS"
    storage (initial 8 m)
;

insert into sandbox.sandbox (id, value, description, created_on)
values(1, 'TEST', 'Test', to_date('02.03.2024 23:04:00', 'dd.mm.yyyy hh24:mi:ss')) ;
insert into sandbox.sandbox (id, value, description, created_on)
values(2, 'TEST_2', 'Test Nummer 2', to_date(sysdate, 'dd.mm.yyyy hh24:mi:ss')) ;
insert into sandbox.sandbox (id, value, description, created_on)
values(3, 'TEST_3', 'Test Nummer 3', to_date(sysdate, 'dd.mm.yyyy hh24:mi:ss')) ;
insert into sandbox.sandbox (id, value, description, created_on)
values(4, 'TEST_4', 'Test Nummer 4', to_date(sysdate, 'dd.mm.yyyy hh24:mi:ss')) ;
insert into sandbox.sandbox (id, value, description, created_on)
values(5, 'TEST_5', 'Test Nummer 5', to_date(sysdate, 'dd.mm.yyyy hh24:mi:ss')) ;

insert into sandbox.sandbox (id, value, description, created_on, created_by)
values(6, 'TEST_6', 'Test Nummer 6', to_date(sysdate, 'dd.mm.yyyy hh24:mi:ss'), 'THOMAS DETER') ;
insert into sandbox.sandbox (id, value, description, created_on, created_by)
values(7, 'TEST_7', 'Test Nummer 7', to_date(sysdate, 'dd.mm.yyyy hh24:mi:ss'), 'THOMAS DETER') ;
insert into sandbox.sandbox (id, value, description, created_on, created_by)
values(8, 'TEST_8', 'Test Nummer 8', to_date(sysdate, 'dd.mm.yyyy hh24:mi:ss'), 'THOMAS DETER') ;

insert into sandbox.sandbox (id, value, description, created_on, created_by, modified_on, modified_by)
values(9, 'TEST_9', 'Test Nummer 9', to_date(sysdate, 'dd.mm.yyyy hh24:mi:ss'), 'THOMAS DETER', to_date(sysdate, 'dd.mm.yyyy hh24:mi:ss'), 'THOMAS DETER') ;

insert into sandbox.sandbox (id, value, description, created_on, created_by, modified_on, modified_by)
values(10, 'TEST_10', 'Test Nummer 10', to_date(sysdate, 'dd.mm.yyyy hh24:mi:ss'), 'THOMAS DETER', to_date(sysdate, 'dd.mm.yyyy hh24:mi:ss'), 'THOMAS DETER') ;

insert into sandbox.sandbox (id, value, description, created_on, created_by, modified_on, modified_by)
values(11, 'TEST_11', 'Test Nummer 11', to_date(sysdate, 'dd.mm.yyyy hh24:mi:ss'), 'THOMAS DETER', to_date(sysdate, 'dd.mm.yyyy hh24:mi:ss'), 'THOMAS DETER') ;

commit;

select * from SANDBOX.sandbox ;
