-- PL/SQL first queries for verification after successful connection to an Oracle database

-- displays the Oracle DB version and edition
SELECT * FROM v$version;

-- displays your current username - ensures you're connected with the expected user
SELECT USER FROM dual;

-- displays available Tables - verifies that you can access tables under your schema
SELECT table_name FROM user_tables;

-- displays database connectivity and time - ensures you're getting data from the database
SELECT SYSDATE FROM dual;
