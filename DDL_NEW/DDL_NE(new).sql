-- ====================================================
-- Simple Firmable Database Schema 
-- ====================================================

-- Drop tables if they exist
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS articles;
DROP TABLE IF EXISTS events;
DROP TABLE IF EXISTS dq_metrics;

-- Companies Tablecompaniesevents
CREATE TABLE companies (
    company_id VARCHAR(100) PRIMARY KEY,
    company_name VARCHAR(255),
    company_domain VARCHAR(255),
    company_ticker VARCHAR(100)
);

-- Articles Table
CREATE TABLE articles (
    article_id VARCHAR(100) PRIMARY KEY,
    article_title TEXT,
    article_url VARCHAR(2000),
    article_published_at DATETIME,
    article_body LONGTEXT
);

-- Events Table
CREATE TABLE events (
    event_id VARCHAR(100) PRIMARY KEY,
    event_type VARCHAR(100),
    summary LONGTEXT,
    category VARCHAR(100),
    found_at DATETIME,
    confidence FLOAT,
    article_sentence LONGTEXT,
    human_approved BOOLEAN,
    planning BOOLEAN,
    effective_date DATETIME,
    location VARCHAR(255),
    company_id VARCHAR(100),
    article_id VARCHAR(100)
);

-- Data Quality Metrics Table
CREATE TABLE dq_metrics (
    metric_id INT AUTO_INCREMENT PRIMARY KEY,
    metric_name VARCHAR(255),
    metric_value FLOAT,
    metric_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    notes TEXT
);
