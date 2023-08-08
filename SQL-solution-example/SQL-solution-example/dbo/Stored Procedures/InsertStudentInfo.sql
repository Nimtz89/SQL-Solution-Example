CREATE PROCEDURE InsertStudentInfo
	@student_id INT,
    @first_name VARCHAR(50),
    @last_name VARCHAR(50),
    @age INT
  AS
BEGIN
	INSERT INTO [dbo].[Student_info] (
	student_id,
	first_name,
	last_name,
	age
	)
	VALUES(
	@student_id,
	@first_name,
	@last_name,
	@age
	)
END;