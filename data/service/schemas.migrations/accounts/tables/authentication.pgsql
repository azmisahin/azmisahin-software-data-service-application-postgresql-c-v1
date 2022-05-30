-- alter "accounts"."authentications" table
-- 
-- Keeps track of users logged in by authorization providers.
-- Users can login with more than one authenticator.


-- Identity Increment
-- ALTER TABLE "authentications" ALTER COLUMN "id" ;

-- All table businues identification
-- "accounts"."account_id"
-- ALTER TABLE "authentications" ALTER COLUMN "account_id" ;

-- provider used for authentication and authorization between multiple services or servers.
-- ALTER TABLE "authentications" ALTER COLUMN "provider" ;

-- key assigned by the provider as a result of authorization.
-- ALTER TABLE "authentications" ALTER COLUMN "provider_id" ;

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