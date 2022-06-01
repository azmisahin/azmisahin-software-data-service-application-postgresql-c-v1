-- test the "phones" table in the "accounts" schema.
--
-- Keeps track of users' phone information.
-- A user can have more than one phone record.
INSERT INTO "phones" (

    -- Identity Increment
    -- int NOT NULL
    -- CREATE SEQUENCE "phones_id_sq"
    -- ADD CONSTRAINT "phones_id_pk" PRIMARY KEY ("id")
    -- SET DEFAULT nextval('phones_id_sq')
    -- CREATE INDEX "phones_id_ix"
    --"id",

    -- All table businues identification
    -- "accounts"."account_id"
    -- uuid NOT NULL
    -- ADD CONSTRAINT "phones_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    -- CREATE INDEX "phones_account_id_ix"    
    "account_id",

    -- Country Phone Code [ to 32,767]
    -- E.123 is an international standard by the standardization union
    -- Telephone number, E.123 international notation	+[999] 555 123 4567
	-- smallint NOT NULL
    "country_phone_code",
    
    -- operator code
    -- Telephone number, E.123 international notation	+999 [555] 123 4567
	-- smallint NOT NULL
    "operator_code",

    -- phone number
    -- Telephone number, E.123 international notation	+999 555 [123 4567]
	-- int NOT NULL
    "phone_number",

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
    999,
    555,
    1234561
    --timezone('UTC' :: text, now()),
    --null
),
(
    --2,
    'e3916619-10af-437c-aaac-bf3be5991eec',
    999,
    555,
    1234562
    --timezone('UTC' :: text, now()),
    --null
),
(
    --3,
    '3e2ceadf-7cca-4206-b3e2-5a8eab9dd838',
    999,
    555,
    1234563
    --timezone('UTC' :: text, now()),
    --null
),
(
    --4,
    '628fa16f-8878-4623-83a2-ce82baa613f0',
    999,
    555,
    1234564
    --timezone('UTC' :: text, now()),
    --null
),
(
    --5,
    'e670f575-eda6-4476-8175-6eaf76b05990',
    999,
    555,
    1234565
    --timezone('UTC' :: text, now()),
    --null
);