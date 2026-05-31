# BigQuery + GA4 SQL Analysis

A collection of production-style BigQuery SQL used for GA4 web analytics reporting, audience behavior analysis, and CRM reconciliation.

These queries reflect workflows commonly used in digital analytics for:
- GA4 event analysis
- Session quality measurement
- Content performance tracking
- Funnel drop-off analysis
- CRM + GA4 data reconciliation
- Reporting for marketing and business teams

## Tech Stack

- Google Analytics 4 (GA4)
- BigQuery SQL
- CRM export tables
- UTM campaign attribution
- Session-level event modeling

---

## Files

### session_quality.sql

Measures:
- Engaged sessions
- Avg engagement time
- Bounce/engagement rate
- Returning vs new users
- Traffic source comparison

Business use:
Helps identify high-value traffic and landing page quality.

---

### content_engagement.sql

Measures:
- Page views
- Scroll depth
- Avg time on page
- Event completion
- Top content by engagement

Business use:
Helps optimize content performance and identify pages driving conversions.

---

### dropoff_patterns.sql

Measures:
- Funnel step progression
- Drop-off %
- Exit points
- Device-based abandonment

Business use:
Used for CRO and UX optimization.

---

### ga4_vs_crm_reconciliation.sql

Measures:
- GA4 conversions vs CRM lead count
- Source/medium matching
- Lead duplication check
- Attribution mismatch review

Business use:
Helps validate marketing attribution and reporting accuracy.

---

## Notes

Queries are written as standalone examples and can be adapted to production datasets by updating:

project.dataset.table

Example:

analytics_123456.events_*
