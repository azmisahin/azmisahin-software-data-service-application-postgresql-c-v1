-- test the "dictionaries" table in the "configurations" schema.
--
-- Dictionaries

INSERT INTO "dictionaries" (

	-- Currency Culture Code
	-- sampled
	-- ex: en-US
	-- ex: tr-tr
	-- varchar(8) NOT NULL
	"culture_code",

	-- Dictionary Name
	-- varchar(50) NOT NULL
	"dictionary_name",

	-- Dictionary Value
	-- varchar NOT NULL
	"value"
)
VALUES
(
	'zh-CN',
	'app.name',
	'數據庫建模'
),
(
	'en-GB',
	'app.name',
	'Database modeling'
),
(
	'en-US',
	'app.name',
	'Database modeling'
),
(
	'fr-FR',
	'app.name',
	'Modélisation de la base de données'
),
(
	'de-DE',
	'app.name',
	'Datenbankmodellierung'
),
(
	'ja-JP',
	'app.name',
	'データベースモデリング'
),
(
	'ko-KR',
	'app.name',
	'데이터베이스 모델링'
),
(
	'ru-RU',
	'app.name',
	'Моделирование базы данных'
),
(
	'tr-TR',
	'app.name',
	'Veritabanı modelleme'
),
(
	'uk-UA',
	'app.name',
	'Моделювання баз даних'
);