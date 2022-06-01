-- alter "accounts"."user_roles" table
--
-- Keeps users roles matched.
-- In the first role definition, the creation date is written. -- On a role change, only the update time changes.

-- The cahnge order should be applied in the following order.
-- SEQUENCE, PRIMARY KEY, FOREIGN KEY, DEFAULT VALUE, INDEX
-- name define should be like tablename_fieldname_sq

-- Bussnies ID
-- ALTER TABLE "user_roles" ALTER COLUMN "account_id" ;
--ALTER TABLE "user_roles" ADD CONSTRAINT "user_roles_account_id_pk" PRIMARY KEY ("account_id") ;
ALTER TABLE "user_roles" ADD CONSTRAINT "user_roles_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id") ;
CREATE INDEX "user_roles_account_id_ix" ON "user_roles" ("account_id" DESC) ;

    
-- Role ID
-- ALTER TABLE "user_roles" ALTER COLUMN "role_id" ;
--ALTER TABLE "user_roles" ADD CONSTRAINT "user_roles_role_id_pk" PRIMARY KEY ("role_id") ;
ALTER TABLE "user_roles" ADD CONSTRAINT "user_roles_role_id_fk" FOREIGN KEY ("role_id") REFERENCES "roles"("role_id") ;
CREATE INDEX "user_roles_role_id_ix" ON "user_roles" ("role_id" DESC) ;

-- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
-- ex: 2021-02-07 18:04:57.3100000 +00:00
-- ex: 2021-02-07T18:04:57.3100000Z
-- when the record was last created.
ALTER TABLE "user_roles" ALTER COLUMN "created_date" SET DEFAULT timezone('UTC' :: text, now());

-- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
-- ex: 2021-02-07 18:04:57.3100000 +00:00
-- ex: 2021-02-07T18:04:57.3100000Z
-- when the record was last updated.
-- ALTER TABLE "user_roles" ALTER COLUMN "modified_date" ;

