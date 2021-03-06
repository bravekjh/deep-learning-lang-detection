REVOKE ALL ON DATABASE nasa FROM nasa_read;

-- public schema
REVOKE ALL ON SCHEMA public FROM nasa_read;
REVOKE ALL ON ALL SEQUENCES IN SCHEMA public FROM nasa_read;
REVOKE ALL ON ALL TABLES IN SCHEMA public FROM nasa_read;
REVOKE ALL ON ALL FUNCTIONS IN SCHEMA public FROM nasa_read;
ALTER DEFAULT PRIVILEGES IN SCHEMA public REVOKE ALL ON TABLES FROM nasa_read;
ALTER DEFAULT PRIVILEGES IN SCHEMA public REVOKE ALL ON SEQUENCES FROM nasa_read;
ALTER DEFAULT PRIVILEGES IN SCHEMA public REVOKE ALL ON FUNCTIONS FROM nasa_read;

-- data SCHEMA
REVOKE ALL ON SCHEMA data FROM nasa_read;
REVOKE ALL ON ALL SEQUENCES IN SCHEMA data FROM nasa_read;
REVOKE ALL ON ALL TABLES IN SCHEMA data FROM nasa_read;
REVOKE ALL ON ALL FUNCTIONS IN SCHEMA data FROM nasa_read;
ALTER DEFAULT PRIVILEGES IN SCHEMA data REVOKE ALL ON TABLES FROM nasa_read;
ALTER DEFAULT PRIVILEGES IN SCHEMA data REVOKE ALL ON SEQUENCES FROM nasa_read;
ALTER DEFAULT PRIVILEGES IN SCHEMA data REVOKE ALL ON FUNCTIONS FROM nasa_read;

DROP ROLE nasa_read;