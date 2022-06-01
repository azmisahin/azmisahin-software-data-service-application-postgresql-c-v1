-- create "configurations"."dictionaries" table
--
-- Dictionaries

CREATE TABLE "dictionaries" (

		-- Currency Culture Code
		-- sampled
		-- ex: en-US
		-- ex: tr-tr
		"culture_code" varchar(8) NOT NULL,
		
		-- Dictionary Name
		"dictionary_name" varchar(50) NOT NULL,

		-- Dictionary Value
		"value" varchar NOT NULL

);

COMMENT ON TABLE "dictionaries" IS 'Dictionaries';
COMMENT ON COLUMN "dictionaries"."dictionary_name" IS 'Dictionary Name';
COMMENT ON COLUMN "dictionaries"."culture_code" IS 'Culture Code';
COMMENT ON COLUMN "dictionaries"."value" IS 'Dictionary Value';