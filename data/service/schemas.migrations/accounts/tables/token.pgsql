-- alter "accounts"."tokens" table
-- 
-- Keeps track of users token in by authorization providers.

-- The cahnge order should be applied in the following order.
-- SEQUENCE, PRIMARY KEY, FOREIGN KEY, DEFAULT VALUE, INDEX
-- name define should be like tablename_fieldname_sq

-- Identity Increment
CREATE SEQUENCE "tokens_id_sq" AS integer INCREMENT BY 1 MINVALUE 1 START WITH 1 ;
ALTER TABLE "tokens" ADD CONSTRAINT "tokens_id_pk" PRIMARY KEY ("id") ;
ALTER TABLE "tokens" ALTER COLUMN "id" SET DEFAULT nextval('tokens_id_sq') ;
CREATE INDEX "tokens_id_ix" ON "tokens" ("id" DESC) ;

-- All table businues identification
-- "accounts"."account_id"
-- ALTER TABLE "authentications" ALTER COLUMN "account_id" ;
ALTER TABLE "tokens" ADD CONSTRAINT "tokens_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id") ;
CREATE INDEX "tokens_account_id_ix" ON "tokens" ("account_id" DESC) ;

-- provider used for authentication and authorization between multiple services or servers.
-- ALTER TABLE "tokens" ALTER COLUMN "provider" SET DEFAULT 'Google' ;

-- name.
-- ALTER TABLE "tokens" ALTER COLUMN "name" ;

-- value.
-- ALTER TABLE "tokens" ALTER COLUMN "value" ;

-- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
-- ex: 2021-02-07 18:04:57.3100000 +00:00
-- ex: 2021-02-07T18:04:57.3100000Z
-- when the record was last created.
ALTER TABLE "tokens" ALTER COLUMN "created_date" SET DEFAULT timezone('UTC' :: text, now());

-- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
-- ex: 2021-02-07 18:04:57.3100000 +00:00
-- ex: 2021-02-07T18:04:57.3100000Z
-- token end date.
ALTER TABLE "tokens" ALTER COLUMN "expire_date" SET DEFAULT timezone('UTC' :: text, now() + INTERVAL '1 hour');