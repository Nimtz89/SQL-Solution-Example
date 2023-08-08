CREATE TABLE [dbo].[Student_info] (
    [student_id] INT          NOT NULL,
    [first_name] VARCHAR (50) NULL,
    [last_name]  VARCHAR (50) NULL,
    [age]        INT          NULL,
    PRIMARY KEY CLUSTERED ([student_id] ASC)
);




GO
CREATE TRIGGER Enroll_New_Student_In_Introduction ON dbo.Student_info
	FOR INSERT
AS
	IF EXISTS ( SELECT 0 FROM inserted)
		BEGIN
			INSERT INTO dbo.enrollments 
			SELECT 
			'001',
			i.student_id,
			1,
			GETDATE(),
			NULL
			FROM inserted i
		END