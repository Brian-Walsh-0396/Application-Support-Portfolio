# Enterprise Application Support Platform

A simulated enterprise application support environment designed to demonstrate practical experience with **SQL, MySQL, HTML, CSS, JavaScript, incident management, application support, access management, workflow analysis, root-cause investigation, technical documentation, and operational troubleshooting**.

The project models the type of technical environment used to support large enterprise applications and provides a practical demonstration of how application support teams can investigate incidents, analyze operational data, manage access requests, monitor application health, and document standardized troubleshooting procedures.

---

## Project Overview

The Enterprise Application Support Platform combines a relational MySQL database with a web-based support portal.

The platform simulates an enterprise environment containing:

* Business applications
* Production incidents
* Application health information
* User access requests
* Application changes
* Root-cause information
* Knowledge articles
* Troubleshooting runbooks

The project is designed around a simple support lifecycle:

```text
Incident
   ↓
Investigation
   ↓
Business Impact Assessment
   ↓
Mitigation / Workaround
   ↓
Resolution
   ↓
Root Cause
   ↓
Corrective Action
   ↓
Knowledge Base / Runbook Update
```

---

## Objectives

This project demonstrates the ability to:

* Design and query a relational SQL database
* Investigate application incidents using structured data
* Analyze incident trends and recurring issues
* Calculate Mean Time to Resolution (MTTR)
* Analyze application support performance
* Manage simulated user access requests
* Track application changes
* Investigate potential relationships between changes and incidents
* Build HTML-based application interfaces
* Create interactive web components with JavaScript
* Develop technical documentation and troubleshooting procedures
* Create reusable knowledge-management resources
* Organize technical work using Git and GitHub

---

## Technologies

| Technology | Purpose                                  |
| ---------- | ---------------------------------------- |
| MySQL      | Relational database                      |
| SQL        | Data analysis and reporting              |
| HTML5      | Application interface                    |
| CSS3       | User interface styling                   |
| JavaScript | Portal interactivity                     |
| Git        | Version control                          |
| GitHub     | Source control and project documentation |
| VS Code    | Development environment                  |

---

# Project Architecture

```text
┌──────────────────────────────────────────────┐
│          Enterprise Support Portal           │
│                                              │
│  Dashboard │ Incidents │ Apps │ Access      │
│  Changes   │ Knowledge │ Runbooks            │
└──────────────────────┬───────────────────────┘
                       │
                       ▼
              HTML / CSS / JavaScript
                       │
                       ▼
              Enterprise Support Data
                       │
                       ▼
                     MySQL
                       │
          ┌────────────┼────────────┐
          ▼            ▼            ▼
      Incidents     Access       Changes
          │         Requests         │
          └────────────┼─────────────┘
                       ▼
                 SQL Analysis
                       │
        ┌──────────────┼──────────────┐
        ▼              ▼              ▼
       MTTR        Root Cause       Trends
```

---

# Database

The MySQL database represents the operational data behind the support environment.

## Core Tables

### `applications`

Stores information about supported enterprise applications.

Includes:

* Application name
* Application owner
* Criticality
* Environment
* Current status

## Application Import Verification

The screenshot below shows a sample of the enterprise applications successfully loaded into the MySQL `applications` table. It provides a visual verification of the imported application records and their associated environment, status, and configuration data.

![Application Import Verification](Screenshots/Verify%20Application%20Import.png)

*Sample application records displayed after the application import and database verification process.*

### `incidents`

Stores application incidents and their resolution information.

Includes:

* Incident ID
* Application
* Severity
* Priority
* Status
* Category
* Assigned team
* Business impact
* Root cause
* Resolution
* Opened and resolved timestamps

### `users`

Stores fictional enterprise users.

Includes:

* Employee name
* Department
* Role
* Location
* Active status

### `access_requests`

Tracks simulated application access requests.

Includes:

* User
* Application
* Requested role
* Request status
* Request date
* Approval date
* Completion date

### `changes`

Tracks application changes and implementations.

Includes:

* Application
* Change type
* Request date
* Implementation date
* Status
* Change description

---

# SQL Analysis

The SQL component focuses on questions an application support team could use to understand operational performance and recurring problems.

## Incident Analysis

Analyze:

* Incident volume by application
* Incident volume by severity
* Incident volume by category
* Open versus resolved incidents
* Critical incidents
* Incident trends over time

## Mean Time to Resolution

Calculate average resolution time by:

* Severity
* Application
* Support team
* Incident category

Example:

```sql
SELECT
    severity,
    COUNT(*) AS resolved_incidents,
    ROUND(
        AVG(
            TIMESTAMPDIFF(
                MINUTE,
                opened_at,
                resolved_at
            )
        ),
        2
    ) AS avg_resolution_minutes
FROM incidents
WHERE resolved_at IS NOT NULL
GROUP BY severity
ORDER BY avg_resolution_minutes DESC;
```

