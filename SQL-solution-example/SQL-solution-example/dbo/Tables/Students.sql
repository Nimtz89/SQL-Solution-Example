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

