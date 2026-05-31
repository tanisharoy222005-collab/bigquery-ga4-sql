WITH attribution AS (
  SELECT
    user_pseudo_id,
    MIN(traffic_source.source) AS first_touch_source,
    MAX(traffic_source.source) AS last_touch_source,
    MAX(IF(event_name = 'generate_lead', 1, 0)) AS converted
  FROM `analytics.events_*`
  GROUP BY user_pseudo_id
)

SELECT
  first_touch_source,
  last_touch_source,
  COUNT(*) AS users,
  COUNTIF(converted = 1) AS conversions
FROM attribution
GROUP BY first_touch_source, last_touch_source
ORDER BY conversions DESC;
