USE [ProductManagement]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([UserId], [FullName], [Email], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'John Smith', N'john.smith@email.com', CAST(N'2026-02-06T13:01:21.597' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserId], [FullName], [Email], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'Sarah Johnson', N'sarah.j@email.com', CAST(N'2026-02-06T13:01:21.597' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserId], [FullName], [Email], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, N'Michael Brown', N'michael.b@email.com', CAST(N'2026-02-06T13:01:21.597' AS DateTime), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (1, N'Electronics', 1, CAST(N'2026-02-06T13:01:31.650' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'Furniture', 1, CAST(N'2026-02-06T13:01:31.650' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, N'Office Supplies', 1, CAST(N'2026-02-06T13:01:31.650' AS DateTime), 2, NULL, NULL)
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, N'Accessories', 1, CAST(N'2026-02-06T13:01:31.650' AS DateTime), 2, NULL, NULL)
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, N'Electronics', 1, CAST(N'2026-02-06T13:01:37.140' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, N'Furniture', 1, CAST(N'2026-02-06T13:01:37.140' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (7, N'Office Supplies', 1, CAST(N'2026-02-06T13:01:37.140' AS DateTime), 2, NULL, NULL)
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (8, N'Accessories', 1, CAST(N'2026-02-06T13:01:37.140' AS DateTime), 2, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductStatus] ON 
GO
INSERT [dbo].[ProductStatus] ([StatusId], [StatusName], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'Available', CAST(N'2026-02-06T18:35:24.007' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[ProductStatus] ([StatusId], [StatusName], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, N'Sold', CAST(N'2026-02-06T18:35:24.007' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[ProductStatus] ([StatusId], [StatusName], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, N'Returned', CAST(N'2026-02-06T18:35:24.007' AS DateTime), 2, NULL, NULL)
GO
INSERT [dbo].[ProductStatus] ([StatusId], [StatusName], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, N'Archived', CAST(N'2026-02-06T18:35:24.007' AS DateTime), 2, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Description], [CategoryId], [StatusId], [PurchaseDate], [PurchasePrice], [SellingPrice], [Comment], [CreatedBy], [CreatedDate], [UpdatedDate], [UpdatedBy]) VALUES (5, N'Laptop Dell XPS 13', N'13 inch ultrabook laptop', 1, 4, CAST(N'2025-01-10' AS Date), CAST(900.00 AS Decimal(18, 2)), CAST(1100.00 AS Decimal(18, 2)), N'High demand item', 1, CAST(N'2026-02-06T18:36:04.430' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Description], [CategoryId], [StatusId], [PurchaseDate], [PurchasePrice], [SellingPrice], [Comment], [CreatedBy], [CreatedDate], [UpdatedDate], [UpdatedBy]) VALUES (6, N'Office Chair Ergonomic', N'Comfortable office chair', 2, 2, CAST(N'2025-02-05' AS Date), CAST(120.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), N'Bulk purchase planned', 1, CAST(N'2026-02-06T18:36:04.430' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Description], [CategoryId], [StatusId], [PurchaseDate], [PurchasePrice], [SellingPrice], [Comment], [CreatedBy], [CreatedDate], [UpdatedDate], [UpdatedBy]) VALUES (7, N'Wireless Mouse Logitech', N'Bluetooth wireless mouse', 4, 2, CAST(N'2025-01-25' AS Date), CAST(20.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), N'Fast moving accessory', 1, CAST(N'2026-02-06T18:36:04.430' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Description], [CategoryId], [StatusId], [PurchaseDate], [PurchasePrice], [SellingPrice], [Comment], [CreatedBy], [CreatedDate], [UpdatedDate], [UpdatedBy]) VALUES (8, N'Standing Desk', N'Height adjustable desk', 2, 5, CAST(N'2025-03-01' AS Date), CAST(250.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)), N'Customer requested premium model', 3, CAST(N'2026-02-06T18:36:04.430' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Products] ([ProductId], [ProductName], [Description], [CategoryId], [StatusId], [PurchaseDate], [PurchasePrice], [SellingPrice], [Comment], [CreatedBy], [CreatedDate], [UpdatedDate], [UpdatedBy]) VALUES (9, N'HP Laser Printer', N'Office laser printer', 3, 3, CAST(N'2025-02-20' AS Date), CAST(300.00 AS Decimal(18, 2)), CAST(450.00 AS Decimal(18, 2)), N'Returned due to defect', 2, CAST(N'2026-02-06T18:36:04.430' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
