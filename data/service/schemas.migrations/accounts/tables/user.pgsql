-- alter "accounts"."users" table
--
-- Aims to track users with a unique business ID.
-- The "id" definition should not be used for matching.
-- Each user must have a unique "account id".

-- The cahnge order should be applied in the following order.
-- SEQUENCE, PRIMARY KEY, FOREIGN KEY, DEFAULT VALUE, INDEX
-- name define should be like tablename_fieldname_sq

-- Identity Increment
CREATE SEQUENCE "users_id_sq" AS integer INCREMENT BY 1 MINVALUE 1 START WITH 1 ;
ALTER TABLE "users" ALTER COLUMN "id" SET DEFAULT nextval('users_id_sq') ;
CREATE INDEX "users_id_ix" ON "users" ("id" DESC) ;

-- All table businues identification
-- default public.uuid_generate_v4 ()
ALTER TABLE "users" ADD CONSTRAINT "users_account_id_pk" PRIMARY KEY ("account_id") ;
ALTER TABLE "users" ALTER COLUMN "account_id" SET DEFAULT public.uuid_generate_v4 () ;
CREATE INDEX "users_account_id_ix" ON "users" ("account_id" DESC) ;

-- 'true' Blocked
-- 'false' free
-- It must be set to true to lock the user account.
-- It should remain locked until the user's registration is complete.
ALTER TABLE "users" ALTER COLUMN "lockout" SET DEFAULT 'true' ;

-- The number of unsuccessful attempts to access the account.
ALTER TABLE "users" ALTER COLUMN "access_failed_count" SET DEFAULT 0;

-- The date when a locked user account will become active.
-- ALTER TABLE "users" ALTER COLUMN "lockout_end_date" ;

-- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
-- ex: 2021-02-07 18:04:57.3100000 +00:00
-- ex: 2021-02-07T18:04:57.3100000Z
-- when the record was last created.
ALTER TABLE "users" ALTER COLUMN "created_date" SET DEFAULT timezone('UTC' :: text, now());

-- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
-- ex: 2021-02-07 18:04:57.3100000 +00:00
-- ex: 2021-02-07T18:04:57.3100000Z
-- when the record was last updated.
-- ALTER TABLE "users" ALTER COLUMN "modified_date" ;

