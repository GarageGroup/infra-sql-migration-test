CREATE TABLE SalesForOpportunity(
    [CrmId] uniqueidentifier NOT NULL PRIMARY KEY,
    [CrmCreationTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [CrmModifiedTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [SyncTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [SalesCrmId] uniqueidentifier NULL DEFAULT NULL,
    [SalesName] nvarchar (200) NULL DEFAULT NULL,
    [DealCrmId] uniqueidentifier NULL DEFAULT NULL,
    [DealName] nvarchar (100) NULL DEFAULT NULL,
    [Fee] decimal(19, 2) NULL DEFAULT NULL
);