-- FUNNEL DROP-OFF ANALYSIS
-- Purpose:
-- Detect where users abandon the funnel.

WITH funnel AS (

SELECT
  user_pseudo_id,

  MAX(CASE WHEN event_name='landing_page' THEN 1 ELSE 0 END) AS landing,

  MAX(CASE WHEN event_name='cta_click' THEN 1 ELSE 0 END) AS cta_click,

  MAX(CASE WHEN event_name='form_start' THEN 1 ELSE 0 END) AS form_start,

  MAX(CASE WHEN event_name='form_submit' THEN 1 ELSE 0 END) AS submit

FROM `project.analytics.events_*`

GROUP BY user_pseudo_id
)

SELECT
  COUNT(*) AS users,

  SUM(landing) AS landing_users,

  SUM(cta_click) AS cta_users,

  SUM(form_start) AS form_started,

  SUM(submit) AS form_submitted

FROM funnel;
