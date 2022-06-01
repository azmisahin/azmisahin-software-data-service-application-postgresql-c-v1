-- alter "configurations"."dictionaries" table
--
-- Dictionaries

-- The cahnge order should be applied in the following order.
-- SEQUENCE, PRIMARY KEY, FOREIGN KEY, DEFAULT VALUE, INDEX
-- name define should be like tablename_fieldname_sq

ALTER TABLE "dictionaries" ADD CONSTRAINT "dictionaries_culture_code_fk" FOREIGN KEY ("culture_code") REFERENCES "cultures"("culture_code") ;
CREATE INDEX "dictionaries_culture_code_ix" ON "dictionaries" ("culture_code" DESC) ;

