WITH funnel AS (
  SELECT
    user_pseudo_id,
    MAX(IF(event_name = 'page_view', 1, 0)) AS visited_page,
    MAX(IF(event_name = 'form_start', 1, 0)) AS started_form,
    MAX(IF(event_name = 'generate_lead', 1, 0)) AS submitted_lead
  FROM `analytics.events_*`
  GROUP BY user_pseudo_id
)

SELECT
  COUNTIF(visited_page = 1) AS landing_page_visits,
  COUNTIF(started_form = 1) AS form_starts,
  COUNTIF(submitted_lead = 1) AS lead_submissions,
  ROUND(
    SAFE_DIVIDE(
      COUNTIF(submitted_lead = 1),
      COUNTIF(visited_page = 1)
    ) * 100,
    2
  ) AS conversion_rate
FROM funnel;
