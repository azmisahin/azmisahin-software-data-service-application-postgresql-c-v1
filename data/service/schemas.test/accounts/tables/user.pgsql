-- test the "users" table in the "accounts" schema.
--
-- Aims to track users with a unique business ID.
-- The "id" definition should not be used for matching.
-- Each user must have a unique "account id".
INSERT INTO "users" (
    
    -- CREATE SEQUENCE "users_id_sq" and
    -- SET DEFAULT nextval('users_id_sq')
    -- CREATE INDEX "users_id_ix"
    -- "id",

    -- ADD CONSTRAINT "users_account_id_pk"
    -- SET DEFAULT public.uuid_generate_v4 ()
    -- CREATE INDEX "users_account_id_ix"
    "account_id",

    -- 'true' Blocked   ('1')
    -- 'false' free     ('0')
    -- It must be set to true to lock the user account.
    -- It should remain locked until the user's registration is complete.
    -- boolean NOT NULL
    -- SET DEFAULT 'false' free
    "lockout"

    -- The number of unsuccessful attempts to access the account.
    -- smallint NOT NULL
    -- SET DEFAULT 0;
    -- "access_failed_count",

    -- The date when a locked user account will become active.
    -- timestamp with time zone
    -- "lockout_end_date",

    -- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
    -- ex: 2021-02-07 18:04:57.3100000 +00:00
    -- ex: 2021-02-07T18:04:57.3100000Z
    -- when the record was last created.
    -- timestamp with time zone NOT NULL
    -- SET DEFAULT timezone('UTC' :: text, now());
    -- "created_date",

    -- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
    -- ex: 2021-02-07 18:04:57.3100000 +00:00
    -- ex: 2021-02-07T18:04:57.3100000Z
    -- when the record was last updated.
    -- timestamp with time zone NULL
    -- "modified_date"

)
VALUES
(
    --1,
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'true'
    --0,
    --null,
    --timezone('UTC' :: text, now()),
    --null
),
(
    --2,
    'e3916619-10af-437c-aaac-bf3be5991eec',
    'true'
    --0,
    --null,
    --timezone('UTC' :: text, now()),
    --null
),
(
    --3,
    '3e2ceadf-7cca-4206-b3e2-5a8eab9dd838',
    'true'
    --0,
    --null,
    --timezone('UTC' :: text, now()),
    --null
),
(
    --4,
    '628fa16f-8878-4623-83a2-ce82baa613f0',
    'true'
    --0,
    --null,
    --timezone('UTC' :: text, now()),
    --null
),
(
    --5,
    'e670f575-eda6-4476-8175-6eaf76b05990',
    'true'
    --0,
    --null,
    --timezone('UTC' :: text, now()),
    --null
);