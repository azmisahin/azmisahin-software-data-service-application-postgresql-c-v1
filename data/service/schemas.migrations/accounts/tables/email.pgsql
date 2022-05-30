-- alter "accounts"."emails" table
--
-- Keeps track of users' email information.
-- A user can have more than one email record.


-- Identity Increment
-- ALTER TABLE "emails" ALTER COLUMN "id" ;

-- All table businues identification
-- "accounts"."account_id"
-- ALTER TABLE "emails" ALTER COLUMN "account_id" ;

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

