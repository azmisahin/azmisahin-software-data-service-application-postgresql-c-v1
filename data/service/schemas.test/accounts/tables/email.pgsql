-- test the "emails" table in the "accounts" schema.
--
-- Keeps track of users' email information.
-- A user can have more than one email record.
INSERT INTO "emails" (

    -- Identity Increment
    -- int NOT NULL
    -- CREATE SEQUENCE "emails_id_sq"
    -- ADD CONSTRAINT "emails_id_pk" PRIMARY KEY ("id")
    -- SET DEFAULT nextval('emails_id_sq')
    -- CREATE INDEX "emails_id_ix"
    --"id",

    -- All table businues identification
    -- "accounts"."account_id"
    -- uuid NOT NULL
    -- ADD CONSTRAINT "emails_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    -- CREATE INDEX "emails_account_id_ix"
    "account_id",

    -- Valid email address
    -- There is a length limit on email addresses.
    -- That limit is a maximum of 64 characters (octets) in the "local part" (before the "@")
    -- and a maximum of 255 characters (octets) in the domain part (after the "@")
    -- for a total length of 320 characters.
    -- varchar(320) NOT NULL
    "email_address"

    -- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
    -- ex: 2021-02-07 18:04:57.3100000 +00:00
    -- ex: 2021-02-07T18:04:57.3100000Z
    -- when the record was last created.
    -- timestamp with time zone NOT NULL
    -- SET DEFAULT timezone('UTC' :: text, now())
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
    'user@azmisahin.com'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --2,
    'e3916619-10af-437c-aaac-bf3be5991eec',
    'customer@azmisahin.com'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --3,
    '3e2ceadf-7cca-4206-b3e2-5a8eab9dd838',
    'partner@azmisahin.com'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --4,
    '628fa16f-8878-4623-83a2-ce82baa613f0',
    'employee@azmisahin.com'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --5,
    'e670f575-eda6-4476-8175-6eaf76b05990',
    'manager@azmisahin.com'
    --timezone('UTC' :: text, now()),
    --null
);