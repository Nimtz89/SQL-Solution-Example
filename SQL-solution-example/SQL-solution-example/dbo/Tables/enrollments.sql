CREATE TABLE [dbo].[enrollments] (
    [enrollment_id]   INT  NOT NULL,
    [student_id]      INT  NULL,
    [course_id]       INT  NULL,
    [enrollment_date] DATE NULL,
    [grade]           INT  NULL,
    [completed]       BIT  NULL,
    PRIMARY KEY CLUSTERED ([enrollment_id] ASC),
    CONSTRAINT [check_grade_value] CHECK ([grade]>=(0) AND [grade]<=(10)),
    FOREIGN KEY ([course_id]) REFERENCES [dbo].[courses] ([Course_id]),
    FOREIGN KEY ([student_id]) REFERENCES [dbo].[Student_info] ([student_id])
);



