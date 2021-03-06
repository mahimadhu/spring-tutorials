-- Create master and tenant schemas
CREATE SCHEMA IF NOT EXISTS MASTER AUTHORIZATION james_bond;
CREATE SCHEMA IF NOT EXISTS TENANT_ACME AUTHORIZATION james_bond;
CREATE SCHEMA IF NOT EXISTS TENANT_ARGUS AUTHORIZATION james_bond;

-- Tables for tenant schemas
CREATE TABLE IF NOT EXISTS TENANT_ACME.NOTE(
    ID BIGSERIAL PRIMARY KEY,
    TITLE VARCHAR(32) NOT NULL,
    CONTENT VARCHAR(64)
);

CREATE TABLE IF NOT EXISTS TENANT_ARGUS.NOTE(
    ID BIGSERIAL PRIMARY KEY,
    TITLE VARCHAR(32) NOT NULL,
    CONTENT VARCHAR(64)
);