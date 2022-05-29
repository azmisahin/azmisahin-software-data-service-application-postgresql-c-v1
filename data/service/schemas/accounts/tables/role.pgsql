-- create "accounts"."roles" table
--
-- Should be scheduled to allocate users to a specific role group.
-- For example, "manager", "customer", ...
CREATE TABLE "roles" (

    -- Identity Increment
    "id" int NOT NULL,

    -- Secure Record
    -- default public.uuid_generate_v4 ()
    "role_id" uuid NOT NULL,
    
    -- Role Name
    "role_name" varchar(50) NOT NULL
);