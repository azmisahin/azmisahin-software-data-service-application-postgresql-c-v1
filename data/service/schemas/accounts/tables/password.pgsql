-- create "accounts"."passwords" table
--
-- Keeps track of users' password information.
-- If a user's password history record is desired, a new record must be created.
-- For password verification, if the password history style is adopted, the last record on the creation date should be used.
CREATE TABLE "passwords" (

    -- Identity Increment
    "id" int NOT NULL,

    -- All table businues identification
    -- "accounts"."account_id"
    "account_id" uuid NOT NULL,

    -- Password hash, a password definition through a hashing algorithm (bcrypt, SHA, etc.)
    -- to convert plain text into an incomprehensible string of numbers and letters.
    "password_hash" varchar(128) NOT NULL,

    -- The security timestamp is used to track changes made to the user profile.
    -- It is used for security purposes when important features of a user, such as changing passwords, are changed.
    -- uuid version 1
    "security_stamp" uuid NOT NULL,

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

COMMENT ON TABLE "passwords" IS 'Keeps track of users password information.';
COMMENT ON COLUMN "passwords"."id" IS 'Identity Increment';
COMMENT ON COLUMN "passwords"."account_id" IS 'All table businues identification';
COMMENT ON COLUMN "passwords"."password_hash" IS 'Password hash, a password definition through a hashing algorithm (bcrypt, SHA, etc.)';
COMMENT ON COLUMN "passwords"."security_stamp" IS 'he security timestamp is used to track changes made to the user profile.';