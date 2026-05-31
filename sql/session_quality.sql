-- SESSION QUALITY ANALYSIS
-- Purpose:
-- Evaluate engagement quality across traffic sources.

WITH sessions AS (

SELECT
  user_pseudo_id,

  traffic_source.source AS source,

  event_date,

  COUNTIF(event_name='page_view') AS pageviews,

  COUNTIF(event_name='scroll') AS scroll_events,

  MAX(
    CASE
      WHEN event_name='user_engagement'
      THEN 1
      ELSE 0
    END
  ) AS engaged

FROM `project.analytics.events_*`

GROUP BY
  user_pseudo_id,
  source,
  event_date
)

SELECT
  source,

  COUNT(*) AS sessions,

  SUM(engaged) AS engaged_sessions,

  ROUND(
    SAFE_DIVIDE(
      SUM(engaged),
      COUNT(*)
    )*100,
    2
  ) AS engagement_rate,

  ROUND(AVG(pageviews),2) AS avg_pageviews,

  ROUND(AVG(scroll_events),2) AS avg_scroll_events

FROM sessions

GROUP BY source

ORDER BY sessions DESC;
