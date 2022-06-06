-- alter "configurations"."dictionaries" table
--
-- Dictionaries

-- The cahnge order should be applied in the following order.
-- SEQUENCE, PRIMARY KEY, FOREIGN KEY, DEFAULT VALUE, INDEX
-- name define should be like tablename_fieldname_sq

ALTER TABLE "dictionaries" ADD CONSTRAINT "dictionaries_name_culture_code_fk" FOREIGN KEY ("name_culture_code") REFERENCES "cultures"("culture_code") ;
ALTER TABLE "dictionaries" ADD CONSTRAINT "dictionaries_value_culture_code_fk" FOREIGN KEY ("value_culture_code") REFERENCES "cultures"("culture_code") ;
CREATE INDEX "dictionaries_name_culture_code_ix" ON "dictionaries" ("name_culture_code" DESC) ;
CREATE INDEX "dictionaries_value_culture_code_ix" ON "dictionaries" ("value_culture_code" DESC) ;