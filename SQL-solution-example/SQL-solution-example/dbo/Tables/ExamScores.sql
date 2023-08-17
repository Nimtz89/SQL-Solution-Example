CREATE TABLE [dbo].[ExamScores] (
    [score_id]   INT NOT NULL,
    [exam_id]    INT NULL,
    [student_id] INT NULL,
    [score]      INT NULL,
    PRIMARY KEY CLUSTERED ([score_id] ASC),
    FOREIGN KEY ([exam_id]) REFERENCES [dbo].[Exams] ([exam_id]),
    FOREIGN KEY ([student_id]) REFERENCES [dbo].[Students] ([student_id])
);




GO

CREATE TRIGGER [dbo].[generate_examscore_id]
ON [dbo].[ExamScores]
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @last_examscore_id INT;
    SELECT @last_examscore_id = MAX(score_id) FROM ExamScores;
    INSERT INTO ExamScores(score_id, exam_id, student_id, score)
    SELECT COALESCE(@last_examscore_id + 1, 1), exam_id, student_id, score
    FROM inserted;
END;