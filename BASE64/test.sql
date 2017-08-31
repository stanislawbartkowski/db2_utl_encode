SET CURRENT PATH = DB2INST1,SYSIBMADM@

DECLARE
  l_vc_var1 VARCHAR2(32672):='UTL_ENCODE';
  l_rw_var2 VARBINARY(16000);
BEGIN
  dbms_output.put_line('Original string: '||l_vc_var1);
  l_rw_var2:= varbinary(l_vc_var1);
  dbms_output.put_line('Original RAW string: '||hex(l_rw_var2));
  l_rw_var2:= utl_encode.base64_encode(l_rw_var2);
  dbms_output.put_line('Encoded RAW string:: '||hex(l_rw_var2));
  
  l_rw_var2:= utl_encode.base64_decode(l_rw_var2);
  dbms_output.put_line('Decoded RAW string: '||hex(l_rw_var2));
  l_vc_var1:= cast (l_rw_var2 as VARCHAR(100) FOR BIT DATA);
  dbms_output.put_line('Decoded Original string: '||l_vc_var1);
  
END;
@