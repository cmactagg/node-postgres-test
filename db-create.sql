--within pgAdmin, create a database called node-postgres-test with the postgres user as the owner
--then run this script on the database

CREATE TABLE public.mytest
(
  id bigint,
  name character varying(32)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.mytest
  OWNER TO postgres;


insert into mytest values(1, 'chris');
insert into mytest values(1, 'craig');