-- Returns all users with the sysadmin role

SELECT *
FROM sys.server_role_members rm
    ,sys.server_principals sp
WHERE rm.role_principal_id = SUSER_ID('Sysadmin')
    AND rm.member_principal_id = sp.principal_id