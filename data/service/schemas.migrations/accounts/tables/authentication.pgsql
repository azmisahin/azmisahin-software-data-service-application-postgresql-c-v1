-- alter "accounts"."authentications" table
-- 
-- Keeps track of users logged in by authorization providers.
-- Users can login with more than one authenticator.

-- The cahnge order should be applied in the following order.
-- SEQUENCE, PRIMARY KEY, FOREIGN KEY, DEFAULT VALUE, INDEX
-- name define should be like tablename_fieldname_sq

-- Identity Increment
CREATE SEQUENCE "authentications_id_sq" AS integer INCREMENT BY 1 MINVALUE 1 START WITH 1 ;
ALTER TABLE "authentications" ADD CONSTRAINT "authentications_id_pk" PRIMARY KEY ("id") ;
ALTER TABLE "authentications" ALTER COLUMN "id" SET DEFAULT nextval('authentications_id_sq') ;
CREATE INDEX "authentications_id_ix" ON "authentications" ("id" DESC) ;

-- All table businues identification
-- "accounts"."account_id"
-- ALTER TABLE "authentications" ALTER COLUMN "account_id" ;
ALTER TABLE "authentications" ADD CONSTRAINT "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id") ;
CREATE INDEX "authentications_account_id_ix" ON "authentications" ("account_id" DESC) ;

-- provider used for authentication and authorization between multiple services or servers.
-- ALTER TABLE "authentications" ALTER COLUMN "provider" SET DEFAULT 'Google' ;

-- key assigned by the provider as a result of authorization.
-- ALTER TABLE "authentications" ALTER COLUMN "provider_key" ;

-- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
-- ex: 2021-02-07 18:04:57.3100000 +00:00
-- ex: 2021-02-07T18:04:57.3100000Z
-- when the record was last created.
ALTER TABLE "authentications" ALTER COLUMN "created_date" SET DEFAULT timezone('UTC' :: text, now());

-- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
-- ex: 2021-02-07 18:04:57.3100000 +00:00
-- ex: 2021-02-07T18:04:57.3100000Z
-- when the record was last updated.
-- ALTER TABLE "authentications" ALTER COLUMN "modified_date" ;