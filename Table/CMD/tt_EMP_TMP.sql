SET LONG 2000000
        SET PAGESIZE 0

        EXECUTE DBMS_METADATA.SET_TRANSFORM_PARAM(DBMS_METADATA.SESSION_TRANSFORM,'STORAGE',false);

        spool E://Develop/Python/Table/SQL/EMP_TMP.sql
        select dbms_metadata.get_ddl('TABLE','EMP_TMP','SCOTT') from dual;
        spool off;

        EXECUTE DBMS_METADATA.SET_TRANSFORM_PARAM(DBMS_METADATA.SESSION_TRANSFORM,'DEFAULT');

        EXIT 