-- test the "passwords" table in the "accounts" schema.
--
-- Keeps track of users' password information.
-- If a user's password history record is desired, a new record must be created.
-- For password verification, if the password history style is adopted, the last record on the creation date should be used.
INSERT INTO "passwords" (

    -- Identity Increment
    -- int NOT NULL
    "id",

    -- All table businues identification
    -- "accounts"."account_id"
    -- uuid NOT NULL
    "account_id",

    -- Password hash, a password definition through a hashing algorithm (bcrypt, SHA, etc.)
    -- to convert plain text into an incomprehensible string of numbers and letters.
    -- varchar(128) NOT NULL
    "password_hash",

    -- The security timestamp is used to track changes made to the user profile.
    -- It is used for security purposes when important features of a user, such as changing passwords, are changed.
    -- uuid version 1
    -- uuid NOT NULL
    "security_stamp",

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
    -- SHA 512
    -- password
    'B109F3BBBC244EB82441917ED06D618B9008DD09B3BEFD1B5E07394C706A8BB980B1D7785E5976EC049B46DF5F1326AF5A2EA6D103FD07C95385FFAB0CACBC86',
    public.uuid_generate_v1 (),
    timezone('UTC' :: text, now()),
    null
),
(
    2,
    'ec140493-c578-428e-b5c9-49e453018e45',
    -- SHA 512
    -- password
    'B109F3BBBC244EB82441917ED06D618B9008DD09B3BEFD1B5E07394C706A8BB980B1D7785E5976EC049B46DF5F1326AF5A2EA6D103FD07C95385FFAB0CACBC86',
    public.uuid_generate_v1 (),
    timezone('UTC' :: text, now()),
    null
),
(
    3,
    'e5a7fc3a-14dd-4293-a2ed-ab434e639555',
    -- SHA 512
    -- password
    'B109F3BBBC244EB82441917ED06D618B9008DD09B3BEFD1B5E07394C706A8BB980B1D7785E5976EC049B46DF5F1326AF5A2EA6D103FD07C95385FFAB0CACBC86',
    public.uuid_generate_v1 (),
    timezone('UTC' :: text, now()),
    null
),
(
    4,
    '933c9570-d143-4047-b4f1-9c043d9ecf8e',
    -- SHA 512
    -- password
    'B109F3BBBC244EB82441917ED06D618B9008DD09B3BEFD1B5E07394C706A8BB980B1D7785E5976EC049B46DF5F1326AF5A2EA6D103FD07C95385FFAB0CACBC86',
    public.uuid_generate_v1 (),
    timezone('UTC' :: text, now()),
    null
),
(
    5,
    '0bbb6219-a1a7-455f-9d97-1280f28df090',
    -- SHA 512
    -- password
    'B109F3BBBC244EB82441917ED06D618B9008DD09B3BEFD1B5E07394C706A8BB980B1D7785E5976EC049B46DF5F1326AF5A2EA6D103FD07C95385FFAB0CACBC86',
    public.uuid_generate_v1 (),
    timezone('UTC' :: text, now()),
    null
);