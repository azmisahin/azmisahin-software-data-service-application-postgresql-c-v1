-- create "configurations"."cultures" table
--
-- Cultures

CREATE TABLE "cultures" (

	-- Currency Culture Code
	-- sampled
	-- ex: en-US
	-- ex: tr-tr
	"culture_code" varchar(8) NOT NULL,
	
	-- Culture Name
	"culture_name" varchar(50) NOT NULL

);

COMMENT ON TABLE "cultures" IS 'Cultures';
COMMENT ON COLUMN "cultures"."culture_code" IS 'Culture Code';
COMMENT ON COLUMN "cultures"."culture_name" IS 'Culture Name';