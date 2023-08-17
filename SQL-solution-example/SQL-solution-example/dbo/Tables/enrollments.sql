CREATE TABLE [dbo].[Enrollments] (
    [enrollment_id]   INT  NOT NULL,
    [student_id]      INT  NULL,
    [course_id]       INT  NULL,
    [enrollment_date] DATE DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([enrollment_id] ASC),
    FOREIGN KEY ([course_id]) REFERENCES [dbo].[Courses] ([course_id]),
    FOREIGN KEY ([student_id]) REFERENCES [dbo].[Students] ([student_id])
);








GO

CREATE TRIGGER [dbo].[generate_enrollment_id]
ON [dbo].[Enrollments]
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @last_enrollment_id INT;
    SELECT @last_enrollment_id = MAX(enrollment_id) FROM Enrollments;
    INSERT INTO Enrollments(enrollment_id, student_id, course_id, enrollment_date)
    SELECT COALESCE(@last_enrollment_id + 1, 1), student_id, course_id, GETDATE()
    FROM inserted;
END;