-- creating data table space

CREATE TABLESPACE agriculture_data
DATAFILE 'C:\app\niyon\product\21c\oradata\XE\agriculturesales_db\agriculture_data01.dbf'
SIZE 100M
AUTOEXTEND ON NEXT 10M MAXSIZE UNLIMITED
EXTENT MANAGEMENT LOCAL
SEGMENT SPACE MANAGEMENT AUTO;

-- creating index table space

CREATE TABLESPACE agriculture_index
DATAFILE 'C:\app\niyon\product\21c\oradata\XE\agriculturesales_db\agriculture_index01.dbf'
SIZE 100M
AUTOEXTEND ON NEXT 10M MAXSIZE UNLIMITED;

-- creating temporary table space

CREATE TEMPORARY TABLESPACE agriculture_temp
TEMPFILE 'C:\app\niyon\product\21c\oradata\XE\agriculturesales_db\agriculture_temp01.dbf'
SIZE 50M
AUTOEXTEND ON NEXT 5M MAXSIZE UNLIMITED;

-- enable autoextended parameter set

ALTER DATABASE DATAFILE 
'C:\app\niyon\product\21c\oradata\XE\agriculturesales_db\agriculture_data01.dbf'
AUTOEXTEND ON NEXT 20M MAXSIZE 2G;

	ALTER SESSION SET CONTAINER = tue_27715_yabesi_agricultureSales_db;


-- checking all tablespaces inside my pdb

SELECT tablespace_name, status, contents, extent_management 
FROM dba_tablespaces;

-- archive log list
SELECT log_mode FROM v$database;
or
ARCHIVE LOG LIST;



ALTER SYSTEM SET sga_target=1G SCOPE=SPFILE;
ALTER SYSTEM SET pga_aggregate_target=512M SCOPE=SPFILE;


