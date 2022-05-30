-- alter "accounts"."persons" table
-- 
-- Keeps the personal information of the user account.
-- Contact records must be singular.
-- User record and contact record must have only one match.


-- Identity Increment
-- ALTER TABLE "persons" ALTER COLUMN "id" ;

-- All table businues identification
-- "accounts"."account_id"
-- ALTER TABLE "persons" ALTER COLUMN "account_id" ;

-- First Name
-- ALTER TABLE "persons" ALTER COLUMN "first_name" ;

-- Last Name
-- ALTER TABLE "persons" ALTER COLUMN "last_name" ;

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
    
