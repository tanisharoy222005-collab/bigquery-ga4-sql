# SQL Analysis Reference

This folder contains reporting queries used for GA4 website analytics and CRM attribution analysis.

## Files

### session_quality.sql

Purpose:

Review traffic quality by source and landing page.

Tracks:

- sessions
- engaged sessions
- bounce rate
- average engagement time

---

### content_engagement.sql

Purpose:

Evaluate page performance and user interaction.

Tracks:

- landing page sessions
- page views
- engagement events
- average time on page

---

### dropoff_patterns.sql

Purpose:

Identify conversion funnel drop-off.

Tracks:

- landing page visits
- form starts
- submissions
- completion rate

---

### ga4_vs_crm_reconciliation.sql

Purpose:

Compare GA4 conversions against CRM leads.

Tracks:

- conversion totals
- lead source
- attribution consistency
- missing records

---

### campaign_attribution_summary.sql

Purpose:

Review marketing campaign performance.

Tracks:

- source / medium
- UTM campaign
- sessions
- conversions

## Query review notes

Before running queries:

- validate reporting date range
- confirm GA4 export tables loaded
- review null traffic source values
- confirm CRM data refresh

## Reporting cadence

Queries are reviewed:

- weekly
- monthly
