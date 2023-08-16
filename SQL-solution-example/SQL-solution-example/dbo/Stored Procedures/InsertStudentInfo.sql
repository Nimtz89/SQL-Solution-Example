CREATE PROCEDURE [dbo].[InsertStudentInfo]
	@student_id INT,
    @first_name VARCHAR(50),
    @last_name VARCHAR(50),
    @date_of_birth DATE,
	@gender VARCHAR(10),
	@email VARCHAR(100),
	@phone_number VARCHAR(20),
	@adress VARCHAR(200)
  AS
BEGIN
	INSERT INTO [dbo].[Students]
	VALUES(
	@student_id,
	@first_name,
	@last_name,
	@date_of_birth,
	@gender,
	@email,
	@phone_number,
	@adress,
	GETDATE()
	)
	INSERT INTO [dbo].Enrollments
	VALUES(
	0001,
	@student_id,
	10001,
	GETDATE()
	)
END;