-- create "configurations"."dictionaries" table
--
-- Dictionaries

CREATE TABLE "dictionaries" (

		-- the cultural code that defines the basic language.
		-- example 'en-US'
		"name_culture_code" varchar(8) NOT NULL,

		-- the culture code that identifies the target language.
		-- example 'en-GB'
		"value_culture_code" varchar(8) NOT NULL,

		-- a set of words consisting of one or more syllables, or specially defined.
		-- example 'app.name'
		"name" varchar(50) NOT NULL,

		-- a work that explains or defines its meanings or shows its equivalents in another language.
		-- example 'Database modeling'
		"value" varchar NOT NULL

);

COMMENT ON TABLE "dictionaries" IS 'Dictionaries';
COMMENT ON COLUMN "dictionaries"."name_culture_code" IS 'the cultural code that defines the basic language.';
COMMENT ON COLUMN "dictionaries"."value_culture_code" IS 'the culture code that identifies the target language.';
COMMENT ON COLUMN "dictionaries"."name" IS 'a set of words consisting of one or more syllables, or specially defined.';
COMMENT ON COLUMN "dictionaries"."value" IS 'a work that explains or defines its meanings or shows its equivalents in another language.';
