
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/27/2018 17:36:52
-- Generated from EDMX file: C:\Users\ares.tseng\source\repos\BubbleShop\BubbleShop\Models\Carts.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Carts];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CategoryCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Categories] DROP CONSTRAINT [FK_CategoryCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderLineProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderLines] DROP CONSTRAINT [FK_OrderLineProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderOrderLine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderLines] DROP CONSTRAINT [FK_OrderOrderLine];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_OrderUser];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderUserAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_OrderUserAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductAssetProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductAssets] DROP CONSTRAINT [FK_ProductAssetProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductAttributeProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductAttributes] DROP CONSTRAINT [FK_ProductAttributeProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductCategoryCategory_Category]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductCategoryCategory] DROP CONSTRAINT [FK_ProductCategoryCategory_Category];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductCategoryCategory_ProductCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductCategoryCategory] DROP CONSTRAINT [FK_ProductCategoryCategory_ProductCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductPriceProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductPrices] DROP CONSTRAINT [FK_ProductPriceProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductProductCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductCategories] DROP CONSTRAINT [FK_ProductProductCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_UserUserAddress]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserAddresses] DROP CONSTRAINT [FK_UserUserAddress];
GO
IF OBJECT_ID(N'[dbo].[FK_UserUserPaymentMethod]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserPaymentMethods] DROP CONSTRAINT [FK_UserUserPaymentMethod];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Categories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories];
GO
IF OBJECT_ID(N'[dbo].[OrderLines]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrderLines];
GO
IF OBJECT_ID(N'[dbo].[Orders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Orders];
GO
IF OBJECT_ID(N'[dbo].[ProductAssets]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductAssets];
GO
IF OBJECT_ID(N'[dbo].[ProductAttributes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductAttributes];
GO
IF OBJECT_ID(N'[dbo].[ProductCategories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductCategories];
GO
IF OBJECT_ID(N'[dbo].[ProductCategoryCategory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductCategoryCategory];
GO
IF OBJECT_ID(N'[dbo].[ProductPrices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductPrices];
GO
IF OBJECT_ID(N'[dbo].[Products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Products];
GO
IF OBJECT_ID(N'[dbo].[UserAddresses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserAddresses];
GO
IF OBJECT_ID(N'[dbo].[UserPaymentMethods]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserPaymentMethods];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Categories'
CREATE TABLE [dbo].[Categories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [ParentCategoryId] nvarchar(max)  NOT NULL,
    [IconImage] nvarchar(max)  NULL,
    [LastUpdated] time  NOT NULL,
    [CategoryId] int  NULL
);
GO

-- Creating table 'OrderLines'
CREATE TABLE [dbo].[OrderLines] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [LineNumber] int  NOT NULL,
    [Qty] smallint  NOT NULL,
    [Price] smallint  NOT NULL,
    [DiscountAmount] smallint  NOT NULL,
    [LineTotalAmount] smallint  NOT NULL,
    [LastUpdated] time  NOT NULL,
    [OrderId] int  NOT NULL,
    [Product_Id] int  NOT NULL
);
GO

-- Creating table 'Orders'
CREATE TABLE [dbo].[Orders] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [OrderNum] int  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [CurrencyType] nvarchar(max)  NOT NULL,
    [Status] nvarchar(max)  NOT NULL,
    [TotalAmount] smallint  NOT NULL,
    [CreatedOn] nvarchar(max)  NOT NULL,
    [LastUpdated] time  NOT NULL,
    [UserId] int  NOT NULL,
    [UserAddress_Id] int  NOT NULL
);
GO

-- Creating table 'ProductAssets'
CREATE TABLE [dbo].[ProductAssets] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Size] nvarchar(max)  NOT NULL,
    [Type] nvarchar(max)  NOT NULL,
    [ImageUri] nvarchar(max)  NOT NULL,
    [Label] nvarchar(max)  NULL,
    [LastUpdated] time  NOT NULL,
    [Product_Id] int  NOT NULL
);
GO

-- Creating table 'ProductAttributes'
CREATE TABLE [dbo].[ProductAttributes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [LastUpdated] time  NOT NULL,
    [Product_Id] int  NOT NULL
);
GO

-- Creating table 'ProductCategories'
CREATE TABLE [dbo].[ProductCategories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ProductName_D] nvarchar(max)  NULL,
    [CategoryName_D] nvarchar(max)  NULL,
    [LastUpdated] time  NOT NULL,
    [ProductId] int  NOT NULL
);
GO

-- Creating table 'ProductPrices'
CREATE TABLE [dbo].[ProductPrices] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Price] decimal(18,0)  NOT NULL,
    [EffectiveFrom] time  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [LastUpdated] time  NOT NULL,
    [Product_Id] int  NOT NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Manufacturer] nvarchar(max)  NOT NULL,
    [Brand] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [ProductCode] nvarchar(max)  NOT NULL,
    [Status] nvarchar(max)  NULL,
    [LastUpdated] time  NOT NULL
);
GO

-- Creating table 'UserAddresses'
CREATE TABLE [dbo].[UserAddresses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Type] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [AddressLine1] nvarchar(max)  NOT NULL,
    [AddressLine2] nvarchar(max)  NULL,
    [City] nvarchar(max)  NOT NULL,
    [ZipCode] smallint  NOT NULL,
    [State] nvarchar(max)  NOT NULL,
    [Country] nvarchar(max)  NOT NULL,
    [LastUpdated] time  NOT NULL,
    [OrderId] int  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'UserPaymentMethods'
CREATE TABLE [dbo].[UserPaymentMethods] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Type] nvarchar(max)  NOT NULL,
    [Identifier] nvarchar(max)  NULL,
    [Expiry] nvarchar(max)  NULL,
    [Name] nvarchar(max)  NOT NULL,
    [BillingAddress] nvarchar(max)  NULL,
    [CreatedOn] nvarchar(max)  NOT NULL,
    [LastUpdated] time  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FName] nvarchar(max)  NOT NULL,
    [LName] nvarchar(max)  NOT NULL,
    [LoginId] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Cellphone] nvarchar(max)  NULL,
    [Status] nvarchar(max)  NOT NULL,
    [Role] nvarchar(max)  NOT NULL,
    [LastUpdated] time  NOT NULL
);
GO

