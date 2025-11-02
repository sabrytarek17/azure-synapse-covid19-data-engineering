# 🦠 Global COVID-19 Data Engineering Project

## 📖 Overview

This project was designed and implemented by **Sabry Tarek** as a complete **Cloud-based Data Engineering Pipeline** for analyzing global COVID-19 data.  
The workflow was built entirely in **Microsoft Azure Synapse Analytics**, starting from raw data ingestion, cleaning, and transformation, all the way to building an **interactive Power BI dashboard** that visualizes global COVID-19 trends.

---

## ☁️ Cloud Environment Proof

This project was **fully developed and hosted on the cloud** using **Microsoft Azure Synapse Analytics**, which served as the main data warehouse and processing engine.  
Below is an actual screenshot from the Synapse workspace used during development:

<img width="1901" height="920" alt="azura_synapse2" src="https://github.com/user-attachments/assets/9f2c78d7-1db7-409b-8b9a-d76dc41f7ffd" />

<img width="1917" height="868" alt="azura_synapse1" src="https://github.com/user-attachments/assets/d09f01b2-ebad-4281-8343-bb97762d4d99" />


---

## 🎯 Project Objective

The goal of this project was to transform large, raw COVID-19 datasets into clean and structured data models optimized for fast analysis in Power BI.  
This included:
- Cleaning and transforming millions of records efficiently.  
- Structuring data for **high-performance analytical queries**.  
- Building reusable **SQL views** for reporting.  

---

## 🛠️ Tech Stack

- **Azure Synapse Analytics** → Data warehousing, transformation, and query engine  
- **Power BI** → Visualization and dashboard building  
- **SQL** → Data cleaning, transformation, and creating analytical views  
- **Azure Data Studio / Synapse Studio** → Querying, testing, and managing data  

---

## ⚙️ Data Engineering Workflow

### 1. **Schema & Data Ingestion**
- Created a clean structured table `COVID_INFO` in Synapse.  
- Applied a **CLUSTERED COLUMNSTORE INDEX** to boost query performance.  
- Loaded global COVID-19 datasets into the cloud environment.

### 2. **Data Transformation & Cleaning**
- Converted data types (e.g., `updated` → `DATE`).  
- Removed duplicates and ensured consistency in country names.  
- Filled missing values and validated data integrity.

### 3. **Analytical Views Creation**
Built several SQL views to simplify Power BI connections and improve dashboard speed:
- `vu_top_countries` → Top 10 countries by total confirmed cases  
- `vu_covid_summary` → Global summary (confirmed, recovered, deaths, active)  
- `vu_covid_trend` → Trend analysis grouped by date  
- `vu_location` → Country-based summary view  

---

## 📊 Power BI Dashboard

The **Power BI dashboard** connects directly to Synapse views and provides:
- 🌍 Global summary of confirmed, recovered, deaths, and active cases  
- 📈 Time-series trend of COVID-19 cases  
- 🏳️ Top countries by confirmed cases  
- 🗺️ Geographical map for quick visualization  

<img width="1094" height="619" alt="power_pi" src="https://github.com/user-attachments/assets/f9fe386f-86e8-4c9a-8624-8674e7fd152a" />

---

## 💡 Key Learnings 


- Building and deploying data pipelines using **Azure Synapse Analytics**  
- Optimizing **SQL queries** for analytical workloads  
- Creating cloud-based **views and tables** for Power BI integration  
- Designing **interactive dashboards** for data storytelling  

---

## 🏁 Future Enhancements

- Automate data refresh using **Azure Data Factory**  
- Integrate a real-time COVID-19 API  
- Add advanced visuals and AI-driven insights in Power BI  

---

## 👤 Author

**Sabry Tarek**  
📧 sabrytarek331@example.com  
🔗 [LinkedIn Profile](https://www.linkedin.com/in/sabry-tarek1/)



