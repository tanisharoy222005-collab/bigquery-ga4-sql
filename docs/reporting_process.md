# Reporting Process

## Overview

This document outlines the weekly reporting workflow used for GA4 website analytics and CRM reconciliation.

The process supports performance tracking, campaign monitoring, and stakeholder reporting.

---

## Data sources

Primary reporting sources:

### GA4 export tables

Source:

- `analytics.events_*`

Used for:

- sessions
- user behavior
- page engagement
- funnel tracking
- campaign attribution

### CRM lead records

Source:

- `crm.leads`

Used for:

- lead validation
- source reconciliation
- conversion quality checks

### Marketing campaign metadata

Source examples:

- UTM parameters
- paid media campaign naming
- landing page tags

Used for:

- campaign reporting
- source/medium attribution
- performance segmentation

---

## Weekly reporting workflow

### 1. Data validation

Review previous week’s GA4 export:

Checks include:

- event volume
- missing traffic source values
- duplicate sessions
- incomplete conversion events

Purpose:

Ensure clean reporting before analysis.

---

### 2. SQL reporting refresh

Run SQL files:

- `sql/session_quality.sql`
- `sql/content_engagement.sql`
- `sql/dropoff_patterns.sql`
- `sql/ga4_vs_crm_reconciliation.sql`

Output reviewed for:

- session performance
- content engagement
- funnel drop-off
- lead reconciliation

---

### 3. QA review

Validate results against:

- GA4 interface
- CRM dashboard
- previous reporting trends

Review for:

- anomalies
- sudden traffic spikes
- attribution mismatches
- conversion tracking issues

---

### 4. Dashboard update

Update weekly dashboard metrics:

Includes:

- sessions
- users
- conversion rate
- leads
- top campaigns
- landing pages
- bounce rate

Audience:

- Marketing
- Growth
- Business stakeholders

---

### 5. Insights and recommendations

Prepare summary:

Examples:

- strongest acquisition channels
- pages with highest engagement
- funnel drop-off opportunities
- CRM attribution gaps

Recommended actions documented for stakeholders.

---

## Reporting cadence

### Weekly

Focus:

- traffic trends
- lead volume
- campaign performance

### Monthly

Focus:

- channel performance
- content performance
- attribution accuracy
- funnel optimization trends

---

## QA checklist

Before finalizing reports:

- [ ] GA4 export loaded successfully
- [ ] session counts validated
- [ ] traffic sources reviewed
- [ ] conversion events confirmed
- [ ] CRM totals reconciled
- [ ] dashboards updated
- [ ] stakeholder summary prepared

---

## Business impact

This reporting workflow supports:

- campaign performance visibility
- reliable attribution reporting
- conversion funnel optimization
- content strategy decisions
- stakeholder reporting consistency
