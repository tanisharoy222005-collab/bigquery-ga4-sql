-- CONTENT ENGAGEMENT ANALYSIS
-- Purpose:
-- Identify high-performing pages and CTA interaction.

SELECT
  page_location,

  COUNTIF(event_name='page_view') AS pageviews,

  COUNTIF(event_name='scroll') AS scroll_events,

  COUNTIF(event_name='click_cta') AS cta_clicks,

  ROUND(
    SAFE_DIVIDE(
      COUNTIF(event_name='click_cta'),
      COUNTIF(event_name='page_view')
    )*100,
    2
  ) AS cta_ctr

FROM `project.analytics.events_*`

GROUP BY page_location

ORDER BY pageviews DESC;
