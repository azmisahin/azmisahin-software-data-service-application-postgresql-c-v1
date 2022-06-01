-- alter "accounts"."persons" table
-- 
-- Keeps the personal information of the user account.
-- Contact records must be singular.
-- User record and contact record must have only one match.

-- The cahnge order should be applied in the following order.
-- SEQUENCE, PRIMARY KEY, FOREIGN KEY, DEFAULT VALUE, INDEX
-- name define should be like tablename_fieldname_sq

-- Identity Increment
CREATE SEQUENCE "persons_id_sq" AS integer INCREMENT BY 1 MINVALUE 1 START WITH 1 ;
ALTER TABLE "persons" ADD CONSTRAINT "persons_id_pk" PRIMARY KEY ("id") ;
ALTER TABLE "persons" ALTER COLUMN "id" SET DEFAULT nextval('persons_id_sq') ;
CREATE INDEX "persons_id_ix" ON "persons" ("id" DESC) ;

-- All table businues identification
-- "accounts"."account_id"
ALTER TABLE "persons" ADD CONSTRAINT "persons_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id") ;
CREATE INDEX "persons_account_id_ix" ON "persons" ("account_id" DESC) ;

-- First Name
-- ALTER TABLE "persons" ALTER COLUMN "first_name" ;
CREATE INDEX "persons_first_name_ix" ON "persons" ("first_name" ASC) ;

-- Last Name
-- ALTER TABLE "persons" ALTER COLUMN "last_name" ;
CREATE INDEX "persons_last_name_ix" ON "persons" ("last_name" ASC) ;

-- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
-- ex: 2021-02-07 18:04:57.3100000 +00:00
-- ex: 2021-02-07T18:04:57.3100000Z
-- when the record was last created.
ALTER TABLE "persons" ALTER COLUMN "created_date" SET DEFAULT timezone('UTC' :: text, now());

-- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
-- ex: 2021-02-07 18:04:57.3100000 +00:00
-- ex: 2021-02-07T18:04:57.3100000Z
-- when the record was last updated.
-- ALTER TABLE "persons" ALTER COLUMN "modified_date" ;
    
