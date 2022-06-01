-- create "accounts"."persons" table
-- 
-- Keeps the personal information of the user account.
-- Contact records must be singular.
-- User record and contact record must have only one match.
CREATE TABLE "persons" (

    -- Identity Increment
    "id" int NOT NULL,

    -- All table businues identification
    -- "accounts"."account_id"
    "account_id" uuid NOT NULL,

    -- First Name
    "first_name" varchar(50),

    -- Last Name
    "last_name" varchar(50),

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

COMMENT ON TABLE "persons" IS 'Keeps the personal information of the user account.';
COMMENT ON COLUMN "persons"."id" IS 'Identity Increment';
COMMENT ON COLUMN "persons"."account_id" IS 'All table businues identification';
COMMENT ON COLUMN "persons"."first_name" IS 'First Name';
COMMENT ON COLUMN "persons"."last_name" IS 'Last Name';