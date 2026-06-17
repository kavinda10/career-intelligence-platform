# Star Schema Design — Career Intelligence Platform

This document outlines the analytical data model optimized for reporting, business intelligence, and career market trends.

---

## Schema Architecture

We have implemented a **Star Schema** to decouple transactional data structures into a clean, query-efficient analytical model. 

### Central Fact Table
* **`job_postings`**: Captures individual hiring events. Contains numerical metrics for compensation and user engagement, along with foreign keys linking to contextual dimensions.

### Surrounding Dimension Tables
* **`companies`**: Details regarding the hiring entities.
* **`locations`**: Geographic contexts of the openings.
* **`skills`**: Technical and soft skills mapped to requirements.
* **`experience_levels`**: Career bands (Entry, Mid, Senior, etc.).
* **`work_types`**: Workplace models (Full-time, Part-time, Contract, etc.).

---

## Conceptual Schema Diagram

```text
       ┌──────────────────┐               ┌──────────────────┐
       │    companies     │               │    locations     │
       ├──────────────────┤               ├──────────────────┤
       │ PK │ company_id  │               │ PK │ location_id │
       └─────────┬────────┘               └─────────┬────────┘
                 │                                  │
                 │      ┌────────────────────┐      │
                 └─────►│    job_postings    │◄─────┘
                        │    (Fact Table)    │
                        ├────────────────────┤
                        │ PK │ job_id        │
                        │ FK │ company_id    │
                        │ FK │ location_id   │
       ┌───────────────►│ FK │ experience_id │◄──────────────┐
       │                │ FK │ work_type_id  │               │
       │                │ FK │ skill_id      │               │
       │                ├────────────────────┤               │
       │                │    title           │               │
       │                │    min_salary      │               │
       │                │    max_salary      │               │
       │                │    views           │               │
       │                │    applies         │               │
       │                └────────────────────┘               │
       │                                                     │
┌──────┴─────────────┐                                ┌──────┴─────────────┐
│ experience_levels  │                                │    work_types      │
├────────────────────┤                                ├────────────────────┤
│ PK │ experience_id │                                │ PK │ work_type_id  │
└────────────────────┘                                └────────────────────┘
                                  ▲
                         ┌────────┴────────┐
                         │     skills      │
                         ├─────────────────┤
                         │ PK │ skill_id   │
                         └─────────────────┘
