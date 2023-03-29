CREATE TABLE crm.Lead(
    [CrmId] uniqueidentifier NOT NULL PRIMARY KEY,
    [CrmCreationTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [CrmModifiedTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [SyncTime] datetimeoffset NOT NULL DEFAULT SYSDATETIMEOFFSET(),
    [Topic] nvarchar (300) NULL DEFAULT NULL,
    [SourceCategoryCrmId] uniqueidentifier NULL DEFAULT NULL,
    [SourceCategoryName] nvarchar (100) NULL DEFAULT NULL,
    [MarketCrmId] uniqueidentifier NULL DEFAULT NULL,
    [MarketName] nvarchar (100) NULL DEFAULT NULL,
    [PromotionTypeCode] int NULL DEFAULT NULL,
    [PromotionTypeName] nvarchar (100) NULL DEFAULT NULL,
    [SourceCrmId] uniqueidentifier NULL DEFAULT NULL,
    [SourceName] nvarchar (100) NULL DEFAULT NULL
);