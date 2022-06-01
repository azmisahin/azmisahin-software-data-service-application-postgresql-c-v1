-- alter "configurations"."cultures" table
--
-- Cultures

-- The cahnge order should be applied in the following order.
-- SEQUENCE, PRIMARY KEY, FOREIGN KEY, DEFAULT VALUE, INDEX
-- name define should be like tablename_fieldname_sq

ALTER TABLE "cultures" ADD CONSTRAINT "cultures_culture_code_pk" PRIMARY KEY ("culture_code") ;
CREATE INDEX "cultures_culture_code_ix" ON "cultures" ("culture_code" DESC) ;
