# GA4 Website Performance & CRM Attribution Analysis

Analytics project focused on GA4 reporting, session quality analysis, funnel performance, and CRM attribution reconciliation.

This repository documents SQL analysis workflows, reporting documentation, and executive dashboard inputs used to monitor website performance and evaluate marketing channel effectiveness.

---

## Project overview

The goal of this project is to:

- monitor website traffic and engagement using GA4 export data
- evaluate session quality and user behavior
- identify funnel drop-off opportunities
- reconcile GA4 conversions with CRM lead records
- review attribution accuracy across campaigns
- support weekly and monthly stakeholder reporting

Primary use cases:

- website performance reporting
- campaign performance analysis
- conversion tracking QA
- source/medium attribution review
- business reporting for growth and marketing teams

---

## Tech stack

Analytics tools used:

- **Google Analytics 4 (GA4)**
- **BigQuery SQL**
- **Google Sheets / reporting exports**
- **CRM lead source reconciliation**
- **UTM campaign tracking**

---

## Repository structure

```bash
ga4-website-performance-analysis/
│
├── sql/
│   ├── session_quality.sql
│   ├── content_engagement.sql
│   ├── dropoff_patterns.sql
│   ├── ga4_vs_crm_reconciliation.sql
│   └── campaign_attribution_summary.sql
│
├── dashboards/
│   └── weekly_exec_dashboard.md
│
├── docs/
│   └── reporting_process.md
│
├── CHANGELOG.md
├── .gitignore
└── README.md
```

---

## SQL analysis included

### 1. Session quality analysis

Tracks:

- sessions
- engaged sessions
- average engagement time
- bounce rate
- traffic quality by source/medium

Used to identify:

- high-value traffic channels
- weak acquisition sources
- engagement trends

---

### 2. Content engagement reporting

Tracks:

- landing page sessions
- average time on page
- page engagement events
- top-performing content

Used to identify:

- strongest landing pages
- underperforming content
- engagement opportunities

---

### 3. Funnel drop-off analysis

Tracks user movement through:

- landing page visit
- content interaction
- form start
- lead submission

Used to identify:

- drop-off points
- conversion friction
- optimization opportunities

---

### 4. GA4 vs CRM reconciliation

Compares:

- GA4 conversions
- CRM lead records
- campaign attribution
- source consistency

Used to validate:

- reporting accuracy
- lead tracking quality
- attribution gaps

---

### 5. Campaign attribution summary

Reviews:

- UTM campaigns
- source/medium
- conversions by campaign
- traffic quality

Used for:

- paid campaign analysis
- acquisition reporting
- channel performance review

---

## Reporting workflow

Standard reporting process:

1. Validate GA4 export tables
2. Refresh SQL analysis
3. QA against CRM and GA4 interface
4. Update executive dashboard
5. Prepare weekly insights
6. Share with stakeholders

Detailed workflow available in:

```bash
docs/reporting_process.md
```

---

## Dashboard reporting

Executive dashboard includes:

- sessions
- users
- conversion rate
- leads generated
- top campaigns
- landing page performance
- bounce rate

Reporting cadence:

- weekly
- monthly

Dashboard file:

```bash
dashboards/weekly_exec_dashboard.md
```

---

## Key outcomes

This analysis supports:

- website performance visibility
- campaign attribution accuracy
- lead tracking validation
- conversion funnel optimization
- stakeholder reporting consistency
- marketing decision-making

---

## Version history

See:

```bash
CHANGELOG.md
```

---

## Author

Analytics project focused on GA4 reporting, attribution analysis, and business performance insights.
