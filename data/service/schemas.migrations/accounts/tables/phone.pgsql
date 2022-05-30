-- alter "accounts"."phones" table
--
-- Keeps track of users' phone information.
-- A user can have more than one phone record.


-- Identity Increment
-- ALTER TABLE "phones" ALTER COLUMN "id" ;

-- All table businues identification
-- "accounts"."account_id"
-- ALTER TABLE "phones" ALTER COLUMN "account_id" ;

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

