
-- ====================================================================
-- SPRINT PLAN: TASK 2 & 3 - CORE LOOKUP TABLES
-- ====================================================================

-- 1. Create Companies Table
CREATE TABLE companies (
    company_id SERIAL PRIMARY KEY,
    company_name VARCHAR(200) NOT NULL,
    website VARCHAR(255),
    industry VARCHAR(100)
);

-- 2. Create Locations Table
CREATE TABLE locations (
    location_id SERIAL PRIMARY KEY,
    city VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
);

-- 3. Create Categories Table
CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL UNIQUE
);

-- 4. Create Skills Table
CREATE TABLE skills (
    skill_id SERIAL PRIMARY KEY,
    skill_name VARCHAR(100) NOT NULL UNIQUE
);