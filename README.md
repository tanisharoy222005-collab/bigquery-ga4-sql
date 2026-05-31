# bigquery-ga4-sql

Production-style SQL analysis on Google Analytics 4 BigQuery export data.

This repository contains reusable queries used for:

- Session quality analysis
- Content engagement tracking
- Funnel drop-off investigation
- GA4 vs CRM reconciliation
- Dashboard reporting

## Stack

- Google Analytics 4 (GA4)
- BigQuery SQL
- Google Tag Manager (GTM)
- Looker Studio
- Python
- CRM exports

## Repository structure

bigquery-ga4-sql/

├── session_quality.sql
├── content_engagement.sql
├── dropoff_patterns.sql
├── ga4_vs_crm_reconciliation.sql
└── README.md

## What each query does

### session_quality.sql

Measures:

- engaged sessions
- bounce trends
- avg pageviews
- scroll behaviour

### content_engagement.sql

Tracks:

- page views
- scroll depth
- CTA clicks
- landing page performance

### dropoff_patterns.sql

Identifies:

- funnel exits
- abandoned journeys
- weak CTA steps

### ga4_vs_crm_reconciliation.sql

Compares:

- GA4 tracked leads
- CRM backend leads
- conversion mismatches
- reporting variance

## Why this repo

Built to support:

- analytics audits
- reporting dashboards
- conversion analysis
- GA4 implementation validation
- stakeholder recommendations
