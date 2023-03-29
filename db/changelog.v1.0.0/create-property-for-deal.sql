CREATE TABLE crm.PropertyForDeal(
    [CrmId] uniqueidentifier NOT NULL PRIMARY KEY,
    [CrmCreationTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [CrmModifiedTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [SyncTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [PropertyCrmId] uniqueidentifier NULL DEFAULT NULL,
    [PropertyName] nvarchar (256) NULL DEFAULT NULL,
    [DealCrmId] uniqueidentifier NULL DEFAULT NULL,
    [DealName] nvarchar (100) NULL DEFAULT NULL,
    [ContractPrice] decimal(19, 2) NULL DEFAULT NULL,
    [Revenue] decimal(19, 2) NULL DEFAULT NULL,
    [IsPpg] bit NULL DEFAULT NULL,
    [DeclaredSquareMeters] decimal(19, 2) NULL DEFAULT NULL
);