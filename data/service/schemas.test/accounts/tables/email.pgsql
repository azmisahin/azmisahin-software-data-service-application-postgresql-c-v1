-- test the "emails" table in the "accounts" schema.
--
-- Keeps track of users' email information.
-- A user can have more than one email record.
INSERT INTO "emails" (

    -- Identity Increment
    -- int NOT NULL
    "id",

    -- All table businues identification
    -- "accounts"."account_id"
    -- uuid NOT NULL
    "account_id",

    -- Valid email address
    -- There is a length limit on email addresses.
    -- That limit is a maximum of 64 characters (octets) in the "local part" (before the "@")
    -- and a maximum of 255 characters (octets) in the domain part (after the "@")
    -- for a total length of 320 characters.
    -- varchar(320) NOT NULL
    "email_address",

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
    'user@azmisahin.com',
    timezone('UTC' :: text, now()),
    null
),
(
    2,
    'ec140493-c578-428e-b5c9-49e453018e45',
    'customer@azmisahin.com',
    timezone('UTC' :: text, now()),
    null
),
(
    3,
    'e5a7fc3a-14dd-4293-a2ed-ab434e639555',
    'partner@azmisahin.com',
    timezone('UTC' :: text, now()),
    null
),
(
    4,
    '933c9570-d143-4047-b4f1-9c043d9ecf8e',
    'employee@azmisahin.com',
    timezone('UTC' :: text, now()),
    null
),
(
    5,
    '0bbb6219-a1a7-455f-9d97-1280f28df090',
    'manager@azmisahin.com',
    timezone('UTC' :: text, now()),
    null
);