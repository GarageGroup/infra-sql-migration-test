CREATE TABLE PropertyType( 
    [Id] int NOT NULL,
    [CrmId] uniqueidentifier NOT NULL,
    [Name] varchar (50),
    [CrmCreationTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [CrmModifiedTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [SyncTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    PRIMARY KEY (Id)
);

CREATE TABLE PropertyTypeTranslation(
    [PropertyTypeCrmId] uniqueidentifier NOT NULL,
    [LanguageCode] varchar(3) NOT NULL,
    [Name] nvarchar (50) NULL,
    [CrmCreationTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [CrmModifiedTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [SyncTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    PRIMARY KEY (PropertyTypeCrmId, LanguageCode)
);

CREATE UNIQUE INDEX PropertyTypeCrmIdIndex ON PropertyType(CrmId);