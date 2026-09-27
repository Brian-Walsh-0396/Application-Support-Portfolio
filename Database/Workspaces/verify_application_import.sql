SELECT
    application_name AS 'Application',
    application_code AS 'Code',
    version AS 'Version',
    criticality AS 'Criticality',
    environment AS 'Environment',
    status AS 'Status'
FROM applications
WHERE application_code IN (
    'EXP-SYS',
    'ENT-OPS',
    'POS-SYS'
)
ORDER BY application_name;