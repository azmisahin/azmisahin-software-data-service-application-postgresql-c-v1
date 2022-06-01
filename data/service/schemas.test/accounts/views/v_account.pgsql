-- create "accounts"."v_account" view
--
-- Displays all account details of the user.

SELECT
    "first_name",
    "last_name",
    "email_address",
    "role_name"
    
    FROM "accounts"."v_account"
    LIMIT 1