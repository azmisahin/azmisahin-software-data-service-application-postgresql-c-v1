-- test the "user_roles" table in the "accounts" schema.
--
-- Keeps users roles matched.
-- In the first role definition, the creation date is written. -- On a role change, only the update time changes.
INSERT INTO "user_roles" (

    -- Bussnies ID
    -- uuid NOT NULL
    -- ADD CONSTRAINT "user_roles_account_id_pk" PRIMARY KEY ("account_id")
    -- ADD CONSTRAINT "user_roles_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id")
    -- CREATE INDEX "user_roles_account_id_ix"
    "account_id",
    
    -- Role ID
    -- uuid NOT NULL
    -- ADD CONSTRAINT "user_roles_role_id_pk" PRIMARY KEY ("role_id")
    -- ADD CONSTRAINT "user_roles_role_id_fk" FOREIGN KEY ("role_id") REFERENCES "roles"("role_id")
    -- CREATE INDEX "user_roles_role_id_ix"
    "role_id"

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
    -- account 1
    '941c2241-3d8f-4eaa-b43e-3e14456eb8fd',
    -- role 1 user
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf'
    --timezone('UTC' :: text, now()),
    --null
),
(
    -- account 2
    'e3916619-10af-437c-aaac-bf3be5991eec',
    -- role 2 customer
    'ec140493-c578-428e-b5c9-49e453018e45'
    --timezone('UTC' :: text, now()),
    --null
),
(
    -- account 3
    '3e2ceadf-7cca-4206-b3e2-5a8eab9dd838',
    -- role 3 partner
    'e5a7fc3a-14dd-4293-a2ed-ab434e639555'
    --timezone('UTC' :: text, now()),
    --null
),
(
    -- account 4
    '628fa16f-8878-4623-83a2-ce82baa613f0',
    -- role 4 employee
    '933c9570-d143-4047-b4f1-9c043d9ecf8e'
    --timezone('UTC' :: text, now()),
    --null
),
(
    -- account 5
    'e670f575-eda6-4476-8175-6eaf76b05990',
    -- role 5 manager
    '0bbb6219-a1a7-455f-9d97-1280f28df090'
    --timezone('UTC' :: text, now()),
    --null
);