-- create "accounts"."user_roles" table
--
-- Keeps users roles matched.
-- In the first role definition, the creation date is written. -- On a role change, only the update time changes.
CREATE TABLE "user_roles" (

    -- Bussnies ID
    "account_id" uuid NOT NULL,
    
    -- Role ID
    "role_id" uuid NOT NULL,

    -- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
    -- ex: 2021-02-07 18:04:57.3100000 +00:00
    -- ex: 2021-02-07T18:04:57.3100000Z
    -- when the record was last created.
    "created_date" timestamp with time zone NOT NULL,

    -- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
    -- ex: 2021-02-07 18:04:57.3100000 +00:00
    -- ex: 2021-02-07T18:04:57.3100000Z
    -- when the record was last updated.
    "modified_date" timestamp with time zone NULL
);