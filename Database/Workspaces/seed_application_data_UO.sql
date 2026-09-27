INSERT INTO applications (
    application_name,
    application_owner,
    support_team,
    version,
    description,
    classification_id,
    environment_id,
    application_code,
    owner_team,
    criticality,
    environment,
    status
)
VALUES
    (
        'Express System',
        'Application Support',
        'Application Support',
        '25.05',
        'Express operations system',
        1,
        1,
        'EXP-SYS',
        'Application Support',
        'Tier 2',
        'Production',
        'Operational'
    ),
    (
        'Entrance Ops System',
        'Application Support',
        'Application Support',
        '26.09',
        'Entrance operations system',
        1,
        1,
        'ENT-OPS',
        'Application Support',
        'Tier 1',
        'Production',
        'Operational'
    ),
    (
        'POS Systems',
        'Application Support',
        'Application Support',
        '26.09',
        'Point of sale system',
        1,
        1,
        'POS-SYS',
        'Application Support',
        'Tier 1',
        'Production',
        'Operational'
    );