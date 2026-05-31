
SELECT
  traffic_source.source AS source,
  traffic_source.medium AS medium,
  COUNT(DISTINCT user_pseudo_id) AS users,
  COUNTIF(event_name = 'session_start') AS sessions,
  COUNTIF(event_name = 'user_engagement') AS engaged_sessions,
  ROUND(
    SAFE_DIVIDE(
      COUNTIF(event_name = 'user_engagement'),
      COUNTIF(event_name = 'session_start')
    ) * 100,
    2
  ) AS engagement_rate
FROM `analytics.events_*`
GROUP BY source, medium
ORDER BY sessions DESC;
