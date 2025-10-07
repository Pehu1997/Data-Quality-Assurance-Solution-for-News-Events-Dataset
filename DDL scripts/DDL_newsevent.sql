CREATE TABLE news_events (
    event_id VARCHAR(36) PRIMARY KEY,
    event_type VARCHAR(50),
    summary TEXT,
    category VARCHAR(100),
    found_at DATETIME,
    confidence FLOAT,
    article_sentence TEXT,
    human_approved BOOLEAN,
    planning BOOLEAN,
    amount DECIMAL(18,2),
    amount_normalized DECIMAL(18,2),
    effective_date DATETIME,
    headcount INT,
    location VARCHAR(255),
    company_id VARCHAR(36),
    company_name VARCHAR(255),
    company_domain VARCHAR(255),
    company_ticker VARCHAR(50),
    article_id VARCHAR(36),
    article_title TEXT,
    article_url VARCHAR(500),
    article_published_at DATETIME,
    article_body LONGTEXT,
    article_author VARCHAR(255)
);

ALTER TABLE news_events
MODIFY COLUMN article_url VARCHAR(500);

ALTER TABLE news_events 
MODIFY COLUMN article_url VARCHAR(2000);

ALTER TABLE news_events
MODIFY COLUMN article_author VARCHAR(1000);

ALTER TABLE news_events MODIFY amount VARCHAR(50);
ALTER TABLE news_events MODIFY amount_normalized VARCHAR(50); 


