-- test the "phones" table in the "accounts" schema.
--
-- Keeps track of users' phone information.
-- A user can have more than one phone record.
INSERT INTO "phones" (

    -- Identity Increment
    -- int NOT NULL
    "id",

    -- All table businues identification
    -- "accounts"."account_id"
    -- uuid NOT NULL
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
    "created_date",

    -- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
    -- ex: 2021-02-07 18:04:57.3100000 +00:00
    -- ex: 2021-02-07T18:04:57.3100000Z
    -- when the record was last updated.
    -- timestamp with time zone NULL
    "modified_date"

)
VALUES
(
    1,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    999,
    555,
    1234561,
    timezone('UTC' :: text, now()),
    null
),
(
    2,
    'ec140493-c578-428e-b5c9-49e453018e45',
    999,
    555,
    1234562,
    timezone('UTC' :: text, now()),
    null
),
(
    3,
    'e5a7fc3a-14dd-4293-a2ed-ab434e639555',
    999,
    555,
    1234563,
    timezone('UTC' :: text, now()),
    null
),
(
    4,
    '933c9570-d143-4047-b4f1-9c043d9ecf8e',
    999,
    555,
    1234564,
    timezone('UTC' :: text, now()),
    null
),
(
    5,
    '0bbb6219-a1a7-455f-9d97-1280f28df090',
    999,
    555,
    1234565,
    timezone('UTC' :: text, now()),
    null
);