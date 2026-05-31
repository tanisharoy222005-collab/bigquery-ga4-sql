WITH attribution_data AS (
SELECT
user_pseudo_id,
traffic_source.source AS first_touch_source,
session_source AS last_touch_source,
COUNT(*) AS sessions
FROM analytics_project.events_*
GROUP BY 1,2,3
)

SELECT
first_touch_source,
last_touch_source,
SUM(sessions) AS total_sessions
FROM attribution_data
GROUP BY 1,2
ORDER BY total_sessions DESC;
