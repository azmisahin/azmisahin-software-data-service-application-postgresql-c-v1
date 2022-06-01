-- schemas list
-- create accounts schema
CREATE SCHEMA accounts;
-- determines which table is meant by following a search path, which is a list of schemas to look up
SET
    search_path TO accounts;

-- include relative
\ir tables/init.pgsql;

\ir views/init.pgsql;