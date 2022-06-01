-- alter "accounts"."passwords" table
--
-- Keeps track of users' password information.
-- If a user's password history record is desired, a new record must be created.
-- For password verification, if the password history style is adopted, the last record on the creation date should be used.

-- The cahnge order should be applied in the following order.
-- SEQUENCE, PRIMARY KEY, FOREIGN KEY, DEFAULT VALUE, INDEX
-- name define should be like tablename_fieldname_sq

-- Identity Increment
CREATE SEQUENCE "passwords_id_sq" AS integer INCREMENT BY 1 MINVALUE 1 START WITH 1 ;
ALTER TABLE "passwords" ADD CONSTRAINT "passwords_id_pk" PRIMARY KEY ("id") ;
ALTER TABLE "passwords" ALTER COLUMN "id" SET DEFAULT nextval('passwords_id_sq') ;
CREATE INDEX "passwords_id_ix" ON "passwords" ("id" DESC) ;

-- All table businues identification
-- "accounts"."account_id"
ALTER TABLE "passwords" ADD CONSTRAINT "passwords_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "users"("account_id") ;
CREATE INDEX "passwords_account_id_ix" ON "passwords" ("account_id" DESC) ;

-- Password hash, a password definition through a hashing algorithm (bcrypt, SHA, etc.)
-- to convert plain text into an incomprehensible string of numbers and letters.
-- ALTER TABLE "passwords" ALTER COLUMN "password_hash" ;

-- The security timestamp is used to track changes made to the user profile.
-- It is used for security purposes when important features of a user, such as changing passwords, are changed.
-- uuid version 1
ALTER TABLE "passwords" ALTER COLUMN "security_stamp" SET DEFAULT public.uuid_generate_v1 ();

-- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
-- ex: 2021-02-07 18:04:57.3100000 +00:00
-- ex: 2021-02-07T18:04:57.3100000Z
-- when the record was last created.
ALTER TABLE "passwords" ALTER COLUMN "created_date" SET DEFAULT timezone('UTC' :: text, now());

-- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
-- ex: 2021-02-07 18:04:57.3100000 +00:00
-- ex: 2021-02-07T18:04:57.3100000Z
-- when the record was last updated.
-- ALTER TABLE "passwords" ALTER COLUMN "modified_date" ;
    
