CREATE TABLE [dbo].[ExamScores] (
    [score_id]   INT NOT NULL,
    [exam_id]    INT NULL,
    [student_id] INT NULL,
    [score]      INT NULL,
    PRIMARY KEY CLUSTERED ([score_id] ASC),
    FOREIGN KEY ([exam_id]) REFERENCES [dbo].[Exams] ([exam_id]),
    FOREIGN KEY ([student_id]) REFERENCES [dbo].[Students] ([student_id])
);

