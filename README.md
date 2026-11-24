# Student Performance Analysis Using MATLAB

## 📌 Project Overview

**Student Performance Analysis Using MATLAB** is a mini project developed to analyze students' academic performance using statistical techniques, correlation analysis, linear regression, and data visualization.

The project uses marks of 8 students across 4 subjects, along with their attendance percentages and final examination marks. It helps identify academic trends, analyze the relationship between attendance and examination performance, predict marks, and compare the performance of two student groups.

## 🎯 Project Objectives

- Analyze subject-wise student performance.
- Calculate statistical measures such as Mean, Median, Mode, Range, Variance, and Standard Deviation.
- Examine the relationship between attendance and examination marks.
- Predict examination marks using Linear Regression.
- Compare the academic performance of two student groups using an independent two-sample t-test.
- Generate graphical representations of student performance.
- Export statistical results into a CSV report.

## 🛠️ Technologies Used

- **Programming Language:** MATLAB
- **Statistical Analysis:** MATLAB Statistical Functions
- **Data Visualization:** MATLAB Plotting Functions
- **Data Export:** CSV (Comma-Separated Values)

## ⚙️ Project Features

### 1. Subject-wise Statistical Analysis
Calculates the following statistical measures for each subject:

- Mean (Average)
- Median
- Mode
- Range
- Variance
- Standard Deviation

### 2. Attendance and Marks Correlation
Uses correlation analysis to examine the relationship between students' attendance percentages and examination marks.

### 3. Marks Prediction Using Linear Regression
Builds a simple linear regression model using attendance data to predict examination marks for new attendance values (60%, 75%, and 90%).

### 4. Group Performance Comparison
Compares two groups of students using an independent two-sample t-test and determines whether their performance difference is statistically significant.

### 5. Data Visualization
Generates four graphical representations:

- Attendance vs. Exam Marks (Scatter Plot with Regression Line)
- Subject-wise Average Marks (Bar Chart)
- Actual vs. Predicted Marks (Line Graph)
- Group Performance Comparison (Box Plot)

### 6. Final Performance Report
Displays overall performance statistics, including average attendance, average examination marks, and subject-wise average comparisons.

The statistical results are also exported into a CSV file named `Student_Performance_Report.csv`.

## 📂 Project Structure

```text
matlab_mini_Project/
│
├── mini_Project1_studentPerformance.m
├── README.md
└── Student_Performance_Report.csv
```

*Note: The CSV report is generated automatically when the MATLAB script is executed.*

## ▶️ How to Run the Project

1. Install MATLAB on your computer.
2. Download or clone this repository.
3. Open MATLAB.
4. Navigate to the project folder.
5. Open `mini_Project1_studentPerformance.m`.
6. Run the script by clicking the **Run** button.
7. View the statistical results in the Command Window.
8. View the generated performance graphs.
9. Find the exported CSV report in the current working folder.

**Requirement:** Functions such as `regress`, `ttest2`, and `boxplot` require the Statistics and Machine Learning Toolbox.

## 📊 Expected Output

After execution, the project generates:

- Subject-wise statistical summary table.
- Attendance and marks correlation value.
- Linear regression equation.
- Predicted examination marks.
- Two-group statistical comparison results.
- Four performance visualization graphs.
- CSV report containing subject-wise statistical results.

## 💡 Learning Outcomes

Through this project, the following concepts are demonstrated:

- MATLAB programming and matrix operations.
- Descriptive statistical analysis.
- Correlation and regression analysis.
- Hypothesis testing using t-tests.
- Data visualization and graphical interpretation.
- Exporting analytical results into CSV format.

## 👨‍💻 Project Information

| Detail | Information |
|---|---|
| Project Title | Student Performance Analysis Using MATLAB |
| Project Type | MATLAB Mini Project |
| Project Number | Mini Project 1 |
| Student Name | Sumit Mishra |
| Roll Number | 26MCAP101N030 |
| Course | Master of Computer Applications (MCA) |
| Institution | Manav Rachna Institute of Research and Studies |

## 🔗 GitHub Repository

**Repository Link:**  
https://github.com/878785/matlab_mini_Project

## 📝 Conclusion

This project demonstrates how MATLAB can be used to analyze academic performance through statistical techniques and data visualization. It provides meaningful insights into student marks, attendance patterns, and group performance while demonstrating the practical application of statistical analysis and predictive modeling.

---

**Developed by Sumit Mishra | MCA | Manav Rachna**
