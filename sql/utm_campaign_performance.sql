SELECT
session_campaign,
session_source,
session_medium,
COUNT(*) AS sessions
FROM analytics_project.events_*
GROUP BY 1,2,3
ORDER BY sessions DESC;
