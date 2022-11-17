CREATE TABLE City(
    [Id] int NOT NULL,
    [CrmId] uniqueidentifier NOT NULL,
    [Name] varchar (50) NOT NULL,
    [CountryId] int NOT NULL,
    [PropertyCount] int NOT NULL,
    [CrmCreationTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [CrmModifiedTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [SyncTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    PRIMARY KEY (Id)
);

CREATE UNIQUE INDEX CityCrmIdIndex ON City(CrmId);
CREATE INDEX CityCountryIdIndex ON City(CountryId);

CREATE TABLE CityTranslation(
    [CityCrmId] uniqueidentifier NOT NULL,
    [LanguageCode] varchar(3) NOT NULL,
    [Name] nvarchar (50) NULL,
    [CrmCreationTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [CrmModifiedTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [SyncTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    PRIMARY KEY (CityCrmId, LanguageCode)
);