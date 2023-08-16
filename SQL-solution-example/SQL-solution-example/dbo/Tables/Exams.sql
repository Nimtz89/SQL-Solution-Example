CREATE TABLE [dbo].[Exams] (
    [exam_id]   INT          NOT NULL,
    [course_id] INT          NULL,
    [exam_name] VARCHAR (50) NULL,
    [exam_date] DATE         NULL,
    [max_score] INT          NULL,
    PRIMARY KEY CLUSTERED ([exam_id] ASC),
    CHECK ([max_score]>=(0)),
    FOREIGN KEY ([course_id]) REFERENCES [dbo].[Courses] ([course_id])
);

