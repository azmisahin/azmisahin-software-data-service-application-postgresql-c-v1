-- test the "currencies" table in the "configurations" schema.
--
-- Currencies

INSERT INTO "currencies" (

	-- Currency Code ISO 4217
	-- char(3) NOT NULL
	"currency_code",

	-- Currency Name
	-- varchar(50) NOT NULL
	"currency_name",

	-- Currency Symbol
	-- char(4) NOT NULL
	"currency_symbol"

)
VALUES
(
	'AUD',
	'Australia Dollar',
	'$'
),
(
	'CAD',
	'Canada Dollar',
	'$'
),
(
	'CNY',
	'China Yuan Renminbi',
	'¥'
),
(
	'EUR',
	'Euro Member Countries',
	'€'
),
(
	'JPY',
	'Japan Yen',
	'¥'
),
(
	'RUB',
	'Russia Ruble',
	'₽'
),
(
	'TRY',
	'Turkey Lira',
	'₺'
),
(
	'UAH',
	'Ukraine Hryvnia',
	'₴'
),
(
	'GBP',
	'United Kingdom Pound',
	'£'
),
(
	'USD',
	'United States Dollar',
	'$'
);