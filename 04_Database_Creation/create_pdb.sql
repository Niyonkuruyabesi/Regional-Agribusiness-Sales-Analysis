-- creating pdb

CREATE PLUGGABLE DATABASE tue_27715_yabesi_agricultureSales_db
ADMIN USER yabesi_admin IDENTIFIED BY yabesi
FILE_NAME_CONVERT = (
  'C:\app\niyon\product\21c\oradata\XE\pdbseed',
  'C:\app\niyon\product\21c\oradata\XE\agriculturesales_db'
);

