CREATE TABLE [dbo].[Enrollments] (
    [enrollment_id]   INT  NOT NULL,
    [student_id]      INT  NULL,
    [course_id]       INT  NULL,
    [enrollment_date] DATE DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([enrollment_id] ASC),
    FOREIGN KEY ([course_id]) REFERENCES [dbo].[Courses] ([course_id]),
    FOREIGN KEY ([student_id]) REFERENCES [dbo].[Students] ([student_id])
);





