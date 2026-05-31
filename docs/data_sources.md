# Data Sources

## Overview

This project combines GA4 export data and CRM lead records for reporting and attribution analysis.

Primary use cases:

- website performance reporting
- conversion tracking
- campaign attribution
- CRM reconciliation

---

## Google Analytics 4 export

Dataset:

analytics.events_*

Contains:

- page views
- sessions
- user engagement
- conversion events
- source / medium
- campaign attribution

Key fields:

- event_name
- event_timestamp
- user_pseudo_id
- page_location
- traffic_source.source
- traffic_source.medium
- traffic_source.campaign

Refresh cadence:

Daily

---

## CRM leads

Dataset:

crm.leads

Contains:

- lead date
- lead source
- campaign
- landing page
- submission status

Key fields:

- lead_id
- lead_date
- source
- campaign
- landing_page

Refresh cadence:

Daily

---

## Campaign metadata

Includes:

- UTM source
- UTM medium
- UTM campaign
- content tags

Used for:

- paid campaign analysis
- attribution reporting

---

## Reporting ownership

Used by:

- Marketing
- Growth
- Analytics
- Business stakeholders
