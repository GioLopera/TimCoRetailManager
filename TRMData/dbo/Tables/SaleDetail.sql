CREATE TABLE [dbo].[SaleDetail]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [SaleID] INT NOT NULL, 
    [ProductID] INT NOT NULL,
	[Quantity] INT NOT NULL DEFAULT 1,
    [PurchasePrice] MONEY NOT NULL, 
    [Tax] MONEY NOT NULL DEFAULT 0, 
    CONSTRAINT [FK_SaleDetail_ToSale] FOREIGN KEY (SaleID) REFERENCES Sale(Id), 
    CONSTRAINT [FK_SaleDetail_ToProduct] FOREIGN KEY (ProductID) REFERENCES Product(Id), 
    
)
