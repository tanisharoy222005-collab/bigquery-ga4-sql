-- GA4 VS CRM RECONCILIATION
-- Purpose:
-- Match tracked GA4 leads with CRM records.

WITH ga4 AS (

SELECT
  user_pseudo_id,

  event_date,

  page_location,

  COUNTIF(event_name='generate_lead') AS ga4_leads

FROM `project.analytics.events_*`

GROUP BY
  user_pseudo_id,
  event_date,
  page_location
),

crm AS (

SELECT
  lead_id,

  source_page,

  created_date

FROM `project.crm.leads`
)

SELECT
  g.event_date,

  COUNT(DISTINCT g.user_pseudo_id) AS ga4_users,

  SUM(g.ga4_leads) AS ga4_leads,

  COUNT(c.lead_id) AS crm_leads,

  SUM(g.ga4_leads) - COUNT(c.lead_id) AS variance

FROM ga4 g

LEFT JOIN crm c
ON g.page_location = c.source_page
AND g.event_date = c.created_date

GROUP BY g.event_date

ORDER BY g.event_date DESC;