-- Creating table 'ProductCategoryCategory'
CREATE TABLE [dbo].[ProductCategoryCategory] (
    [Categories_Id] int  NOT NULL,
    [ProductCategories_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'OrderLines'
ALTER TABLE [dbo].[OrderLines]
ADD CONSTRAINT [PK_OrderLines]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [PK_Orders]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProductAssets'
ALTER TABLE [dbo].[ProductAssets]
ADD CONSTRAINT [PK_ProductAssets]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProductAttributes'
ALTER TABLE [dbo].[ProductAttributes]
ADD CONSTRAINT [PK_ProductAttributes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProductCategories'
ALTER TABLE [dbo].[ProductCategories]
ADD CONSTRAINT [PK_ProductCategories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProductPrices'
ALTER TABLE [dbo].[ProductPrices]
ADD CONSTRAINT [PK_ProductPrices]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserAddresses'
ALTER TABLE [dbo].[UserAddresses]
ADD CONSTRAINT [PK_UserAddresses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserPaymentMethods'
ALTER TABLE [dbo].[UserPaymentMethods]
ADD CONSTRAINT [PK_UserPaymentMethods]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Categories_Id], [ProductCategories_Id] in table 'ProductCategoryCategory'
ALTER TABLE [dbo].[ProductCategoryCategory]
ADD CONSTRAINT [PK_ProductCategoryCategory]
    PRIMARY KEY CLUSTERED ([Categories_Id], [ProductCategories_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CategoryId] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [FK_CategoryCategory]
    FOREIGN KEY ([CategoryId])
    REFERENCES [dbo].[Categories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoryCategory'
CREATE INDEX [IX_FK_CategoryCategory]
ON [dbo].[Categories]
    ([CategoryId]);
GO

-- Creating foreign key on [Product_Id] in table 'OrderLines'
ALTER TABLE [dbo].[OrderLines]
ADD CONSTRAINT [FK_OrderLineProduct]
    FOREIGN KEY ([Product_Id])
    REFERENCES [dbo].[Products]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderLineProduct'
CREATE INDEX [IX_FK_OrderLineProduct]
ON [dbo].[OrderLines]
    ([Product_Id]);
GO

-- Creating foreign key on [OrderId] in table 'OrderLines'
ALTER TABLE [dbo].[OrderLines]
ADD CONSTRAINT [FK_OrderOrderLine]
    FOREIGN KEY ([OrderId])
    REFERENCES [dbo].[Orders]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderOrderLine'
CREATE INDEX [IX_FK_OrderOrderLine]
ON [dbo].[OrderLines]
    ([OrderId]);
GO

-- Creating foreign key on [UserId] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_OrderUser]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderUser'
CREATE INDEX [IX_FK_OrderUser]
ON [dbo].[Orders]
    ([UserId]);
GO

-- Creating foreign key on [UserAddress_Id] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_OrderUserAddress]
    FOREIGN KEY ([UserAddress_Id])
    REFERENCES [dbo].[UserAddresses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderUserAddress'
CREATE INDEX [IX_FK_OrderUserAddress]
ON [dbo].[Orders]
    ([UserAddress_Id]);
GO

-- Creating foreign key on [Product_Id] in table 'ProductAssets'
ALTER TABLE [dbo].[ProductAssets]
ADD CONSTRAINT [FK_ProductAssetProduct]
    FOREIGN KEY ([Product_Id])
    REFERENCES [dbo].[Products]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductAssetProduct'
CREATE INDEX [IX_FK_ProductAssetProduct]
ON [dbo].[ProductAssets]
    ([Product_Id]);
GO

-- Creating foreign key on [Product_Id] in table 'ProductAttributes'
ALTER TABLE [dbo].[ProductAttributes]
ADD CONSTRAINT [FK_ProductAttributeProduct]
    FOREIGN KEY ([Product_Id])
    REFERENCES [dbo].[Products]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductAttributeProduct'
CREATE INDEX [IX_FK_ProductAttributeProduct]
ON [dbo].[ProductAttributes]
    ([Product_Id]);
GO

-- Creating foreign key on [ProductId] in table 'ProductCategories'
ALTER TABLE [dbo].[ProductCategories]
ADD CONSTRAINT [FK_ProductProductCategory]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Products]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductProductCategory'
CREATE INDEX [IX_FK_ProductProductCategory]
ON [dbo].[ProductCategories]
    ([ProductId]);
GO

-- Creating foreign key on [Product_Id] in table 'ProductPrices'
ALTER TABLE [dbo].[ProductPrices]
ADD CONSTRAINT [FK_ProductPriceProduct]
    FOREIGN KEY ([Product_Id])
    REFERENCES [dbo].[Products]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductPriceProduct'
CREATE INDEX [IX_FK_ProductPriceProduct]
ON [dbo].[ProductPrices]
    ([Product_Id]);
GO

-- Creating foreign key on [UserId] in table 'UserAddresses'
ALTER TABLE [dbo].[UserAddresses]
ADD CONSTRAINT [FK_UserUserAddress]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserUserAddress'
CREATE INDEX [IX_FK_UserUserAddress]
ON [dbo].[UserAddresses]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'UserPaymentMethods'
ALTER TABLE [dbo].[UserPaymentMethods]
ADD CONSTRAINT [FK_UserUserPaymentMethod]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserUserPaymentMethod'
CREATE INDEX [IX_FK_UserUserPaymentMethod]
ON [dbo].[UserPaymentMethods]
    ([UserId]);
GO

-- Creating foreign key on [Categories_Id] in table 'ProductCategoryCategory'
ALTER TABLE [dbo].[ProductCategoryCategory]
ADD CONSTRAINT [FK_ProductCategoryCategory_Categories]
    FOREIGN KEY ([Categories_Id])
    REFERENCES [dbo].[Categories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ProductCategories_Id] in table 'ProductCategoryCategory'
ALTER TABLE [dbo].[ProductCategoryCategory]
ADD CONSTRAINT [FK_ProductCategoryCategory_ProductCategories]
    FOREIGN KEY ([ProductCategories_Id])
    REFERENCES [dbo].[ProductCategories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductCategoryCategory_ProductCategories'
CREATE INDEX [IX_FK_ProductCategoryCategory_ProductCategories]
ON [dbo].[ProductCategoryCategory]
    ([ProductCategories_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------