# 📊 Student Quiz Marks Analysis (Kaggle Dataset)

## 📝 Project Overview

This project analyzes a dataset containing students' quiz scores.  
The main goal is to clean the data and answer specific analytical questions using **MySQL**.

Dataset Source: [Kaggle](https://www.kaggle.com/)  
Project Type: Data Cleaning + EDA (Exploratory Data Analysis)  
Tool Used: **MySQL**

---

## 📌 Project Objectives

1. **How many students are in the dataset?**  
2. **What is the average score for each exam?**  
3. **Who are the top 5 students based on their total score (out of 30)?**  
4. **How many students scored less than 20 in total?**

---

## 🛠️ Steps Taken

### 🔹 1. Data Copy and Setup
- Created a working copy of the original table.
- Verified data integrity.

### 🔹 2. Duplicate Check
- Used `ROW_NUMBER()` with `PARTITION BY` to detect duplicates.
- Found **no duplicates**.

### 🔹 3. Column Renaming
- Renamed complex quiz columns (e.g., `Q12 (5)`) to more readable formats (e.g., `quiz_12`).

### 🔹 4. Exploratory Data Analysis (EDA)
- Calculated total number of students: **875**
- Computed average score for each quiz using `ROUND(AVG(...), 2)`
- Retrieved top 5 students based on the total score (out of 30).
- Counted how many students scored less than 20 using two different metrics.

---

## 💻 SQL Functions Used

- `COUNT(DISTINCT)`
- `ROW_NUMBER() OVER (...)`
- `AVG()`, `ROUND()`
- `ORDER BY`, `LIMIT`
- `CTE (WITH ...)`

## 🔚 Final Notes

This project improved my practical SQL skills in data cleaning, transformation, and analysis.  
Special thanks to **[Alex The Analyst](https://www.youtube.com/c/AlexTheAnalyst)** for his guidance and inspiration.

