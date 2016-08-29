@echo off  
:begin
@echo ----------1, create all game database------------ 
mysql -uroot -proot<createdb.sql
mysql -uroot -proot<grantuser.sql 

mysql -uroot -proot<fball_accountdb.sql
mysql -uroot -proot<fball_chargedb.sql
mysql -uroot -proot<fball_robedb.sql

mysql -uroot -proot fball_accountdb < fball_accountdb.sql
mysql -uroot -proot fball_chargedb < fball_chargedb.sql
mysql -uroot -proot fball_robedb < fball_robedb.sql

mysql -uroot -proot fball_gamedb_1 < fball_gamedb.sql
mysql -uroot -proot fball_gamedb_2 < fball_gamedb.sql
mysql -uroot -proot fball_gamedb_3 < fball_gamedb.sql 

mysql -uroot -proot fball_logdb_1 < fball_logdb.sql
mysql -uroot -proot fball_logdb_2 < fball_logdb.sql
mysql -uroot -proot fball_logdb_3 < fball_logdb.sql 

