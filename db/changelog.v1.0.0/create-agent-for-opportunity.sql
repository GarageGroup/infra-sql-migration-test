CREATE TABLE AgentForOpportunity(
    [CrmId] uniqueidentifier NOT NULL PRIMARY KEY,
    [CrmCreationTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [CrmModifiedTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [SyncTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [ClientCrmId] uniqueidentifier NULL DEFAULT NULL,
    [ClientName] nvarchar (160) NULL DEFAULT NULL,
    [DealCrmId] uniqueidentifier NULL DEFAULT NULL,
    [DealName] nvarchar (100) NULL DEFAULT NULL,
    [Fee] decimal(19, 2) NULL DEFAULT NULL
);