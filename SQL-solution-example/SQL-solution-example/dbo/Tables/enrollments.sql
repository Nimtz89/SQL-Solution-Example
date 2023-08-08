CREATE TABLE [dbo].[enrollments] (
    [enrollment_id]   INT      NOT NULL,
    [student_id]      INT      NULL,
    [course_id]       INT      NULL,
    [enrollment_date] DATE     NULL,
    [grade]           CHAR (2) NULL,
    PRIMARY KEY CLUSTERED ([enrollment_id] ASC),
    FOREIGN KEY ([course_id]) REFERENCES [dbo].[courses] ([Course_id]),
    FOREIGN KEY ([student_id]) REFERENCES [dbo].[Student_info] ([student_id])
);

