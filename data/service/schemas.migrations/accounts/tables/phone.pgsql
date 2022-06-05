-- alter "accounts"."phones" table
--
-- Keeps track of users' phone information.
-- A user can have more than one phone record.

-- The cahnge order should be applied in the following order.
-- SEQUENCE, PRIMARY KEY, FOREIGN KEY, DEFAULT VALUE, INDEX
-- name define should be like tablename_fieldname_sq

-- Identity Increment
CREATE SEQUENCE "phones_id_sq" AS integer INCREMENT BY 1 MINVALUE 1 START WITH 1 ;
ALTER TABLE "phones" ADD CONSTRAINT "phones_id_pk" PRIMARY KEY ("id") ;
ALTER TABLE "phones" ALTER COLUMN "id" SET DEFAULT nextval('phones_id_sq') ;
CREATE INDEX "phones_id_ix" ON "phones" ("id" DESC) ;

-- All table businues identification
-- "accounts"."account_id"
ALTER TABLE "phones" ADD CONSTRAINT "phones_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id") ;
CREATE INDEX "phones_account_id_ix" ON "phones" ("account_id" DESC) ;

-- Country Phone Code [ to 32,767]
-- E.123 is an international standard by the standardization union
-- Telephone number, E.123 international notation	+[999] 555 123 4567
-- ALTER TABLE "phones" ALTER COLUMN "country_phone_code" ;
    
-- operator code
-- Telephone number, E.123 international notation	+999 [555] 123 4567
-- ALTER TABLE "phones" ALTER COLUMN "operator_code" ;

-- phone number
-- Telephone number, E.123 international notation	+999 555 [123 4567]
-- ALTER TABLE "phones" ALTER COLUMN "phone_number" ;

-- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
-- ex: 2021-02-07 18:04:57.3100000 +00:00
-- ex: 2021-02-07T18:04:57.3100000Z
-- when the record was last created.
ALTER TABLE "phones" ALTER COLUMN "created_date" SET DEFAULT timezone('UTC' :: text, now());

-- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
-- ex: 2021-02-07 18:04:57.3100000 +00:00
-- ex: 2021-02-07T18:04:57.3100000Z
-- when the record was last updated.
-- ALTER TABLE "phones" ALTER COLUMN "modified_date" ;

