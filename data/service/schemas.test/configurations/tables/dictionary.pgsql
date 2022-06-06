-- test the "dictionaries" table in the "configurations" schema.
--
-- Dictionaries

INSERT INTO "dictionaries" (

	-- the cultural code that defines the basic language.
	-- varchar(8) NOT NULL
	"name_culture_code",

	-- the culture code that identifies the target language.
	-- varchar(8) NOT NULL
	"value_culture_code",

	-- a set of words consisting of one or more syllables, or specially defined.
	-- varchar(50) NOT NULL
	"name",

	-- a work that explains or defines its meanings or shows its equivalents in another language.
	-- varchar NOT NULL
	"value"
)
VALUES
(
	'en-US',
	'zh-CN',
	'app.name',
	'數據庫建模'
),
(
	'en-US',
	'en-GB',
	'app.name',
	'Database modeling'
),
(
	'en-US',
	'en-US',
	'app.name',
	'Database modeling'
),
(
	'en-US',
	'fr-FR',
	'app.name',
	'Modélisation de la base de données'
),
(
	'en-US',
	'de-DE',
	'app.name',
	'Datenbankmodellierung'
),
(
	'en-US',
	'ja-JP',
	'app.name',
	'データベースモデリング'
),
(
	'en-US',
	'ko-KR',
	'app.name',
	'데이터베이스 모델링'
),
(
	'en-US',
	'ru-RU',
	'app.name',
	'Моделирование базы данных'
),
(
	'en-US',
	'tr-TR',
	'app.name',
	'Veritabanı modelleme'
),
(
	'en-US',
	'uk-UA',
	'app.name',
	'Моделювання баз даних'
);