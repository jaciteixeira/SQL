SELECT sid, serial#, username, machine, program
FROM v$session
WHERE blocking_session IS NOT NULL;