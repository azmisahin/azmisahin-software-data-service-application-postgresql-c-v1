-- alter "accounts"."roles" table
--
-- Should be scheduled to allocate users to a specific role group.
-- For example, "manager", "customer", ...


-- Identity Increment
-- ALTER  TABLE "roles" ALTER COLUMN "id" ;

-- Secure Record
-- default public.uuid_generate_v4 ()
ALTER  TABLE "roles" ALTER COLUMN "role_id" SET DEFAULT public.uuid_generate_v4 ()
    
-- Role Name
-- ALTER  TABLE "roles" ALTER COLUMN "role_name" ;

