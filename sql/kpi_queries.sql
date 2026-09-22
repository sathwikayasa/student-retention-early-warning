-- Dropout rate by course

SELECT course_name,
       COUNT(*) AS students,
       ROUND(100.0 * SUM(CASE WHEN target = 'Dropout' THEN 1 ELSE 0 END) / COUNT(*), 1) AS dropout_rate_pct
FROM students
GROUP BY course_name
ORDER BY dropout_rate_pct DESC;


-- Dropout rate by tuition status

SELECT tuition_fees_up_to_date_label AS tuition_current,
       COUNT(*) AS students,
       ROUND(100.0 * AVG(is_dropout), 1) AS dropout_rate_pct
FROM students
GROUP BY tuition_fees_up_to_date_label;


-- Dropout rate by scholarship status

SELECT scholarship_holder_label AS scholarship,
       COUNT(*) AS students,
       ROUND(100.0 * AVG(is_dropout), 1) AS dropout_rate_pct
FROM students
GROUP BY scholarship_holder_label;
