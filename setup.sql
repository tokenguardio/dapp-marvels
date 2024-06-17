CREATE USER squid WITH PASSWORD 'postgres';

CREATE SCHEMA IF NOT EXISTS dapp_analytics AUTHORIZATION squid;
ALTER USER squid
SET
    search_path TO dapp_analytics;

GRANT CONNECT, CREATE ON DATABASE dapp_analytics TO squid;
GRANT ALL PRIVILEGES ON SCHEMA dapp_analytics TO squid;
GRANT ALL PRIVileges ON ALL TABLES IN SCHEMA dapp_analytics TO squid;
ALTER DEFAULT PRIVILEGES IN SCHEMA dapp_analytics GRANT ALL ON TABLES TO squid;
