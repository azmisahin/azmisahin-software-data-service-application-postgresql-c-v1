-- test the "authentications" table in the "accounts" schema.
--
-- Keeps track of users logged in by authorization providers.
-- Users can login with more than one authenticator.
INSERT INTO "authentications" (

    -- Identity Increment
    -- int NOT NULL
    -- CREATE SEQUENCE "authentications_id_sq"
    -- ADD CONSTRAINT "authentications_id_pk" PRIMARY KEY ("id")
    -- SET DEFAULT nextval('authentications_id_sq')
    -- CREATE INDEX "authentications_id_ix"
    -- "id",

    -- All table businues identification
    -- "accounts"."account_id"
    -- uuid NOT NULL
    -- ADD CONSTRAINT "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    -- CREATE INDEX "authentications_account_id_ix"
    "account_id",

    -- provider used for authentication and authorization between multiple services or servers.
    -- varchar(16) NOT NULL
    "provider",

    -- key assigned by the provider as a result of authorization.
    -- varchar(128) NOT NULL
    "provider_key"

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
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Amazon',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --2,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Apple',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --3,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Auth0',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --4,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Azure',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --5,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Bitbucket',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --6,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'DigitalOcean',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --7,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Discord',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --8,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Dropbox',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --9,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Facebook',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --10,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'GitHub',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --11,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Gitlab',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --12,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Google',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --13,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Heroku',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --14,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Instagram',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --15,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Facebook',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --16,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Linkedin',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --17,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Mailru',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --18,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Okta',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --19,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'OneDrive',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --20,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'OpenID',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --21,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Paypal',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --22,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'SalesForce',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --23,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Shopify',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --24,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Slack',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --25,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Soundcloud',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --26,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Spotify',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --27,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Steam',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --28,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Stripe',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --29,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'TikTok',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --30,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Tumblr',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --31,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Twitch',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --32,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Twitter',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --33,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'VK',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --34,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Yahoo',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --35,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Yandex',
    '?'
    --timezone('UTC' :: text, now()),
    --null
),
(
    --36,
    -- "authentications_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    'Zoom',
    '?'
    --timezone('UTC' :: text, now()),
    --null
);