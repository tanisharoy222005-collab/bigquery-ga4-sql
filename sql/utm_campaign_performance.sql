SELECT
  traffic_source.campaign AS campaign,
  traffic_source.source AS source,
  traffic_source.medium AS medium,
  COUNTIF(event_name = 'session_start') AS sessions,
  COUNTIF(event_name = 'generate_lead') AS conversions,
  ROUND(
    SAFE_DIVIDE(
      COUNTIF(event_name = 'generate_lead'),
      COUNTIF(event_name = 'session_start')
    ) * 100,
    2
  ) AS conversion_rate
FROM `analytics.events_*`
GROUP BY campaign, source, medium
ORDER BY conversions DESC;
