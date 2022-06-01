-- create "accounts"."tokens" table
--
-- Keeps track of users tokens in by authorization providers.
CREATE TABLE "tokens" (

    -- Identity Increment
    "id" int NOT NULL,

    -- All table businues identification
    -- "accounts"."account_id"
    "account_id" uuid NOT NULL,

    -- provider used for authentication and authorization between multiple services or servers.
    "provider" varchar(16) NOT NULL,

    -- name
    "name" varchar(128) NOT NULL,

    -- value
    "value" varchar NOT NULL,

    -- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
    -- ex: 2021-02-07 18:04:57.3100000 +00:00
    -- ex: 2021-02-07T18:04:57.3100000Z
    -- when the record was last created.
    "created_date" timestamp with time zone NOT NULL,

    -- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
    -- ex: 2021-02-07 18:04:57.3100000 +00:00
    -- ex: 2021-02-07T18:04:57.3100000Z
    -- token end date.
    "expire_date" timestamp with time zone NOT NULL
    
);

COMMENT ON TABLE "tokens" IS 'Keeps track of users tokens in by authorization providers.';
COMMENT ON COLUMN "tokens"."id" IS 'Identity Increment';
COMMENT ON COLUMN "tokens"."account_id" IS 'All table businues identification';
COMMENT ON COLUMN "tokens"."provider" IS 'provider used for authentication and authorization between multiple services or servers.';
COMMENT ON COLUMN "tokens"."name" IS 'name.';
COMMENT ON COLUMN "tokens"."value" IS 'value.';