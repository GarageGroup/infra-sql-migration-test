CREATE TABLE Area(
    [Id] int NOT NULL,
    [CrmId] uniqueidentifier NOT NULL,
    [Name] varchar (50) NOT NULL,
    [CityId] int NOT NULL,
    [CrmCreationTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [CrmModifiedTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [SyncTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    PRIMARY KEY (Id)
);

CREATE UNIQUE INDEX AreaCrmIdIndex ON Area(CrmId);
CREATE INDEX AreaCityIdIndex ON Area(CityId);

CREATE TABLE AreaTranslation(
    [AreaCrmId] uniqueidentifier NOT NULL,
    [LanguageCode] varchar(3) NOT NULL,
    [Name] nvarchar (50) NULL,
    [CrmCreationTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [CrmModifiedTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [SyncTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    PRIMARY KEY (AreaCrmId, LanguageCode)
);