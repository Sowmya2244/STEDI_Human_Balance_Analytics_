# STEDI Human Balance Analytics

## Overview

This project implements a data lakehouse solution using AWS Glue, Athena, Spark, and Amazon S3 for the STEDI Human Balance Analytics project.

The pipeline sanitizes customer and sensor data while preserving customer privacy and prepares curated datasets for machine learning.

---

## Technologies

- AWS Glue Studio
- AWS Glue Data Catalog
- Amazon Athena
- Amazon S3
- Apache Spark
- PySpark

---

## Architecture

Landing Zone

- customer_landing
- accelerometer_landing
- step_trainer_landing

↓

Trusted Zone

- customer_trusted
- accelerometer_trusted
- step_trainer_trusted

↓

Curated Zone

- customer_curated
- machine_learning_curated

---

## ETL Jobs

1. customer_landing_to_trusted
2. accelerometer_landing_to_trusted
3. customer_trusted_to_curated
4. step_trainer_trusted
5. machine_learning_curated

---

## Landing Row Counts

Customer : 956

Accelerometer : 81273

Step Trainer : 28680

---

## Trusted Row Counts

Customer : 482

Accelerometer : 40981

Step Trainer : 14460

---

## Curated Row Counts

Customer : 482

Machine Learning : 43681

---

## Repository Structure
```
STEDI-Human-Balance-Analytics/
│
├── sql/
│   ├── customer_landing.sql
│   ├── accelerometer_landing.sql
│   └── step_trainer_landing.sql
│
├── python/
│   ├── customer_landing_to_trusted.py
│   ├── accelerometer_landing_to_trusted.py
│   ├── customer_trusted_to_curated.py
│   ├── step_trainer_trusted.py
│   └── machine_learning_curated.py
│
├── screenshots/
│   ├── customer_landing.png
│   ├── accelerometer_landing.png
│   ├── step_trainer_landing.png
│   ├── customer_trusted.png
│   ├── accelerometer_trusted.png
│   ├── customer_curated.png
│   ├── step_trainer_trusted.png
│   └── machine_learning_curated.png
|   └── shareWithResearchAsOfDate_blank.png
│
└── README.md
```
