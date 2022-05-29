-- create "accounts"."phones" table
--
-- Keeps track of users' phone information.
-- A user can have more than one phone record.
CREATE TABLE "phones" (

    -- Identity Increment
    "id" int NOT NULL,

    -- All table businues identification
    -- "accounts"."account_id"
    "account_id" uuid NOT NULL,

    -- Country Phone Code [ to 32,767]
    -- E.123 is an international standard by the standardization union
    -- Telephone number, E.123 international notation	+[999] 555 123 4567
	"country_phone_code" smallint NOT NULL,
    
    -- operator code
    -- Telephone number, E.123 international notation	+999 [555] 123 4567
	"operator_code" smallint NOT NULL,

    -- phone number
    -- Telephone number, E.123 international notation	+999 555 [123 4567]
	"phone_number" int NOT NULL,

    -- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
    -- ex: 2021-02-07 18:04:57.3100000 +00:00
    -- ex: 2021-02-07T18:04:57.3100000Z
    -- when the record was last created.
    "created_date" timestamp with time zone NOT NULL,

    -- yyyy-MM-ddTHH:mm:ss.fffffffZ ıso 8601
    -- ex: 2021-02-07 18:04:57.3100000 +00:00
    -- ex: 2021-02-07T18:04:57.3100000Z
    -- when the record was last updated.
    "modified_date" timestamp with time zone NULL

);