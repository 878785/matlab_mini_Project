
% Student Performance Analysis Using MATLAB
% This project studies student marks and attendance.

clc;
clear;
close all;

%% Student Information

subjectNames = ["Math", "Science", "English", "Computer"];

% Marks of 8 students in 4 subjects
studentMarks = [
    78 85 72 90;
    65 70 68 74;
    88 92 84 95;
    54 60 58 62;
    72 75 70 78;
    91 89 93 96;
    68 73 66 71;
    80 82 79 85
];

% Attendance and final exam marks of students
attendance = [92; 76; 88; 64; 81; 95; 70; 86];
examMarks = [84; 70; 91; 58; 77; 94; 67; 83];

%% 1. Calculate Subject-wise Statistics

averageMarks = mean(studentMarks);
middleMarks = median(studentMarks);
mostCommonMarks = mode(studentMarks);
highestLowestDifference = range(studentMarks);
markVariance = var(studentMarks);
markDeviation = std(studentMarks);

% Store all results in one table
resultTable = table(subjectNames', averageMarks', middleMarks', ...
    mostCommonMarks', highestLowestDifference', markVariance', ...
    markDeviation', ...
    'VariableNames', {'Subject','Average','Median','Mode', ...
    'Range','Variance','StandardDeviation'});

disp('STUDENT PERFORMANCE SUMMARY');
disp(resultTable);

%% 2. Check Attendance and Marks Relationship

attendanceRelation = corr(attendance, examMarks);

fprintf('\nAttendance and Marks Correlation: %.2f\n', ...
    attendanceRelation);

%% 3. Predict Marks Using Linear Regression

% Create a simple regression model
inputData = [ones(length(attendance),1), attendance];

model = regress(examMarks, inputData);

predictedMarks = inputData * model;

% Predict marks for new attendance values
newAttendance = [60; 75; 90];

newInput = [ones(length(newAttendance),1), newAttendance];

newPredictions = newInput * model;

fprintf('\nREGRESSION MODEL\n');
fprintf('Marks = %.2f + %.2f * Attendance\n', ...
    model(1), model(2));

predictionTable = table(newAttendance, newPredictions, ...
    'VariableNames', {'Attendance','PredictedMarks'});

disp('Predicted Marks:');
disp(predictionTable);

%% 4. Compare Two Groups of Students

groupA = [82; 76; 88; 91; 79; 85];
groupB = [74; 69; 72; 68; 70; 65];

[h, p, confidenceInterval, testResult] = ttest2(groupA, groupB);

fprintf('\nGROUP COMPARISON RESULTS\n');
fprintf('P-value: %.4f\n', p);
fprintf('T-statistic: %.2f\n', testResult.tstat);
fprintf('Degrees of freedom: %.2f\n', testResult.df);

if h == 1
    disp('There is a significant difference between both groups.');
else
    disp('There is no significant difference between both groups.');
end

%% 5. Display Performance Graphs

figure('Name', 'Student Performance Analysis', 'Color', 'w');

% Attendance vs exam marks
subplot(2,2,1);
scatter(attendance, examMarks, 60, 'filled');
hold on;

attendanceLine = linspace(min(attendance), ...
    max(attendance), 100)';

marksLine = [ones(length(attendanceLine),1), attendanceLine] * model;

plot(attendanceLine, marksLine, 'r', 'LineWidth', 1.5);
xlabel('Attendance (%)');
ylabel('Exam Marks');
title('Attendance vs Marks');
legend('Students', 'Regression Line');
grid on;
hold off;

% Average marks in each subject
subplot(2,2,2);
bar(averageMarks);
xticklabels(subjectNames);
xlabel('Subjects');
ylabel('Average Marks');
title('Subject-wise Average Marks');
grid on;

% Actual and predicted marks
subplot(2,2,3);
plot(examMarks, 'o-', 'LineWidth', 1.5);
hold on;
plot(predictedMarks, 's--', 'LineWidth', 1.5);
xlabel('Student Number');
ylabel('Marks');
title('Actual vs Predicted Marks');
legend('Actual', 'Predicted');
grid on;
hold off;

% Compare two groups
subplot(2,2,4);
allGroupMarks = [groupA; groupB];
groupNumber = [ones(size(groupA)); 2*ones(size(groupB))];

boxplot(allGroupMarks, groupNumber, ...
    'Labels', {'Group A', 'Group B'});

xlabel('Student Groups');
ylabel('Marks');
title('Group Performance Comparison');
grid on;

%% 6. Final Performance Report

fprintf('\nFINAL PERFORMANCE REPORT\n');

fprintf('Lowest Subject Average: %.2f\n', min(averageMarks));
fprintf('Highest Subject Average: %.2f\n', max(averageMarks));

fprintf('Attendance Correlation: %.2f\n', attendanceRelation);

fprintf('Average Attendance: %.2f%%\n', mean(attendance));

fprintf('Average Exam Marks: %.2f\n', mean(examMarks));

% Save the statistical results
writetable(resultTable, 'Student_Performance_Report.csv');

disp('Report saved successfully!');
