-- create "accounts"."emails" table
--
-- Keeps track of users' email information.
-- A user can have more than one email record.
CREATE TABLE "emails" (

    -- Identity Increment
    "id" int NOT NULL,

    -- All table businues identification
    -- "accounts"."account_id"
    "account_id" uuid NOT NULL,

    -- Valid email address
    -- There is a length limit on email addresses.
    -- That limit is a maximum of 64 characters (octets) in the "local part" (before the "@")
    -- and a maximum of 255 characters (octets) in the domain part (after the "@")
    -- for a total length of 320 characters.
    "email_address" varchar(320) NOT NULL,

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

COMMENT ON TABLE "emails" IS 'Keeps track of users email information.';
COMMENT ON COLUMN "emails"."id" IS 'Identity Increment';
COMMENT ON COLUMN "emails"."account_id" IS 'Identity Increment';
COMMENT ON COLUMN "emails"."email_address" IS 'There is a length limit on email addresses';