WITH ga4_leads AS (
  SELECT
    DATE(event_timestamp) AS event_date,
    COUNT(*) AS ga4_conversions
  FROM `analytics.events_*`
  WHERE event_name = 'generate_lead'
  GROUP BY event_date
),

crm_leads AS (
  SELECT
    lead_date,
    COUNT(*) AS crm_conversions
  FROM `crm.leads`
  GROUP BY lead_date
)

SELECT
  g.event_date,
  g.ga4_conversions,
  c.crm_conversions,
  g.ga4_conversions - c.crm_conversions AS variance
FROM ga4_leads g
LEFT JOIN crm_leads c
  ON g.event_date = c.lead_date
ORDER BY g.event_date DESC;
