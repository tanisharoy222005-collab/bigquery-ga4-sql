````md
# BigQuery + GA4 SQL Analysis

A production-style collection of BigQuery SQL queries used for GA4 reporting, website performance analysis, user engagement tracking, funnel analysis, and CRM reconciliation.

This repository reflects common digital analytics workflows across acquisition, content performance, and conversion reporting using GA4 + BigQuery.

---

## Tech Stack

- Google Analytics 4 (GA4)
- BigQuery SQL
- CRM export tables
- UTM campaign attribution
- Session-level event modeling
- Funnel reporting
- Conversion tracking

---

## Repository Structure

bigquery-ga4-sql/
│
├── docs/
│   ├── dashboard_metrics.md
│   └── ga4_event_mapping.md
│
├── session_quality.sql
├── content_engagement.sql
├── dropoff_patterns.sql
├── ga4_vs_crm_reconciliation.sql
│
└── README.md

---

## SQL Query Documentation

### session_quality.sql

```sql
/*
Project: GA4 Website Analytics
Author: Tanisha Roy

Purpose:
Analyze session quality across traffic channels and landing pages.

Key metrics:
- sessions
- engaged_sessions
- avg_engagement_time
- bounce_rate
- returning_users

Use case:
Weekly reporting and traffic quality monitoring.

Business value:
Helps identify high-performing acquisition sources and improve landing page engagement.
*/
````

What this surfaces:

* Session quality by traffic source
* Engaged sessions vs total sessions
* Bounce trends
* Avg engagement time
* Returning vs new visitor behavior

Used for:

* Weekly performance reporting
* Traffic quality monitoring
* Landing page optimization
* Marketing attribution review

---

### content_engagement.sql

```sql
/*
Project: GA4 Content Analytics
Author: Tanisha Roy

Purpose:
Measure content engagement performance across website pages.

Key metrics:
- page_views
- avg_time_on_page
- scroll_depth
- event_count
- top_pages

Use case:
Content performance reporting and page optimization.

Business value:
Used to identify top-performing content and improve user engagement.
*/
```

What this surfaces:

* Page-level engagement
* Top landing pages
* Avg time on page
* Scroll depth
* Content interaction

Used for:

* Content reporting
* SEO landing page analysis
* Engagement optimization
* UX improvement

---

### dropoff_patterns.sql

```sql
/*
Project: GA4 Funnel Analysis
Author: Tanisha Roy

Purpose:
Analyze funnel progression and identify drop-off points.

Key metrics:
- funnel_step_entries
- dropoff_rate
- exit_rate
- abandonment_by_device

Use case:
Conversion funnel monitoring.

Business value:
Supports CRO initiatives and helps reduce abandonment.
*/
```

What this surfaces:

* Funnel completion rate
* Drop-off % by step
* Exit points
* Device-based abandonment

Used for:

* Funnel analysis
* CRO reporting
* UX optimization
* Conversion tracking

---

### ga4_vs_crm_reconciliation.sql

```sql
/*
Project: GA4 + CRM Reconciliation
Author: Tanisha Roy

Purpose:
Compare GA4 conversion tracking with CRM lead records.

Key metrics:
- ga4_conversions
- crm_leads
- source_medium_match
- duplicate_leads
- attribution_variance

Use case:
Lead validation and reporting accuracy checks.

Business value:
Ensures reliable attribution and improves campaign reporting confidence.
*/
```

What this surfaces:

* GA4 conversions vs CRM leads
* Lead source matching
* Attribution mismatch
* Duplicate lead checks
* Conversion validation

Used for:

* Marketing reporting
* CRM reconciliation
* Attribution validation
* Lead quality review

---

## Supporting Documentation

### docs/dashboard_metrics.md

Includes weekly KPI tracking for:

* Sessions
* Users
* Engaged sessions
* Conversion rate
* Bounce rate
* Avg engagement time
* Top landing pages
* Lead submissions
* CRM-attributed conversions

Purpose:

Weekly stakeholder reporting and performance review.

---

### docs/ga4_event_mapping.md

Includes tracked GA4 events:

* page_view
* session_start
* scroll
* click_cta
* form_submit
* generate_lead
* purchase

Parameters tracked:

* page_location
* page_title
* session_source
* session_medium
* campaign
* device_category

Purpose:

Maintain clean implementation and reporting consistency.

---

## Notes

Queries are written as standalone examples and can be adapted to production datasets by updating table references.

Example:

analytics_project.events_*

These examples reflect common GA4 + BigQuery reporting workflows across acquisition, engagement, funnel analysis, and CRM reconciliation.

```

