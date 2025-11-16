CREATE TABLE [dw].[Dim_Date] (
    [date_key]   INT           IDENTITY (1, 1) NOT NULL,
    [full_date]  DATE          NOT NULL,
    [day]        TINYINT       NOT NULL,
    [month]      TINYINT       NOT NULL,
    [year]       SMALLINT      NOT NULL,
    [day_name]   NVARCHAR (20) NOT NULL,
    [month_name] NVARCHAR (20) NOT NULL,
    [quarter]    TINYINT       NOT NULL,
    PRIMARY KEY CLUSTERED ([date_key] ASC)
);

