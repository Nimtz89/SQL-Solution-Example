CREATE TABLE [dbo].[Students] (
    [student_id]        INT           NOT NULL,
    [first_name]        VARCHAR (50)  NOT NULL,
    [last_name]         VARCHAR (50)  NOT NULL,
    [date_of_birth]     DATE          NULL,
    [gender]            VARCHAR (10)  NULL,
    [email]             VARCHAR (100) NULL,
    [phone_number]      VARCHAR (20)  NULL,
    [address]           VARCHAR (200) NULL,
    [registration_date] DATE          DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([student_id] ASC),
    CHECK ([gender]='Other' OR [gender]='Female' OR [gender]='Male'),
    UNIQUE NONCLUSTERED ([email] ASC)
);




GO
CREATE TRIGGER generate_student_id
ON Students
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @last_student_id INT;
    SELECT @last_student_id = MAX(student_id) FROM Students;
    INSERT INTO Students (student_id, first_name, last_name, date_of_birth, gender, email, phone_number, address, registration_date)
    SELECT COALESCE(@last_student_id + 1, 1), first_name, last_name, date_of_birth, gender, email, phone_number, address, GETDATE()
    FROM inserted;
END;