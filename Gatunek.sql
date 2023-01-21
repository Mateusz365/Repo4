CREATE TABLE [dbo].[Gatunek] (
    [GatunekID] INT        IDENTITY (1, 1) NOT NULL,
    [Gatunek]   NVARCHAR (150) NULL,
	[LiczbaFilmow] INT NULL
    PRIMARY KEY CLUSTERED ([GatunekID] ASC)
);


GO

