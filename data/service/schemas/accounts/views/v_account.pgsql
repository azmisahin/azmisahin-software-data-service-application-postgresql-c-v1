-- create "accounts"."v_account" view
--
-- Displays all account details of the user.

CREATE OR REPLACE VIEW "accounts"."v_account"
 AS
 SELECT 
    "users"."account_id",
    "users"."lockout",
    "users"."access_failed_count",
    "users"."lockout_end_date",
    "emails"."email_address",
    "phones"."country_phone_code",
    "phones"."operator_code",
    "phones"."phone_number",
    "persons"."first_name",
    "persons"."last_name",
    "passwords"."password_hash",
    "passwords"."security_stamp",
    "user_roles"."role_id",
    "roles"."role_name"
   FROM "accounts"."users"
     LEFT JOIN "accounts"."emails" ON "users"."account_id" = "emails"."account_id"
     LEFT JOIN "accounts"."phones" ON "users"."account_id" = "phones"."account_id"
     LEFT JOIN "accounts"."persons" ON "users"."account_id" = "persons"."account_id"
     LEFT JOIN "accounts"."passwords" ON "users"."account_id" = "passwords"."account_id"
     LEFT JOIN "accounts"."user_roles" ON "users"."account_id" = "user_roles"."account_id"
     LEFT JOIN "accounts"."roles" ON "user_roles"."role_id" = "roles"."role_id";
