CREATE TABLE [dbo].[Courses] (
    [course_id]   INT           NOT NULL,
    [course_code] VARCHAR (20)  NULL,
    [course_name] VARCHAR (100) NOT NULL,
    [department]  VARCHAR (50)  NULL,
    [credits]     INT           NULL,
    PRIMARY KEY CLUSTERED ([course_id] ASC),
    CHECK ([credits]>(0)),
    UNIQUE NONCLUSTERED ([course_code] ASC)
);

 
