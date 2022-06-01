-- alter "configurations"."currencies" table
--
-- Currencies

-- The cahnge order should be applied in the following order.
-- SEQUENCE, PRIMARY KEY, FOREIGN KEY, DEFAULT VALUE, INDEX
-- name define should be like tablename_fieldname_sq

ALTER TABLE "currencies" ADD CONSTRAINT "currencies_currency_code_pk" PRIMARY KEY ("currency_code") ;
CREATE INDEX "currencies_currency_code_ix" ON "currencies" ("currency_code" DESC) ;