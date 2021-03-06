-- include relative tables
-- 
-- Tables to be tested were added in order of application development.

-- Aims to track users with a unique business ID
\ir user.pgsql;

-- Keeps track of users logged in by authorization providers.
\ir authentication.pgsql;

-- Keeps track of users' email information.
\ir email.pgsql;

-- Keeps track of users' phone information.
\ir phone.pgsql;

-- Keeps the personal information of the user account.
\ir person.pgsql;

-- Keeps track of users' password information.
\ir password.pgsql;

-- Should be scheduled to allocate users to a specific role group.
\ir role.pgsql;

-- Keeps users roles matched.
\ir user_role.pgsql;

-- Keeps users token matched.
\ir token.pgsql;