-- 基础对象名称（Book）关联数据表Book的创建脚本。
CREATE TABLE [Book](
    [Id] [Int] IDENTITY(1,1) NOT NULL,
    [Title] [NVarChar](50) NOT NULL,
    [Author] [NVarChar](50) NOT NULL,
    [PublisherId] [Int] NOT NULL,
    [PublishDate] [DateTime] NOT NULL,
    [ISBN] [NVarChar](50) NOT NULL,
    [ContentDescription] [NVarChar](50) NULL,
    [TOC] [NVarChar](50) NULL,
    [CategoryId] [Int] NOT NULL,
    [Clicks] [Int] NOT NULL,
    CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC
    ) ON [PRIMARY]
) ON [PRIMARY]


-- 基础对象名称（OrderBook）关联数据表OrderBook的创建脚本。
CREATE TABLE [OrderBook](
    [Id] [Int] IDENTITY(1,1) NOT NULL,
    [OrderId] [Int] NULL,
    [BookId] [Int] NULL,
    [Quantity] [Int] NULL,
    [UnitPrice] [Decimal](18,3) NULL,
    CONSTRAINT [PK_OrderBook] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC
    ) ON [PRIMARY]
) ON [PRIMARY]


-- 基础对象名称（Category）关联数据表Category的创建脚本。
CREATE TABLE [Category](
    [Id] [Int] IDENTITY(1,1) NOT NULL,
    [Name] [NVarChar](50) NOT NULL,
    [PId] [Int] NOT NULL,
    [SortNum] [NVarChar](50) NOT NULL,
    CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC
    ) ON [PRIMARY]
) ON [PRIMARY]


-- 基础对象名称（ReaderComment）关联数据表ReaderComment的创建脚本。
CREATE TABLE [ReaderComment](
    [Id] [Int] IDENTITY(1,1) NOT NULL,
    [BookId] [Int] NOT NULL,
    [ReaderName] [NVarChar](50) NOT NULL,
    [Title] [NVarChar](50) NOT NULL,
    [Comment] [NVarChar](50) NOT NULL,
    [Date] [DateTime] NOT NULL,
    CONSTRAINT [PK_ReaderComment] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC
    ) ON [PRIMARY]
) ON [PRIMARY]


-- 基础对象名称（Orders）关联数据表Orders的创建脚本。
CREATE TABLE [Orders](
    [Id] [Int] IDENTITY(1,1) NOT NULL,
    [OrderDate] [DateTime] NOT NULL,
    [UserId] [Int] NOT NULL,
    [TotalPrice] [Decimal](18,3) NOT NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC
    ) ON [PRIMARY]
) ON [PRIMARY]


-- 基础对象名称（Users）关联数据表Users的创建脚本。
CREATE TABLE [Users](
    [Id] [Int] IDENTITY(1,1) NOT NULL,
    [LoginId] [Int] NOT NULL,
    [LoginPwd] [NVarChar](50) NOT NULL,
    [Name] [NVarChar](50) NOT NULL,
    [Address] [NVarChar](50) NULL,
    [Phone] [NVarChar](50) NULL,
    [Mail] [NVarChar](50) NULL,
    [UserRoleId] [Int] NULL,
    [UserStateId] [Int] NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
    (
        [Id] ASC
    ) ON [PRIMARY]
) ON [PRIMARY]


