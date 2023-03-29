CREATE TABLE crm.SystemUser(
    [CrmId] uniqueidentifier NOT NULL PRIMARY KEY,
    [CrmCreationTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [CrmModifiedTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [SyncTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [UserName] nvarchar (1024) NULL DEFAULT NULL,
    [FullName] nvarchar (200) NULL DEFAULT NULL,
    [IsSales] bit NULL DEFAULT NULL,
    [IsDisabled] bit NULL DEFAULT NULL
);