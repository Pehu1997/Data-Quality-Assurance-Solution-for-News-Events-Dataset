CREATE OR REPLACE VIEW vw_uniqueness AS
SELECT 
    'event_id' AS metric,
    ROUND(100 * COUNT(DISTINCT event_id) / COUNT(*), 2) AS uniqueness_pct
FROM news_events;

CREATE OR REPLACE VIEW vw_consistency AS
SELECT 
    'amount_vs_amount_normalized' AS rule,
    ROUND(100 * SUM(
        CASE 
            WHEN amount REGEXP '^[0-9,.$]+$' AND amount_normalized IS NOT NULL THEN 1
            WHEN amount IS NULL OR amount = '' THEN 1 -- ignore missing
            ELSE 0
        END
    ) / COUNT(*), 2) AS consistency_pct
FROM news_events;


CREATE OR REPLACE VIEW vw_timeliness AS
SELECT 
    'found_within_7_days' AS rule,
    ROUND(100 * SUM(
        CASE 
            WHEN article_published_at IS NOT NULL 
             AND found_at IS NOT NULL 
             AND TIMESTAMPDIFF(DAY, article_published_at, found_at) <= 7
            THEN 1 ELSE 0 
        END
    ) / COUNT(*), 2) AS timeliness_pct
FROM news_events;

CREATE OR REPLACE VIEW vw_validity AS
SELECT 
    'article_url' AS column_name,
    ROUND(100 * SUM(
        CASE 
            WHEN article_url REGEXP '^https?://' THEN 1 ELSE 0 
        END
    ) / COUNT(*), 2) AS validity_pct
FROM news_events;


CREATE OR REPLACE VIEW vw_duplicates_by_day AS
SELECT 
    DATE(found_at) AS event_date,
    COUNT(*) AS total_records,
    COUNT(DISTINCT event_id) AS unique_event_ids,
    (COUNT(*) - COUNT(DISTINCT event_id)) AS duplicate_count,
    ROUND(100 * (COUNT(*) - COUNT(DISTINCT event_id)) / COUNT(*), 2) AS duplicate_pct
FROM news_events
WHERE found_at IS NOT NULL
GROUP BY DATE(found_at)
ORDER BY event_date;


