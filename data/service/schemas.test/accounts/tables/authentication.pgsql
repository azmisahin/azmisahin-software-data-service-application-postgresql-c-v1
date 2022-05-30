-- test the "authentications" table in the "accounts" schema.
--
-- Keeps track of users logged in by authorization providers.
-- Users can login with more than one authenticator.
INSERT INTO "authentications" (

    -- Identity Increment
    -- int NOT NULL
    "id",

    -- All table businues identification
    -- "accounts"."account_id"
    -- uuid NOT NULL
    "account_id",

    -- provider used for authentication and authorization between multiple services or servers.
    -- varchar(16) NOT NULL
    "provider",

    -- key assigned by the provider as a result of authorization.
    -- varchar(128) NOT NULL
    "provider_id",

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
    'Amazon',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    2,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Apple',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    2,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Auth0',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    3,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Azure',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    4,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Bitbucket',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    6,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'DigitalOcean',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    7,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Discord',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    8,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Dropbox',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    9,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Facebook',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    10,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'GitHub',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    11,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Gitlab',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    12,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Google',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    13,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Heroku',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    14,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Instagram',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    15,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Facebook',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    16,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Linkedin',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    17,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Mailru',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    18,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Okta',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    19,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'OneDrive',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    20,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'OpenID',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    21,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Paypal',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    22,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'SalesForce',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    23,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Shopify',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    24,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Slack',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    25,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Soundcloud',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    26,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Spotify',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    27,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Steam',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    28,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Stripe',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    29,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'TikTok',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    30,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Tumblr',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    31,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Twitch',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    32,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Twitter',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    33,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'VK',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    34,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Yahoo',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    35,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Yandex',
    '?',
    timezone('UTC' :: text, now()),
    null
),
(
    36,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'Zoom',
    '?',
    timezone('UTC' :: text, now()),
    null
);