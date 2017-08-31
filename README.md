# db2_utl_encode

### DB2 implementation of Oracle package functions: UTL_ENCODE.BASE64_ENCODE and UTL_ENCODE.BASE64_ENCODE

https://docs.oracle.com/cd/B28359_01/appdev.111/b28419/u_encode.htm#i996731

# Files description
* BASE64/UTL_ENCODE_java.jar Java jar containing functions implementation.
* BASE64/utl_encode.sql DB2 signature of functions.
* BASE64/test.sql Test script http://www.dba-oracle.com/t_utl_encode_base64_decode_encode.htm
* UTL_ENCODE_java Eclipse Java project to create UTL_ENCODE_java.jar

# Installation
* cd BASE64
* Copy UTL_ENCODE_java.jar to DB2 server {instance_home}/sqllib/function directory.
* db2 "CALL SQLJ.REFRESH_CLASSES()"
* db2 -td@ -vf utl_encode.sql

# Important
In order to properly resolve access to UTL_ENCODE package, user db2inst1 (or the user who owns the package) should stand before SYSIBMADM path. As a default, db2inst1 is added to the end of CURRENT PATH and DB2 will signal that SYSIBMADM.UTL_ENCODE package does not exist.

# Test
* db2 "set serveroutput on"
* optionally: modify the first line in test.sql in the light of remark above
* db2 -td@ -v test.sql
Expected result: http://www.dba-oracle.com/t_utl_encode_base64_decode_encode.htm


