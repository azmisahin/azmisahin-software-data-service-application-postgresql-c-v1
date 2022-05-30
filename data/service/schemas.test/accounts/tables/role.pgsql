-- test the "roles" table in the "accounts" schema.
--
-- Should be scheduled to allocate users to a specific role group.
-- For example, "manager", "customer", ...
INSERT INTO "roles" (

    -- Identity Increment
    -- int NOT NULL
    "id",

    -- Secure Record
    -- default public.uuid_generate_v4 ()
    -- uuid NOT NULL
    "role_id",
    
    -- Role Name
    -- varchar(50) NOT NULL
    "role_name"
)
VALUES
(
    1,
    'a3a9d613-9c9c-4b36-b736-0c153726bcaf',
    'user'
),
(
    2,
    'ec140493-c578-428e-b5c9-49e453018e45',
    'customer'
),
(
    3,
    'e5a7fc3a-14dd-4293-a2ed-ab434e639555',
    'partner'
),
(
    4,
    '933c9570-d143-4047-b4f1-9c043d9ecf8e',
    'employee'
),
(
    5,
    '0bbb6219-a1a7-455f-9d97-1280f28df090',
    'manager'
);