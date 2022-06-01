-- test the "persons" table in the "accounts" schema.
-- 
-- Keeps the personal information of the user account.
-- Contact records must be singular.
-- User record and contact record must have only one match.
INSERT INTO "persons" (

    -- Identity Increment
    -- int NOT NULL
    -- CREATE SEQUENCE "persons_id_sq"
    -- ADD CONSTRAINT "persons_id_pk" PRIMARY KEY ("id")
    -- SET DEFAULT nextval('persons_id_sq')
    -- CREATE INDEX "persons_id_ix"
    --"id",

    -- All table businues identification
    -- "accounts"."account_id"
    -- uuid NOT NULL
    -- ADD CONSTRAINT "persons_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    -- CREATE INDEX "persons_account_id_ix"    
    "account_id",

    -- First Name
    -- varchar(50)
    "first_name",

    -- Last Name
    -- varchar(50)
    "last_name"

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
    -- "modified_date
    
)
VALUES
(
    --1,
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'user first name',
    'user last name'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --2,
    'e3916619-10af-437c-aaac-bf3be5991eec',
    'customer first name',
    'customer last name'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --3,
    '3e2ceadf-7cca-4206-b3e2-5a8eab9dd838',
    'partner first name',
    'partner last name'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --4,
    '628fa16f-8878-4623-83a2-ce82baa613f0',
    'employee first name',
    'employee last name'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --5,
    'e670f575-eda6-4476-8175-6eaf76b05990',
    'manager first name',
    'manager last name'
    --timezone('UTC' :: text, now()),
    --null
);