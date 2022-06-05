-- test the "token" table in the "accounts" schema.
--
-- Keeps track of users token in by authorization providers.
INSERT INTO "tokens" (

    -- Identity Increment
    -- int NOT NULL
    -- CREATE SEQUENCE "tokens_id_sq"
    -- ADD CONSTRAINT "tokens_id_pk" PRIMARY KEY ("id")
    -- SET DEFAULT nextval('tokens_id_sq')
    -- CREATE INDEX "tokens_id_ix"
    -- "id",

    -- All table businues identification
    -- "accounts"."account_id"
    -- uuid NOT NULL
    -- ADD CONSTRAINT "tokens_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    -- CREATE INDEX "tokens_account_id_ix"
    "account_id",

    -- provider used for authentication and authorization between multiple services or servers.
    -- varchar(16) NOT NULL
    "provider",

    -- name
    -- varchar(128) NOT NULL
    "name",

    -- value
    -- archar NOT NULL
    "value"

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
    -- "expire_date"
    
)
VALUES
(
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Amazon',
    'authentication',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsb2Nrb3V0Ijp0cnVlfQ.YCFZ4sf09dNkyGZAANy83NyCLFVvTumJEyb-Z63XVs8'
);