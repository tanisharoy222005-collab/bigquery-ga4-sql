# GA4 Event Mapping

## Overview

This document defines the GA4 events used in website performance reporting and CRM reconciliation.

Event mapping supports:

- reporting consistency
- funnel analysis
- campaign tracking
- conversion validation

---

## Page tracking events

| Event | Description | Reporting use |
|---|---|---|
| page_view | Landing page visit | Traffic and content reporting |
| session_start | Session initiated | Session volume |
| first_visit | New user identified | New user reporting |

---

## Engagement events

| Event | Description | Reporting use |
|---|---|---|
| scroll | User scroll activity | Engagement measurement |
| click | CTA or navigation click | Interaction reporting |
| user_engagement | Active session engagement | Session quality |
| view_search_results | Internal search activity | User behavior analysis |

---

## Conversion events

| Event | Description | Reporting use |
|---|---|---|
| form_start | Lead form initiated | Funnel entry |
| generate_lead | Lead submitted | Conversion reporting |
| submit_form | Form completion | Lead tracking |
| contact_click | Contact CTA interaction | Assisted conversion |

---

## Campaign attribution fields

Tracked dimensions:

| Field | Example |
|---|---|
| source | google |
| medium | cpc |
| campaign | spring_launch |
| content | hero_banner |
| term | ga4_reporting |

Used for:

- source/medium reporting
- UTM analysis
- campaign performance

---

## Landing page tracking

Tracked fields:

- page_location
- page_title
- landing page URL

Used for:

- landing page performance
- bounce rate analysis
- funnel entry review

---

## CRM reconciliation mapping

GA4 events matched to CRM records using:

- campaign
- source / medium
- landing page
- lead submission date
- lead ID when available

Used to validate:

- lead count accuracy
- attribution consistency
- missing conversion records

---

## Funnel event sequence

Standard reporting flow:

1. page_view
2. scroll / click
3. form_start
4. generate_lead
5. CRM lead creation

Used to identify:

- funnel drop-off
- conversion friction
- attribution gaps

---

## QA checks

Before reporting:

- [ ] events firing correctly
- [ ] source/medium populated
- [ ] UTM campaigns captured
- [ ] lead submissions tracked
- [ ] CRM records matched
- [ ] landing pages validated

---

## Reporting teams

Used by:

- Marketing
- Growth
- Analytics
- Business stakeholders
