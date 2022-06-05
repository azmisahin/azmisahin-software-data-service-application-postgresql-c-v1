-- test the "cultures" table in the "configurations" schema.
--
-- Cultures

INSERT INTO "cultures" (

	-- Currency Culture Code
	-- sampled
	-- ex: en-US
	-- ex: tr-tr
	-- varchar(8) NOT NULL
	"culture_code",
	
	-- Culture Name
	-- varchar(50) NOT NULL
	"culture_name"

)
VALUES
(
	'zh-CN',
	'Chinese - China'
),
(
	'nl-NL',
	'Dutch - The Netherlands'
),
(
	'en-GB',
	'English - United Kingdom'
),
(
	'en-US',
	'English - United States'
),
(
	'fr-FR',
	'French - France'
),
(
	'de-DE',
	'German - Germany'
),
(
	'ja-JP',
	'Japanese - Japan'
),
(
	'ko-KR',
	'Korean - Korea'
),
(
	'ru-RU',
	'Russian - Russia'
),
(
	'tr-TR',
	'Turkish - Turkey'
),
(
	'uk-UA',
	'Ukrainian - Ukraine'
);