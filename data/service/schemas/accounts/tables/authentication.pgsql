-- create "accounts"."authentications" table
--
-- Keeps track of users logged in by authorization providers.
-- Users can login with more than one authenticator.
CREATE TABLE "authentications" (

    -- Identity Increment
    "id" int NOT NULL,

    -- All table businues identification
    -- "accounts"."account_id"
    "account_id" uuid NOT NULL,

    -- provider used for authentication and authorization between multiple services or servers.
    "provider" varchar(16) NOT NULL,

    -- key assigned by the provider as a result of authorization.
    "provider_key" varchar(128) NOT NULL,

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

COMMENT ON TABLE "authentications" IS 'Keeps track of users logged in by authorization providers.';
COMMENT ON COLUMN "authentications"."id" IS 'Identity Increment';
COMMENT ON COLUMN "authentications"."account_id" IS 'All table businues identification';
COMMENT ON COLUMN "authentications"."provider" IS 'provider used for authentication and authorization between multiple services or servers.';
COMMENT ON COLUMN "authentications"."provider_key" IS 'key assigned by the provider as a result of authorization.';