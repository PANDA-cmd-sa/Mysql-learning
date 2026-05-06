
-- Tables
Students(StudentID PK, Name, Email, CourseID FK)
Courses(CourseID PK, CourseName)
Enrollments(EnrollmentID PK, StudentID FK, CourseID FK)

-- Sample Query
SELECT Students.Name, Courses.CourseName
FROM Students
JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
JOIN Courses ON Courses.CourseID = Enrollments.CourseID;
