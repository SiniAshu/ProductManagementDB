USE [ProductManagement]
GO
/****** Object:  StoredProcedure [dbo].[CreateProduct]    Script Date: 02/06/2026 19:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateProduct]
(
    @ProductName NVARCHAR(200),
    @Description NVARCHAR(500),
    @CategoryId INT,
    @StatusId INT,
    @PurchaseDate DATE,
    @PurchasePrice DECIMAL(18,2),
    @SellingPrice DECIMAL(18,2),
    @CreatedBy INT
)
AS
BEGIN
    INSERT INTO Products
    (
        ProductName,
        Description,
        CategoryId,
        StatusId,
        PurchaseDate,
        PurchasePrice,
        SellingPrice,
        CreatedBy
    )
    VALUES
    (
        @ProductName,
        @Description,
        @CategoryId,
        @StatusId,
        @PurchaseDate,
        @PurchasePrice,
        @SellingPrice,
        @CreatedBy
    );
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteProduct]    Script Date: 02/06/2026 19:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteProduct]
(
    @ProductId INT,
    @DeletedBy INT
)
AS
BEGIN
    Delete from Products
    WHERE ProductId = @ProductId;
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllProducts]    Script Date: 02/06/2026 19:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllProducts]
AS
BEGIN
    SELECT 
        P.ProductId,
        P.ProductName,
        P.Description,
        P.Comment,
        C.CategoryName,
        S.StatusName,
        P.PurchaseDate,
        P.PurchasePrice,
        P.SellingPrice,
        P.CreatedDate
    FROM Products P
    INNER JOIN Categories C ON P.CategoryId = C.CategoryId
    INNER JOIN ProductStatus S ON P.StatusId = S.StatusId
    ORDER BY P.CreatedDate DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[GetProductsByStatus]    Script Date: 02/06/2026 19:02:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetProductsByStatus]
    @StatusId INT
AS
BEGIN
    SELECT 
        P.ProductId,
        P.ProductName,
        C.CategoryName,
        S.StatusName,
        P.SellingPrice,
        P.PurchaseDate
    FROM Products P
    INNER JOIN Categories C ON P.CategoryId = C.CategoryId
    INNER JOIN ProductStatus S ON P.StatusId = S.StatusId
    WHERE P.StatusId = @StatusId
END
GO
