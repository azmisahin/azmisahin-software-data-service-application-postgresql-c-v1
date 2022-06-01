-- alter "accounts"."emails" table
--
-- Keeps track of users' email information.
-- A user can have more than one email record.

-- The cahnge order should be applied in the following order.
-- SEQUENCE, PRIMARY KEY, FOREIGN KEY, DEFAULT VALUE, INDEX
-- name define should be like tablename_fieldname_sq

-- Identity Increment
CREATE SEQUENCE "emails_id_sq" AS integer INCREMENT BY 1 MINVALUE 1 START WITH 1 ;
ALTER TABLE "emails" ADD CONSTRAINT "emails_id_pk" PRIMARY KEY ("id") ;
ALTER TABLE "emails" ALTER COLUMN "id" SET DEFAULT nextval('emails_id_sq') ;
CREATE INDEX "emails_id_ix" ON "emails" ("id" DESC) ;

-- All table businues identification
-- "emails"."account_id"
ALTER TABLE "emails" ADD CONSTRAINT "emails_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id") ;
CREATE INDEX "emails_account_id_ix" ON "emails" ("account_id" DESC) ;


-- Valid email address
-- There is a length limit on email addresses.
-- That limit is a maximum of 64 characters (octets) in the "local part" (before the "@")
-- and a maximum of 255 characters (octets) in the domain part (after the "@")
-- for a total length of 320 characters.
-- ALTER TABLE "emails" ALTER COLUMN "email_address" ;

-- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
-- ex: 2021-02-07 18:04:57.3100000 +00:00
-- ex: 2021-02-07T18:04:57.3100000Z
-- when the record was last created.
ALTER TABLE "emails" ALTER COLUMN "created_date" SET DEFAULT timezone('UTC' :: text, now());

-- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
-- ex: 2021-02-07 18:04:57.3100000 +00:00
-- ex: 2021-02-07T18:04:57.3100000Z
-- when the record was last updated.
-- ALTER TABLE "emails" ALTER COLUMN "modified_date" ;

