SELECT
    a.application_name,
    a.application_code,
    ec.classification_name,
    ec.criticality_level
FROM applications AS a
INNER JOIN enterprise_classifications AS ec
    ON a.classification_id = ec.classification_id
ORDER BY ec.criticality_level DESC,
         a.application_name;