## Root-Cause Analysis

Identify recurring root causes and determine which issues occur repeatedly.

```text
Application
     ↓
Incident Category
     ↓
Root Cause
     ↓
Incident Frequency
```

## Access Management Analysis

Analyze:

* Access request volume
* Requests by application
* Requests by role
* Pending requests
* Average provisioning time
* Completed versus rejected requests

## Change Impact Analysis

Analyze incidents occurring around application changes to identify potential relationships between deployments/configuration changes and subsequent incidents.

```text
Application Change
        ↓
Implementation
        ↓
Incident Activity
        ↓
Severity / Impact
        ↓
Root Cause Investigation
```

---

# Application Support Portal

The web portal provides a simulated interface for an enterprise application support team.

## Dashboard

Provides a high-level operational view including:

* Application health
* Open incidents
* Critical incidents
* Pending access requests
* Support metrics
* Recent incidents

## Incident Management

The incident interface provides:

* Incident search
* Severity filtering
* Status filtering
* Incident details
* Business impact
* Technical information
* Resolution information
* Root-cause information
* Incident timelines

## Application Health

Displays information about supported applications including:

* Application name
* Criticality
* Environment
* Current status
* Open incidents

## Access Management

Provides a simulated interface for:

* Reviewing access requests
* Reviewing requested roles
* Reviewing request status
* Submitting access requests

## Change Management

Provides visibility into:

* Application changes
* Change type
* Implementation dates
* Change status
* Change descriptions

## Knowledge Base

Contains reusable troubleshooting guidance covering:

* Symptoms
* Causes
* Initial troubleshooting
* Workarounds
* Resolutions
* Escalation criteria
* Related incidents

## Runbooks

Provides standardized operational procedures for recurring technical issues.

Example workflow:

```text
1. Identify symptoms
2. Determine business impact
3. Establish severity
4. Review application health
5. Review recent changes
6. Investigate logs/data
7. Identify workaround
8. Restore service
9. Determine root cause
10. Document permanent resolution
11. Update knowledge base
12. Track corrective actions
```

---

# Repository Structure

```text
Enterprise-Application-Support-Platform/
│
├── README.md
│
├── database/
│   ├── 01_create_database.sql
│   ├── 02_create_tables.sql
│   ├── 03_insert_data.sql
│   └── 04_analysis_queries.sql
│
├── data/
│   ├── applications.csv
│   ├── incidents.csv
│   ├── users.csv
│   ├── access_requests.csv
│   └── changes.csv
│
├── portal/
│   ├── index.html
│   ├── incidents.html
│   ├── incident-detail.html
│   ├── applications.html
│   ├── access-management.html
│   ├── knowledge-base.html
│   ├── runbooks.html
│   ├── change-management.html
│   │
│   ├── css/
│   │   └── styles.css
│   │
│   └── js/
│       └── app.js
│
├── documentation/
│   ├── incident-management.md
│   ├── troubleshooting.md
│   ├── access-management.md
│   └── architecture.md
│
└── screenshots/
```

---

# Support Process Model

The project follows a standardized application support process.

```text
              INCIDENT DETECTED
                     │
                     ▼
              INITIAL TRIAGE
                     │
                     ▼
          BUSINESS IMPACT ASSESSMENT
                     │
                     ▼
             SEVERITY / PRIORITY
                     │
                     ▼
              INVESTIGATION
                     │
            ┌────────┴────────┐
            ▼                 ▼
        Workaround         Root Cause
            │                 │
            └────────┬────────┘
                     ▼
              SERVICE RESTORED
                     │
                     ▼
             PERMANENT FIX
                     │
                     ▼
             POST-INCIDENT
                 REVIEW
                     │
                     ▼
       KNOWLEDGE BASE / RUNBOOK
                  UPDATE
```

---

# Documentation

The project includes documentation covering:

* Incident management
* Troubleshooting procedures
* Access management
* System architecture
* Knowledge management
* Operational runbooks

The goal is to make troubleshooting procedures **repeatable, documented, and reusable** rather than dependent on individual team members.

---

# Future Enhancements

Potential future development includes:

* REST API integration
* Live MySQL connectivity
* User authentication
* Role-based access control
* Automated incident alerts
* Application health monitoring
* Automated access-request workflows
* Power BI reporting
* Log ingestion and analysis
* Automated root-cause trend detection
* Post-incident review tracking
* Automated knowledge-base recommendations

---

# Disclaimer

This is a **fictional portfolio project** created for demonstration and educational purposes.

All applications, incidents, users, companies, operational metrics, and support scenarios are fictional and do not represent actual production systems or confidential enterprise information.

---

## Author

[**Brian Walsh**](mailto:brpwalsh@gmail.com)

Technical Support | Application Support | Technical Systems | SQL | Enterprise Applications