-- create "accounts"."users" table
--
-- Aims to track users with a unique business ID.
-- The "id" definition should not be used for matching.
-- Each user must have a unique "account id".
CREATE TABLE "users" (
    
    -- Identity Increment
    "id" int NOT NULL,

    -- All table businues identification
    -- default public.uuid_generate_v4 ()
    "account_id" uuid NOT NULL,

    -- 'true' Blocked   ('1')
    -- 'false' free     ('0')
    -- It must be set to true to lock the user account.
    "lockout" boolean NOT NULL,

    -- The number of unsuccessful attempts to access the account.
    "access_failed_count" smallint NOT NULL,

    -- The date when a locked user account will become active.
    "lockout_end_date" timestamp with time zone,

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

COMMENT ON TABLE "users" IS 'Aims to track users with a unique business ID.';
COMMENT ON COLUMN "users"."id" IS 'Identity Increment';
COMMENT ON COLUMN "users"."account_id" IS 'All table businues identification';
COMMENT ON COLUMN "users"."lockout" IS 'It must be set to true to lock the user account.';
COMMENT ON COLUMN "users"."access_failed_count" IS 'The number of unsuccessful attempts to access the account.';
COMMENT ON COLUMN "users"."lockout_end_date" IS 'The date when a locked user account will become active.';