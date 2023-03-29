CREATE TABLE Deal(
    [CrmId] uniqueidentifier NOT NULL PRIMARY KEY,
    [CrmCreationTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [CrmModifiedTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [SyncTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [Name] nvarchar (100) NULL DEFAULT NULL,
    [StatusReasonCode] int NULL DEFAULT NULL,
    [StatusReasonName] nvarchar (100) NULL DEFAULT NULL,
    [CloseDate] datetime NULL DEFAULT NULL,
    [IsPpg] bit NULL DEFAULT NULL
);