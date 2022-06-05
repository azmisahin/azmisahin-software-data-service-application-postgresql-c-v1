-- schemas list
-- create configurations schema
CREATE SCHEMA configurations;
-- determines which table is meant by following a search path, which is a list of schemas to look up
SET
    search_path TO configurations;

-- include relative
\ir tables/init.pgsql;

\ir views/init.pgsql;