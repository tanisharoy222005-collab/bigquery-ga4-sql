SELECT
  page_location,
  COUNTIF(event_name = 'page_view') AS page_views,
  COUNT(DISTINCT user_pseudo_id) AS users,
  COUNTIF(event_name = 'scroll') AS scroll_events,
  COUNTIF(event_name = 'click') AS clicks
FROM `analytics.events_*`
WHERE page_location IS NOT NULL
GROUP BY page_location
ORDER BY page_views DESC;
