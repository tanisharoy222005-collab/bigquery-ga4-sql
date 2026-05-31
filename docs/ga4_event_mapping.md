# GA4 Event Mapping

## Standard Events Tracked

### User Activity

- page_view
- session_start
- first_visit
- user_engagement
- scroll

---

### Content Interaction

- click_cta
- download
- video_start
- video_progress
- outbound_click

---

### Lead Generation

- form_start
- form_submit
- generate_lead

---

### Ecommerce / Conversion

- add_to_cart
- begin_checkout
- purchase

---

## Event Parameters Captured

### Page Context

- page_location
- page_title
- page_referrer

### Traffic Attribution

- session_source
- session_medium
- campaign
- source_platform

### User Context

- device_category
- operating_system
- browser
- country
- city

### Conversion Context

- form_name
- lead_type
- transaction_id
- revenue

---

## Implementation Notes

Events are validated through:

- GA4 DebugView
- BigQuery export tables
- Tag Manager QA
- CRM reconciliation

Purpose:

Maintain consistent tracking and ensure reporting accuracy across acquisition and conversion reporting.
