USE [ProductManagement]
GO
/****** Object:  StoredProcedure [dbo].[rpt_ProductSummary]    Script Date: 02/06/2026 19:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[rpt_ProductSummary]
AS
BEGIN
    SELECT 
        P.ProductId,
        P.ProductName,
        C.CategoryName,
        S.StatusName,
        P.Comment,
        P.PurchaseDate,
        P.PurchasePrice,
        P.SellingPrice,
        (P.SellingPrice - P.PurchasePrice) AS Profit
    FROM Products P
    INNER JOIN Categories C ON P.CategoryId = C.CategoryId
    INNER JOIN ProductStatus S ON P.StatusId = S.StatusId
    ORDER BY P.CreatedDate DESC;
END
GO
