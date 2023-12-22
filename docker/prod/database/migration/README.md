## Configure Remote database on NEON

It is important to create a role and grant the user the following permissions:
GRANT USAGE, CREATE ON SCHEMA pulpout TO pulpout;

## Start flyway against production database

Replace password with password of the exact user
