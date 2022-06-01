-- alter "accounts"."roles" table
--
-- Should be scheduled to allocate users to a specific role group.
-- For example, "manager", "customer", ...

-- The cahnge order should be applied in the following order.
-- SEQUENCE, PRIMARY KEY, FOREIGN KEY, DEFAULT VALUE, INDEX
-- name define should be like tablename_fieldname_sq

-- Identity Increment
CREATE SEQUENCE "roles_id_sq" AS integer INCREMENT BY 1 MINVALUE 1 START WITH 1 ;
ALTER TABLE "roles" ALTER COLUMN "id" SET DEFAULT nextval('roles_id_sq') ;
CREATE INDEX "roles_id_ix" ON "roles" ("id" DESC) ;

-- Secure Record
-- default public.uuid_generate_v4 ()
ALTER TABLE "roles" ADD CONSTRAINT "roles_role_id_pk" PRIMARY KEY ("role_id") ;
ALTER TABLE "roles" ALTER COLUMN "role_id" SET DEFAULT public.uuid_generate_v4 () ;
CREATE INDEX "roles_role_id_ix" ON "roles" ("role_id" DESC) ;
 
-- Role Name
-- ALTER  TABLE "roles" ALTER COLUMN "role_name" ;

