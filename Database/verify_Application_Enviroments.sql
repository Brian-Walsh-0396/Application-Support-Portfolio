DESCRIBE environments;

SELECT
    a.application_name,
    a.application_code,
    e.environment_name,
    e.description
FROM applications AS a
INNER JOIN environments AS e
    ON a.environment_id = e.environment_id
ORDER BY e.environment_name,
         a.application_name;
