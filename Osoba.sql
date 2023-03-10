CREATE TABLE [dbo].[Osoba] (
    [OsobaID]       INT            IDENTITY (1, 1) NOT NULL,
    [Imie]          NVARCHAR (150)     NULL,
    [Nazwisko]      NVARCHAR (300)     NULL,
    [KrajID]        INT            NULL,
    [DataUrodzenia] DATETIME       NULL,
    [Zdjecie]       VARBINARY (50) NULL,
    [Wiek]          AS             (datediff(year,[DataUrodzenia],getdate())),
    PRIMARY KEY CLUSTERED ([OsobaID] ASC),
    CONSTRAINT [FK_Osoba_Kraj] FOREIGN KEY ([KrajID]) REFERENCES [dbo].[Kraj] ([KrajID])
);


GO

