-- test the "passwords" table in the "accounts" schema.
--
-- Keeps track of users' password information.
-- If a user's password history record is desired, a new record must be created.
-- For password verification, if the password history style is adopted, the last record on the creation date should be used.
INSERT INTO "passwords" (

    -- Identity Increment
    -- int NOT NULL
    -- CREATE SEQUENCE "passwords_id_sq"
    -- ADD CONSTRAINT "passwords_id_pk" PRIMARY KEY ("id")
    -- SET DEFAULT nextval('passwords_id_sq')
    -- CREATE INDEX "passwords_id_ix"
    --"id",

    -- All table businues identification
    -- "accounts"."account_id"
    -- uuid NOT NULL
    -- ADD CONSTRAINT "passwords_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    -- CREATE INDEX "passwords_account_id_ix"    
    "account_id",

    -- Password hash, a password definition through a hashing algorithm (bcrypt, SHA, etc.)
    -- to convert plain text into an incomprehensible string of numbers and letters.
    -- varchar(128) NOT NULL
    "password_hash",

    -- The security timestamp is used to track changes made to the user profile.
    -- It is used for security purposes when important features of a user, such as changing passwords, are changed.
    -- uuid version 1
    -- uuid NOT NULL
    "security_stamp"

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
    -- SHA 512
    -- password
    'B109F3BBBC244EB82441917ED06D618B9008DD09B3BEFD1B5E07394C706A8BB980B1D7785E5976EC049B46DF5F1326AF5A2EA6D103FD07C95385FFAB0CACBC86',
    public.uuid_generate_v1 ()
    --timezone('UTC' :: text, now()),
    --null
),
(
    --2,
    'e3916619-10af-437c-aaac-bf3be5991eec',
    -- SHA 512
    -- password
    'B109F3BBBC244EB82441917ED06D618B9008DD09B3BEFD1B5E07394C706A8BB980B1D7785E5976EC049B46DF5F1326AF5A2EA6D103FD07C95385FFAB0CACBC86',
    public.uuid_generate_v1 ()
    --timezone('UTC' :: text, now()),
    --null
),
(
    --3,
    '3e2ceadf-7cca-4206-b3e2-5a8eab9dd838',
    -- SHA 512
    -- password
    'B109F3BBBC244EB82441917ED06D618B9008DD09B3BEFD1B5E07394C706A8BB980B1D7785E5976EC049B46DF5F1326AF5A2EA6D103FD07C95385FFAB0CACBC86',
    public.uuid_generate_v1 ()
    --timezone('UTC' :: text, now()),
    --null
),
(
    --4,
    '628fa16f-8878-4623-83a2-ce82baa613f0',
    -- SHA 512
    -- password
    'B109F3BBBC244EB82441917ED06D618B9008DD09B3BEFD1B5E07394C706A8BB980B1D7785E5976EC049B46DF5F1326AF5A2EA6D103FD07C95385FFAB0CACBC86',
    public.uuid_generate_v1 ()
    --timezone('UTC' :: text, now()),
    --null
),
(
    --5,
    'e670f575-eda6-4476-8175-6eaf76b05990',
    -- SHA 512
    -- password
    'B109F3BBBC244EB82441917ED06D618B9008DD09B3BEFD1B5E07394C706A8BB980B1D7785E5976EC049B46DF5F1326AF5A2EA6D103FD07C95385FFAB0CACBC86',
    public.uuid_generate_v1 ()
    --timezone('UTC' :: text, now()),
    --null
);