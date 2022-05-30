-- alter "accounts"."user_roles" table
--
-- Keeps users roles matched.
-- In the first role definition, the creation date is written. -- On a role change, only the update time changes.


-- Bussnies ID
-- ALTER TABLE "user_roles" ALTER COLUMN "account_id" ;
    
-- Role ID
-- ALTER TABLE "user_roles" ALTER COLUMN "role_id" ;

-- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
-- ex: 2021-02-07 18:04:57.3100000 +00:00
-- ex: 2021-02-07T18:04:57.3100000Z
-- when the record was last created.
ALTER TABLE "user_roles" ALTER COLUMN "created_date" SET DEFAULT timezone('UTC' :: text, now());

-- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
-- ex: 2021-02-07 18:04:57.3100000 +00:00
-- ex: 2021-02-07T18:04:57.3100000Z
-- when the record was last updated.
-- ALTER TABLE "user_roles" ALTER COLUMN "modified_date" ;

