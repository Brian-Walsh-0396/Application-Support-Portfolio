SELECT
    application_id,
    application_name,
    application_code,
    application_owner,
    support_team,
    version,
    status
FROM applications
ORDER BY application_name;