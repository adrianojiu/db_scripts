-- Returns permissions on a specific database.


USE SUSDB;
SELECT 
[LOGIN TYPE]=
    CASE SP.TYPE
        WHEN 'U' THEN 'WINDOWS'
        WHEN 'S' THEN 'SQLSERVER'
        WHEN 'G' THEN 'GROUP'
    END,
    CONVERT(CHAR(45), SP.NAME) AS SRVLOGIN, 
    CONVERT(CHAR(45), SP2.NAME) AS SRVROLE,
    CONVERT(CHAR(25), DBP.NAME) AS DBUSER,
    CONVERT(CHAR(25), DBP2.NAME) AS DBROLE
FROM SYS.SERVER_PRINCIPALS AS SP 
    JOIN SYS.DATABASE_PRINCIPALS AS DBP ON SP.SID = DBP.SID 
    JOIN SYS.DATABASE_ROLE_MEMBERS AS DBRM ON DBP.PRINCIPAL_ID = DBRM.MEMBER_PRINCIPAL_ID 
    JOIN SYS.DATABASE_PRINCIPALS AS DBP2 ON DBRM.ROLE_PRINCIPAL_ID = DBP2.PRINCIPAL_ID 
    LEFT JOIN SYS.SERVER_ROLE_MEMBERS AS SRM ON SP.PRINCIPAL_ID = SRM.MEMBER_PRINCIPAL_ID 
    LEFT JOIN SYS.SERVER_PRINCIPALS AS SP2 ON SRM.ROLE_PRINCIPAL_ID = SP2.PRINCIPAL_ID
