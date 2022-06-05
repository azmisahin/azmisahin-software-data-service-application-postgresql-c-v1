-- create "configurations"."currencies" table
--
-- Currencies

CREATE TABLE "currencies" (

	-- Currency Code ISO 4217
	"currency_code" char(3) NOT NULL,

	-- Currency Name
	"currency_name" varchar(50) NOT NULL,

	-- Currency Symbol
	"currency_symbol" char(4) NOT NULL

);

COMMENT ON TABLE "currencies" IS 'Currencies.';
COMMENT ON COLUMN "currencies"."currency_code" IS 'Currency Code';
COMMENT ON COLUMN "currencies"."currency_name" IS 'Currency Name';
COMMENT ON COLUMN "currencies"."currency_symbol" IS 'Currency Symbol';
