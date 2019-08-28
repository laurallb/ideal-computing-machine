-- �����������ƣ�Book���������ݱ�Book�Ĵ����ű���
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


-- �����������ƣ�OrderBook���������ݱ�OrderBook�Ĵ����ű���
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


-- �����������ƣ�Category���������ݱ�Category�Ĵ����ű���
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


-- �����������ƣ�ReaderComment���������ݱ�ReaderComment�Ĵ����ű���
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


-- �����������ƣ�Orders���������ݱ�Orders�Ĵ����ű���
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


-- �����������ƣ�Users���������ݱ�Users�Ĵ����ű���
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


